package kr.co.show.search.domain;

public class SearchDTO {

	private String searchKeyword;
	private String searchKind;

	public SearchDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchKind() {
		return searchKind;
	}

	public void setSearchKind(String searchKind) {
		this.searchKind = searchKind;
	}

	@Override
	public String toString() {
		return "SearchDTO [searchKeyword=" + searchKeyword + ", searchKind=" + searchKind + "]";
	}

}
