package com.smurf.pojo;

public class User {
	private int id;
	private String name;
	private String iDnumber;
	private String sex;
	private int age;
	private String district_1;//籍贯省份
	private String district_2;//籍贯城市
	private String company_1;//第一份工作
	private String company_1_begin;//第一份工作开始时间
	private String company_1_end;//第一份工作结束时间
	private String job_1;//第一份工作的职位
	private String company_2;//第二份工作
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getiDnumber() {
		return iDnumber;
	}
	public void setiDnumber(String iDnumber) {
		this.iDnumber = iDnumber;
	}
	
	@Override
	public String toString() {
		return "用户 [id=" + id + ", 姓名=" + name + ",性別= " +sex+ ",身份="+iDnumber+",籍贯="+district_1+district_2+"]";
	}
	public String getDistrict_2() {
		return district_2;
	}
	public void setDistrict_2(String district_2) {
		this.district_2 = district_2;
	}
	public String getDistrict_1() {
		return district_1;
	}
	public void setDistrict_1(String district_1) {
		this.district_1 = district_1;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCompany_1() {
		return company_1;
	}
	public void setCompany_1(String company_1) {
		this.company_1 = company_1;
	}
	public String getCompany_1_begin() {
		return company_1_begin;
	}
	public void setCompany_1_begin(String company_1_begin) {
		this.company_1_begin = company_1_begin;
	}
	public String getCompany_1_end() {
		return company_1_end;
	}
	public void setCompany_1_end(String company_1_end) {
		this.company_1_end = company_1_end;
	}
	public String getJob_1() {
		return job_1;
	}
	public void setJob_1(String job_1) {
		this.job_1 = job_1;
	}
	public String getCompany_2() {
		return company_2;
	}
	public void setCompany_2(String company_2) {
		this.company_2 = company_2;
	}
	
	
	
}
