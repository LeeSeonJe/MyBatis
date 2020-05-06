package common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	public static SqlSession getSqlSession() {
		SqlSession session = null;
		InputStream stream;
		try {
			stream = Resources.getResourceAsStream("/mybatis-config.xml");
//			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
//			SqlSessionFactory ssf = ssfb.build(stream);
//			session = ssf.openSession(false); // 자동커밋 x
			
			session = new SqlSessionFactoryBuilder().build(stream).openSession(false);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return session;
	}
}