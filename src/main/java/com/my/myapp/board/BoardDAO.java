package com.my.myapp.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int count=sqlSession.insert("Board.insertBoard", vo);
		return count;
	}
	
	public int updateBoard(BoardVO vo) {
		int count=sqlSession.update("Board.updateBoard", vo);
		return count;
	}
	
	public int voteBoard(BoardVO vo) {
		int count=sqlSession.update("Board.voteBoard", vo);
		return count;
	}
	
	public int deleteBoard(int seq) {
		int count=sqlSession.delete("Board.deleteBoard", seq);
		return count;
	}
	
	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list=sqlSession.selectList("Board.getBoardList");
		return list;
	}
	public List<BoardVO> getBoardList_vote(){
		List<BoardVO> list=sqlSession.selectList("Board.getBoardList_vote");
		return list;
	}
	


	
}
