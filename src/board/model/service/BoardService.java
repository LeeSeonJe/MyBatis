package board.model.service;

import static common.Template.getSqlSession;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_ADDPeer;

import board.model.dao.BoardDAO;
import board.model.exception.BoardException;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import board.model.vo.SearchCondition;

public class BoardService {

	public int getListCount() throws BoardException {
		SqlSession session = getSqlSession();

		int listCount = new BoardDAO().getListCount(session);

		session.close();
		return listCount;
	}

	public ArrayList<Board> selectBoardList(PageInfo pi) throws BoardException {
		SqlSession session = getSqlSession();

		ArrayList<Board> list = new BoardDAO().selectBoardList(session, pi);
		session.close();
		return list;
	}

	public Board selectBoardDetail(int bId) throws BoardException {
		SqlSession session = getSqlSession();
		
		BoardDAO bDAO = new BoardDAO();
		
		int result = bDAO.updateCount(session, bId);
		
		Board b = null;
		if(result > 0) {
			session.commit();
			b = bDAO.selectBoardDetail(session, bId);
		}
		session.close();
		return b;
	}

	public int getSearchResultListCount(SearchCondition sc) throws BoardException {
		SqlSession session = getSqlSession();
		
		int listCount = new BoardDAO().getSearchResultListCount(session, sc);
		
		session.close();
		
		return listCount;
	}

	public ArrayList<Board> selectSearchResultList(SearchCondition sc, PageInfo pi) throws BoardException {
		SqlSession session = getSqlSession();
		
		ArrayList<Board> list = new BoardDAO().selectSearchResultList(session, sc, pi);
		
		return list;
	}
}
