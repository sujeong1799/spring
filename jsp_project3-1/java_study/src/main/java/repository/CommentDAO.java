package repository;

import java.util.List;

import domain.CommentVO;

public interface CommentDAO {

	int post(CommentVO cvo);


	List<CommentVO> list(int bno);


	int removeCmt(int cno);


	int modifyCmt(CommentVO cvo);

}
