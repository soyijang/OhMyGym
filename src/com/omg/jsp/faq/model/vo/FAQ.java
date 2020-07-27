package com.omg.jsp.faq.model.vo;

import java.io.Serializable;

public class FAQ implements Serializable{
	
	private String managerCode;
	private String category;
	private String answer;
	private String question;
	private String managerId;
	
	public FAQ () {}

	public FAQ(String managerCode, String category, String answer, String question, String managerId) {
		super();
		this.managerCode = managerCode;
		this.category = category;
		this.answer = answer;
		this.question = question;
		this.managerId = managerId;
	}

	public String getManagerCode() {
		return managerCode;
	}

	public void setManagerCode(String managerCode) {
		this.managerCode = managerCode;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	@Override
	public String toString() {
		return "FAQ [managerCode=" + managerCode + ", category=" + category + ", answer=" + answer + ", question="
				+ question + ", managerId=" + managerId + "]";
	}
	
	
	

}
