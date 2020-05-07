package member.model.service;

import static common.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import member.model.dao.MemberDAO;
import member.model.exception.MemberException;
import member.model.vo.Member;

public class MemberService extends Member {

	public Member selectMember(Member m) throws MemberException {
		SqlSession session = getSqlSession();
		Member member = new MemberDAO().selectMember(session, m);
		session.close();
		return member;
	}

	public void insertMember(Member m) throws MemberException {
		// TODO Auto-generated method stub
		SqlSession session = getSqlSession();

		new MemberDAO().insertMember(session, m);

		session.commit();
		session.close();
	}

	public Member getMyInfo(String userId) throws MemberException {
		SqlSession session = getSqlSession();
		Member m = new MemberDAO().getMyInfo(session, userId);
		session.close();
		return m;
	}

	public void updateInfoMember(Member m) throws MemberException {
		SqlSession session = getSqlSession();
		new MemberDAO().updateInfoMember(session, m);
		session.commit();
		session.close();
	}

	public void updatePwdMember(Member m, String newPwd) throws MemberException {
		SqlSession session = getSqlSession();
		new MemberDAO().updatePwdMember(session, m, newPwd);
		session.commit();
		session.close();
	}

	public void deleteMember(String userId) throws MemberException {
		SqlSession session = getSqlSession();
		new MemberDAO().deleteMember(session, userId);
		session.commit();
		session.close();
	}
}
