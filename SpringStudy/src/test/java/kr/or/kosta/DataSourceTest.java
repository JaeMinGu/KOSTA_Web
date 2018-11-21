package kr.or.kosta;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DataSourceTest {

	@Inject
	private DataSource dataSource; 
	
	@Inject
	SqlSessionFactory sqlSessionFactory; 
	
	@Test
	public void testDataSource() throws SQLException {
		Connection conn = dataSource.getConnection(); 
		log.info("DB연결 : " + conn);
		conn.close();
	}
	
	@Test
	public void testMyBatis() {
		try(SqlSession session = sqlSessionFactory.openSession()) {
			Connection conn = session.getConnection(); 
			log.info(session);
			log.info(conn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
}
