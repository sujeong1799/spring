package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import domain.MemberVO;
import domain.PagingVO;
import orm.DatabaseBuilder;

public class BoardDAOImpl implements BoardDAO {
	private static final Logger log = LoggerFactory.getLogger(BoardDAOImpl.class);
	private SqlSession sql;
	// NameSpace = SQL이 mapper를 구분하기 위한 이름
	// NameSpace.SQL구문이름
	private String BS = "BoardMapper.";
	
	public BoardDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession(); // sql연결이라고하네여
	}
	
	@Override
	public int insert(BoardVO bvo) {
		log.info(">>> insert DAO 진입");

		int isOk = sql.insert(BS+"reg", bvo); // BoardMapper.reg, 객체
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public List<BoardVO> list() {
		log.info(">>> list DAO 진입");
		
		return sql.selectList(BS+"list");
	}

	@Override
	public BoardVO selectOne(int bno) {
		log.info(">>> detail DAO 진입");
		// count update하는거 추가.
		int isOk = sql.update(BS+"count", bno);
		if(isOk > 0) {
			sql.commit();
		}
		return sql.selectOne(BS + "detail", bno);
	}

	@Override
	public BoardVO modifyOne(int bno) {
		log.info(">>> detail DAO 진입");

		return sql.selectOne(BS + "modify", bno);
	}

	@Override
	public int editOne(BoardVO bvo) {
		log.info(">>> editOne DAO 진입");
		int isOk = sql.update(BS + "edit", bvo);
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public BoardVO removeOne(int bno) {
		log.info(">>> remove DAO 진입");

		return sql.selectOne(BS + "remove", bno);
	}

	@Override
	public int total() {
		log.info(">>> total DAO 진입");
		return sql.selectOne(BS+"total");
	}

	@Override
	public List<BoardVO> pageList(PagingVO pgvo) {
		log.info(">>> pageList DAO 진입");
		return sql.selectList(BS+"pageList", pgvo);
	}



}
