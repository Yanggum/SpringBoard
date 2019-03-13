package com.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.board.domain.UserVO;
import com.board.mapper.UserMapper;

@Service("com.board.service.UserService")
public class UserService implements UserMapper{

	@Resource(name="com.board.mapper.UserMapper")
	UserMapper mUserMapper;	
	
	
	/*
	 * @Override public int userCount() throws Exception { // TODO Auto-generated
	 * method stub return mUserMapper.userCount(); }
	 */
	
	
	@Override
	public List<UserVO> selectUserInfo(String uuid, String userId) throws Exception {
		// TODO Auto-generated method stub
		return mUserMapper.selectUserInfo(uuid, userId);
	}

	/*
	 * @Override public UserVO userDetail(int bno) throws Exception { // TODO
	 * Auto-generated method stub return mUserMapper.userDetail(bno); }
	 */
	@Override
	public void insertUserInfo(UserVO board) throws Exception {
		// TODO Auto-generated method stub
		mUserMapper.insertUserInfo(board);
	}

	@Override
	public void updateUserInfo(UserVO board) throws Exception {
		// TODO Auto-generated method stub
		mUserMapper.updateUserInfo(board);
	}

	@Override
	public void deleteUserInfo(String userId) throws Exception {
		// TODO Auto-generated method stub
		mUserMapper.deleteUserInfo(userId);
	}

}
