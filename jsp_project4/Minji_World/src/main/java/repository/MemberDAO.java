package repository;

import java.util.List;

import domain.MemberVO;

public interface MemberDAO {

	MemberVO login(MemberVO mvo);

	int register(MemberVO mvo);

	int logout(String mId);

	List<MemberVO> selectList();

	int editOne(MemberVO mvo);

}
