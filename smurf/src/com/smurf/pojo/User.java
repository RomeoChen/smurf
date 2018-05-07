package com.smurf.pojo;

public class User {
	private int id;
	private String name;
	private String iDnumber;
	private String sex;
	private int age;
	public String marriage;
	public String nation;
	public String birth_year;
	public String birth_month;
	public String politicalStatus;
	public String residence;
	public String province;
	public String city;
	public String street;
	public String telephone;
	public String district;
	private String district_1;//����ʡ��
	private String district_2;//�������
	private String company_1;//��һ�ݹ���
	private String company_1_begin;//��һ�ݹ�����ʼʱ��
	private String company_1_end;//��һ�ݹ�������ʱ��
	private String job_1;//��һ�ݹ�����ְλ
	private String company_2;//�ڶ��ݹ���
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
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	public String getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	public String getPoliticalStatus() {
		return politicalStatus;
	}
	public void setPoliticalStatus(String politicalStatus) {
		this.politicalStatus = politicalStatus;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	@Override
	public String toString() {
		return "�û� [id=" + id + ", ����=" + name + ",�Ԅe= " +sex+ ",���="+iDnumber+",����="+district_1+district_2+"]";
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
