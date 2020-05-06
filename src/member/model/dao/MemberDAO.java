package member.model.dao;

import org.apache.ibatis.session.SqlSession;

import member.model.exception.MemberException;
import member.model.vo.Member;

public class MemberDAO {

	public Member selectMember(SqlSession session, Member m) throws MemberException {
		Member member = null;

		member = session.selectOne("memberMapper.loginMember", m);
		// 첫 번째 매개변수 쿼리문에 대한 id값인데 매퍼가 여러개 일 수 있기 때문에 매퍼에 대한 별칭을 줘서 별칭.id값으로 접근
		// 두 번째 매개변수 넘겨줘야할 값
		if (member == null) {
			session.close();
			throw new MemberException("로그인에 실패하였습니다.");
		}
		System.out.println(member);
		return member;
	}

	public void insertMember(SqlSession session, Member m) throws MemberException {
		// TODO Auto-generated method stub
		int result = session.insert("memberMapper.insertMember", m);
		if (result <= 0) {
			session.rollback();
			session.close();
			throw new MemberException("회원가입에 실패하였습니다.");
		}
	}
}