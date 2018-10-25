package kr.or.kosta.jsp.el;

public class Dog {

	private String name; 
	// 자바빈이 되기 위한 규약 1(default 생성자)
	public Dog() {

	}
	// 자바빈이 되기 위한 규약 2(getter setter method)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	// 자바빈이 되기 위한 규약 3(toString)
	@Override
	public String toString() {
		return "Dog [name=" + name + "]";
	}
	
	
}
