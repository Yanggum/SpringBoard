package com.board.domain;

import java.util.Date;

/**
 * @author bak40
 *
 */
public class UserVO {
	
	private String UserID;          
	private String Password;        
	private String Name;            
	private String Gender;          
	private String DeptCode;        
	private String Career;          
	private String Marriage;        
	private String MilitaryService; 
	private String SpecialitySkills;
	private String Member;          
	private String JobTitle;        
	private String Email;           
	private String Language;        
	private String UseTool;         
	private String OfficeNo;        
	private String Address;         
	private String MobileNo;        
	private String TelNo;       
	private Date  Birthday;
	
	public UserVO() {
		
		
	}
	
	
	
	

	public UserVO(String userID, String password, String name, String gender, String deptCode, String career,
			String marriage, String militaryService, String specialitySkills, String member, String jobTitle,
			String email, String language, String useTool, String officeNo, String address, String mobileNo,
			String telNo, Date birthday) {
		super();
		UserID = userID;
		Password = password;
		Name = name;
		Gender = gender;
		DeptCode = deptCode;
		Career = career;
		Marriage = marriage;
		MilitaryService = militaryService;
		SpecialitySkills = specialitySkills;
		Member = member;
		JobTitle = jobTitle;
		Email = email;
		Language = language;
		UseTool = useTool;
		OfficeNo = officeNo;
		Address = address;
		MobileNo = mobileNo;
		TelNo = telNo;
		Birthday = birthday;
	}





	/**
	 * @return the userID
	 */
	public String getUserID() {
		return UserID;
	}

	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		UserID = userID;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return Password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		Password = password;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return Gender;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		Gender = gender;
	}

	/**
	 * @return the deptCode
	 */
	public String getDeptCode() {
		return DeptCode;
	}

	/**
	 * @param deptCode the deptCode to set
	 */
	public void setDeptCode(String deptCode) {
		DeptCode = deptCode;
	}

	/**
	 * @return the career
	 */
	public String getCareer() {
		return Career;
	}

	/**
	 * @param career the career to set
	 */
	public void setCareer(String career) {
		Career = career;
	}

	/**
	 * @return the marriage
	 */
	public String getMarriage() {
		return Marriage;
	}

	/**
	 * @param marriage the marriage to set
	 */
	public void setMarriage(String marriage) {
		Marriage = marriage;
	}

	/**
	 * @return the militaryService
	 */
	public String getMilitaryService() {
		return MilitaryService;
	}

	/**
	 * @param militaryService the militaryService to set
	 */
	public void setMilitaryService(String militaryService) {
		MilitaryService = militaryService;
	}

	/**
	 * @return the specialitySkills
	 */
	public String getSpecialitySkills() {
		return SpecialitySkills;
	}

	/**
	 * @param specialitySkills the specialitySkills to set
	 */
	public void setSpecialitySkills(String specialitySkills) {
		SpecialitySkills = specialitySkills;
	}

	/**
	 * @return the member
	 */
	public String getMember() {
		return Member;
	}

	/**
	 * @param member the member to set
	 */
	public void setMember(String member) {
		Member = member;
	}

	/**
	 * @return the jobTitle
	 */
	public String getJobTitle() {
		return JobTitle;
	}

	/**
	 * @param jobTitle the jobTitle to set
	 */
	public void setJobTitle(String jobTitle) {
		JobTitle = jobTitle;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return Email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		Email = email;
	}

	/**
	 * @return the language
	 */
	public String getLanguage() {
		return Language;
	}

	/**
	 * @param language the language to set
	 */
	public void setLanguage(String language) {
		Language = language;
	}

	/**
	 * @return the useTool
	 */
	public String getUseTool() {
		return UseTool;
	}

	/**
	 * @param useTool the useTool to set
	 */
	public void setUseTool(String useTool) {
		UseTool = useTool;
	}

	/**
	 * @return the officeNo
	 */
	public String getOfficeNo() {
		return OfficeNo;
	}

	/**
	 * @param officeNo the officeNo to set
	 */
	public void setOfficeNo(String officeNo) {
		OfficeNo = officeNo;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		Address = address;
	}

	/**
	 * @return the mobileNo
	 */
	public String getMobileNo() {
		return MobileNo;
	}

	/**
	 * @param mobileNo the mobileNo to set
	 */
	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	/**
	 * @return the telNo
	 */
	public String getTelNo() {
		return TelNo;
	}

	/**
	 * @param telNo the telNo to set
	 */
	public void setTelNo(String telNo) {
		TelNo = telNo;
	}

	/**
	 * @return the birthday
	 */
	public Date getBirthday() {
		return Birthday;
	}

	/**
	 * @param birthday the birthday to set
	 */
	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}
	
	
	


}
