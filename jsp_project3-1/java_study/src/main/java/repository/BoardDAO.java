package repository;

import java.util.List;

import domain.BoardVO;

public interface BoardDAO {

	int insert(BoardVO bvo);

	List<BoardVO> selectList();

	BoardVO detailOne(int bno);

	int updateEdit(BoardVO bvo);

	int removeOne(int bno);

	List<BoardVO> myList(String writer);

	int updateCount(int bno);

	BoardVO detail1(int bno);


}
