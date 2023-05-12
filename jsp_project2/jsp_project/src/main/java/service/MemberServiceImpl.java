package service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import repository.MemberDAO;
import repository.MemberDAOImpl;

public class MemberServiceImpl implements MemberService {
	private static final Logger log = LoggerFactory.getLogger(MemberService.class);
	private MemberDAO mdao;

	
	public MemberServiceImpl() {
		mdao = new MemberDAOImpl();
	}
	@Override
	public int register(MemberVO mvo) {
		log.info(">>> register service 진입!!!!");
		return mdao.insert(mvo);
	}

}
