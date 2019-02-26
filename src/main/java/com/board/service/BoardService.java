package com.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.board.domain.BoardVO;
import com.board.mapper.BoardMapper;

@Service("com.board.service.BoardService")
public class BoardService implements BoardMapper {

	@Resource(name="com.board.mapper.BoardMapper")
	BoardMapper mBoardMapper;
	
	
	@Override
	public int boardCount() throws Exception {
		// TODO Auto-generated method stub
		return mBoardMapper.boardCount();
	}

	@Override
	public List<BoardVO> boardList() throws Exception {
		// TODO Auto-generated method stub
		return mBoardMapper.boardList();
	}

	@Override
	public BoardVO boardDetail(int bno) throws Exception {
		// TODO Auto-generated method stub
		return mBoardMapper.boardDetail(bno);
	}

	@Override
	public void boardInsert(BoardVO board) throws Exception {
		// TODO Auto-generated method stub
		mBoardMapper.boardInsert(board);
	}

	@Override
	public void boardUpdate(BoardVO board) throws Exception {
		// TODO Auto-generated method stub
		mBoardMapper.boardUpdate(board);
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		// TODO Auto-generated method stub
		mBoardMapper.boardDelete(bno);
	}

}
