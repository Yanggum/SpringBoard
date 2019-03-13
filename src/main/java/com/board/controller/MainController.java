package com.board.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.crypto.cipher.CryptoCipher;
import org.apache.commons.crypto.cipher.CryptoCipherFactory;
import org.apache.commons.crypto.cipher.CryptoCipherFactory.CipherProvider;
import org.springframework.boot.autoconfigure.http.HttpProperties.Encoding;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.apache.commons.crypto.utils.Utils;
import org.aspectj.bridge.MessageUtil;
import org.junit.jupiter.api.Test;

import com.board.domain.UserVO;
import com.board.service.UserService;
import com.nexacro.xapi.data.*;
import com.nexacro.xapi.tx.*;

import junit.framework.Assert;

@Controller
public class MainController {	
	
	@Resource(name = "com.board.service.UserService")
	UserService userService;

	@RequestMapping("/getuserlist")
	public void getUserList(Model md, HttpServletRequest request, HttpServletResponse response)
			throws PlatformException {
		String strCharset = "euc-kr";		
		

		List<UserVO> list = new ArrayList<UserVO>();
		VariableList outVariableList = new VariableList();
		DataSetList outDataSetList = new DataSetList();
		PlatformData outPD = new PlatformData();
		PlatformRequest platformRequest = new PlatformRequest();
		PlatformResponse platformResponse = new PlatformResponse();

		try {

			platformRequest = new PlatformRequest(request.getInputStream(), PlatformType.CONTENT_TYPE_XML, strCharset);
			platformRequest.receiveData();

			platformResponse = new PlatformResponse(response.getOutputStream(), PlatformType.CONTENT_TYPE_XML,
					strCharset);

			outPD = platformRequest.getData();

			list = userService.selectUserInfo(null, "");

			com.nexacro.xapi.data.DataSet ds = new DataSet("dsProfile");
			ds.addColumn("idx", DataTypes.STRING);
			ds.addColumn("lev", DataTypes.STRING);
			ds.addColumn("UserData", DataTypes.STRING);
			ds.addColumn("Caption", DataTypes.STRING);
			ds.addColumn("enable", DataTypes.STRING);
			ds.addColumn("hotkey", DataTypes.STRING);			
			ds.addColumn("UserID", DataTypes.STRING);
			ds.addColumn("Name", DataTypes.STRING);
			ds.addColumn("Gender", DataTypes.INT);
			ds.addColumn("DeptCode", DataTypes.INT);
			ds.addColumn("Career", DataTypes.INT);
			ds.addColumn("Marriage", DataTypes.INT);
			ds.addColumn("MilitaryService", DataTypes.INT);
			ds.addColumn("SpecialitySkills", DataTypes.STRING);
			ds.addColumn("JobTitle", DataTypes.STRING);
			ds.addColumn("Member", DataTypes.STRING);
			ds.addColumn("Email", DataTypes.STRING);
			ds.addColumn("Language", DataTypes.STRING);
			ds.addColumn("UseTool", DataTypes.STRING);
			ds.addColumn("OfficeNo", DataTypes.STRING);
			ds.addColumn("Address", DataTypes.STRING);
			ds.addColumn("MobileNo", DataTypes.STRING);
			ds.addColumn("TelNo", DataTypes.STRING);
			ds.addColumn("Birthday", DataTypes.DATE_TIME);
			
			var idx = 0;

			for (var obj : list) {
				var rownum = ds.newRow();
				ds.set(rownum, "idx", "" + idx);
				ds.set(rownum, "lev", "0");
				ds.set(rownum, "UserData", "");
				ds.set(rownum, "Caption", "");
				ds.set(rownum, "enable", "1");
				ds.set(rownum, "hotkey", "");

				
				ds.set(rownum, "UserID", obj.getUserID());
				ds.set(rownum, "Name", obj.getName());
				ds.set(rownum, "Gender", obj.getGender());
				ds.set(rownum, "DeptCode", obj.getDeptCode());
				ds.set(rownum, "Career", obj.getCareer());
				ds.set(rownum, "Marriage", obj.getMarriage());
				ds.set(rownum, "MilitaryService", obj.getMilitaryService());
				ds.set(rownum, "SpecialitySkills", obj.getSpecialitySkills());
				ds.set(rownum, "JobTitle", obj.getJobTitle());
				ds.set(rownum, "Member", obj.getMember());
				ds.set(rownum, "Email", obj.getEmail());
				ds.set(rownum, "Language", obj.getLanguage());
				ds.set(rownum, "UseTool", obj.getUseTool());
				ds.set(rownum, "OfficeNo", obj.getOfficeNo());
				ds.set(rownum, "Address", obj.getAddress());
				ds.set(rownum, "MobileNo", obj.getMobileNo());
				ds.set(rownum, "TelNo", obj.getTelNo());
				ds.set(rownum, "Birthday", obj.getBirthday());
			}

			// md.addAttribute("dataSet", ds);

			// Output Dataset->Output Dataset List
			outDataSetList.add(ds);

			// Output Vairable.
			outVariableList.add("ErrorCode", 0);
			outVariableList.add("ErrorMsg", "Success!!!");

			outVariableList.add("strOutputData", "Form Variable");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// Output Vairable
			outVariableList.add("ErrorCode", -1);
			outVariableList.add("ErrorMsg", e.toString());

		} finally {
			outPD.setDataSetList(outDataSetList);
			outPD.setVariableList(outVariableList);
			platformResponse.setData(outPD);
			platformResponse.sendData();
		}

//		return md;
	}

