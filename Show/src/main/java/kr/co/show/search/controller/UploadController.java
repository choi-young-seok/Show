package kr.co.show.search.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.show.search.service.UploadService;
import kr.co.show.upload.util.MediaUtils;
import kr.co.show.upload.util.UploadFileUtils;

@Controller
@RequestMapping("/upload2")
public class UploadController {

	@Inject
	private UploadService service;

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

	// ���� ������ loaclserver�� ����
	// @Resource(name = "uploadPath")
	// private String uploadPath;

	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public void uploadForm() {

	}

	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	public String uploadForm(MultipartFile file, Model model,HttpServletRequest request) throws Exception {

		// Drag & Drop ���� ���� ���
		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());

		// db�����̸�
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(), request);

		System.out.println("Controller UploadForm SaceName : " + savedName);

		model.addAttribute("savedName", savedName);

		return "uploadResult";
	}

	@RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax() {
	}

	private String uploadFile(String originalName, byte[] fileData, HttpServletRequest request) throws Exception {
		System.out.println("���ε�����");
		UUID uid = UUID.randomUUID();
		System.out.println("���� ���� ��� request��ü : " +request.getSession().getServletContext().getRealPath("resources/img/thumbnail"));
		// �����̸� �ߺ� ����
		String savedName = uid.toString() + "_" + originalName;
		// �ߺ�����ó�� ���� �̸�
		System.out.println("Controller UploadForm SaceName : " + savedName);

		// ���� ����
		String uploadPath = request.getSession().getServletContext().getRealPath("resources/img/thumbnail");
		File target = new File(uploadPath, savedName);

		// ����� �̹��� ����
		FileCopyUtils.copy(fileData, target);

		return savedName;

	}

	@ResponseBody
	@RequestMapping(value = "/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file,HttpServletRequest request) throws Exception {
		System.out.println("����û : uploadAjax    --------------------------------");
		System.out.println("���� ���� �̸� : " + file.getOriginalFilename());
		String uploadPath = request.getSession().getServletContext().getRealPath("resources/img/thumbnail");
		System.out.println("���� ���� ��� resource : " + uploadPath);
		System.out.println("���� ũ�� : " + file.getSize());
		System.out.println("���� Ÿ�� : " + file.getContentType());
		System.out.println("-------------------------------------------------------");


		return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()),
				HttpStatus.CREATED);
	}

	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName,HttpServletRequest request) throws Exception {

		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		System.out.println("Controller displayFile() �����̸� : " + fileName);

		try {

			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);
			// ���� Ȯ���� ���� �� �̹����� ��� MIMEŸ�� ����

			HttpHeaders headers = new HttpHeaders();
			String uploadPath = request.getSession().getServletContext().getRealPath("resources/img/thumbnail");
			in = new FileInputStream(uploadPath + fileName);

			if (mType != null) {
				headers.setContentType(mType);
			} else {

				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				// �̹����� �ƴѰ�� �ٿ�ε� Ÿ�� ����
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
				// �ٿ�ε� ���� �̸� �ѱ� ó��
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName,HttpServletRequest request) {

		logger.info("delete file: " + fileName);

		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		MediaType mType = MediaUtils.getMediaType(formatName);

		if (mType != null) {

			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			String uploadPath = request.getSession().getServletContext().getRealPath("resources/img/thumbnail");
			new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
		}
		String uploadPath = request.getSession().getServletContext().getRealPath("img/thumbnail");
		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

	@ResponseBody
	@RequestMapping(value = "/deleteAllFiles", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files, HttpServletRequest request) {

		logger.info("delete all files: " + files);

		if (files == null || files.length == 0) {
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}

		for (String fileName : files) {
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);
			String uploadPath = request.getSession().getServletContext().getRealPath("resources/img/thumbnail");
			if (mType != null) {

				String front = fileName.substring(0, 12);
				String end = fileName.substring(14);
				new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
			}

			new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

	@RequestMapping("/getAttach/{bno}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("bno") int bno) throws Exception {
		System.out.println("Controller : " + service.getAttach(bno));
		return service.getAttach(bno);
	}

}