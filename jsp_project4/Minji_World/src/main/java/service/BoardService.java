package service;

import java.util.List;

import domain.BoardVO;

public interface BoardService {

	int insert(BoardVO bvo);

	List<BoardVO> list();

	BoardVO detail(int bNum);

}