	@RequestMapping("/saveuserlist")
	public void saveUserList(Model md, HttpServletRequest request, HttpServletResponse response)
			throws PlatformException {

		String strCharset = "euc-kr";

		VariableList outVariableList = new VariableList();
		PlatformData outPD = new PlatformData();
		PlatformRequest platformRequest = new PlatformRequest();
		PlatformResponse platformResponse = new PlatformResponse();

		try {

			platformRequest = new PlatformRequest(request.getInputStream(), PlatformType.CONTENT_TYPE_XML, strCharset);
			platformRequest.receiveData();

			platformResponse = new PlatformResponse(response.getOutputStream(), PlatformType.CONTENT_TYPE_XML,
					strCharset);

			outPD = platformRequest.getData();

			// #2. DataSetList 에서 데이터셋 참조
			DataSetList dsList = outPD.getDataSetList();
			/*
			 * DataSet ds2 = in_dsList.get("in_ds"); System.out.println(">>> ds2 : " +
			 * ds2.getRowCount());
			 * 
			 */			
			
			
			for (int i = 0; i < dsList.size(); i++) {
				DataSet ds = dsList.get(i);
				
				System.out.println(">>> ds2 : " +  ds.getRowCount());

				
				for (int j=0; j < ds.getRemovedRowCount() ;j++)
				{
					String delId = (String)ds.getRemovedData(j, "UserID");					
					userService.deleteUserInfo(delId);
				}				

//				ds.get
				for (int j = 0; j < ds.getRowCount(); j++) {
					var userInfo = new UserVO();
					userInfo.setUserID(ds.getString(j, "UserID"));
					userInfo.setName(ds.getString(j, "Name"));
					userInfo.setGender(ds.getString(j, "Gender"));
					userInfo.setDeptCode(ds.getString(j, "DeptCode"));
					userInfo.setCareer(ds.getString(j, "Career"));
					userInfo.setMarriage(ds.getString(j, "Marriage"));
					userInfo.setMilitaryService(ds.getString(j, "MilitaryService"));
					userInfo.setSpecialitySkills(ds.getString(j, "SpecialitySkills"));
					userInfo.setMember(ds.getString(j, "Member"));
					userInfo.setJobTitle(ds.getString(j, "JobTitle"));
					userInfo.setEmail(ds.getString(j, "Email"));
					userInfo.setLanguage(ds.getString(j, "Language"));
					userInfo.setUseTool(ds.getString(j, "UseTool"));
					userInfo.setOfficeNo(ds.getString(j, "OfficeNo"));
					userInfo.setAddress(ds.getString(j, "Address"));
					userInfo.setMobileNo(ds.getString(j, "MobileNo"));
					userInfo.setTelNo(ds.getString(j, "TelNo"));
					userInfo.setBirthday(ds.getDateTime(j, "Birthday"));
					
					int rowType = ds.getRowType(j);
					
					if (rowType == DataSet.ROW_TYPE_INSERTED)
						userService.insertUserInfo(userInfo);
					else if (rowType == DataSet.ROW_TYPE_UPDATED)
						userService.updateUserInfo(userInfo);
					
				}

//				ds.getString(

			}

			/*
			 * list = userService.selectUserInfo(); userService.insertUserInfo(board);
			 */
			// md.addAttribute("dataSet", ds);

			// Output Dataset->Output Dataset List

			// Output Vairable.
			outVariableList.add("ErrorCode", 0);
			outVariableList.add("ErrorMsg", "Success!!!");

			outVariableList.add("strOutputData", "Form Variable");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// Output Vairable
			outVariableList.add("ErrorCode", -1);
			outVariableList.add("ErrorMsg", e.toString());

		} finally {
			//outPD.setDataSetList(outDataSetList);
			outPD.setVariableList(outVariableList);
			platformResponse.setData(outPD);
			platformResponse.sendData();
		}
//		return md;
	}

}
