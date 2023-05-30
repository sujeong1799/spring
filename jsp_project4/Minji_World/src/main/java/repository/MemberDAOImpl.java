package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import orm.DatabaseBuilder;

public class MemberDAOImpl implements MemberDAO {

	private static final Logger log = LoggerFactory.getLogger(MemberDAOImpl.class);
	private SqlSession sql;
	private String NS = "MemberMapper.";
	private int isOk;

	public MemberDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	
	@Override
	public MemberVO login(MemberVO mvo) {
		log.info(">>> login DAO 진입");
		return sql.selectOne(NS+"log", mvo);
	}

	@Override
	public int register(MemberVO mvo) {
		log.info(">>> register DAO 진입");
		isOk = sql.insert(NS+"reg", mvo);
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public int logout(String mId) {
		log.info(">>> logout DAO 진입");
		isOk = sql.update(NS+"logout", mId);
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public List<MemberVO> selectList() {
		log.info(">>> list DAO 진입");
		
		return sql.selectList(NS+"list");
	}

	@Override
	public int editOne(MemberVO mvo) {
		log.info(">>> edit DAO 진입");
		isOk = sql.update(NS+"edit", mvo);
		if(isOk > 0 ) {
			sql.commit();
		}
		return isOk;
	}

}
