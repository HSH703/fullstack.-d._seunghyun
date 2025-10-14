package com.company.bank005_interface_portfolio;

public class UserInfo {
	private String id;
	private String pass;
	private String genre;
	private String title;
	
	//생성자
	public String getId() { return id; }  public UserInfo() { super(); }
	public UserInfo(String id, String pass, String genre, String title) {
		super();
		this.id = id;
		this.pass = pass;
		this.genre = genre;
		this.title = title;
	}
	
	//toString
	@Override public String toString() {return "UserInfo [id=" + id + ", pass=" + pass + ", genre=" + genre + ", title=" + title + "]";}
		
	//getters+setters
	public void setId(String id) { this.id = id; }
	public String getPass() { return pass; } public void setPass(String pass) { this.pass = pass; }
	public String getGenre() { return genre; } public void setGenre(String genre) { this.genre = genre; }
	public String getTitle() { return title; } public void setTitle(String title) { this.title = title; }

}
