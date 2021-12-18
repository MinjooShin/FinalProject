package com.my.myapp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//데이터 가공 작업할 수 있는 공간 -> Service 
//데이터 가공한다면, 함수 안에서 구현하고 그렇지 않으면, 그냥 DAO객체로 호출만 하면 됨.
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	
	@Override
	public int deleteBoard(int seq) {
		return boardDAO.deleteBoard(seq);
	}
	
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}
	
	@Override
	public int voteBoard(BoardVO vo) {
		return boardDAO.voteBoard(vo);
	}
	
	@Override
	public BoardVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
	}
	
	@Override
	public List<BoardVO> getBoardList() {
		return boardDAO.getBoardList();
	}
}
