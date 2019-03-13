package com.board.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.board.domain.UserVO;

@Repository("com.board.mapper.UserMapper")
public interface UserMapper {
	
	
    //게시글 목록  
    public List<UserVO> selectUserInfo(String uuid, String userId) throws Exception;
        
    //게시글 작성  
    public void insertUserInfo(UserVO userInfo) throws Exception;
    
    //게시글 수정  
    public void updateUserInfo(UserVO userInfo) throws Exception;
    
    //게시글 삭제  
    public void deleteUserInfo(String userId) throws Exception;

}
