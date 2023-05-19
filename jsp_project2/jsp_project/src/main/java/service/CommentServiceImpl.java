package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CommentVO;
import repository.CommentDAO;
import repository.CommentDAOImpl;

public class CommentServiceImpl implements CommentService {
	private static final Logger log = LoggerFactory.getLogger(CommentService.class);
	private CommentDAO cdao;
	
	public CommentServiceImpl() {
		cdao = new CommentDAOImpl();
	}
	
	
	@Override
	public int post(CommentVO cvo) {
		log.info(">>> post service 진입!!!!");
		cdao = new CommentDAOImpl();
		return cdao.post(cvo);
	}


	@Override
	public List<CommentVO> getList(int bno) {
		log.info(">>> list service");
		return cdao.getList(bno);
	}

}
