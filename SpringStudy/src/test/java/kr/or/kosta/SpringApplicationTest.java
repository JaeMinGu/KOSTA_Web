package kr.or.kosta;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.or.kosta.spring.sample.di.Chef;
import kr.or.kosta.spring.sample.di.Restaurant;

public class SpringApplicationTest {

	Logger logger = LoggerFactory.getLogger(SpringApplicationTest.class);
	   String configLocation = "applicationContext.xml";//설정파일
	   //String[] configLocations = { "applicationContext.xml" };
	   ApplicationContext applicationContext;
	   
	   @Before
	   public void setUp() throws Exception {//Spring Container 생성
	      applicationContext = new GenericXmlApplicationContext(configLocation);//설정파일위치알려줘야
	      //applicationContext = new GenericXmlApplicationContext(configLocations);
	   }
	   
	   @Test
	   public void test() {
	      logger.info("Spring Bean Container 생성 완료...");
	      //Spring Bean Container로부터 빈 취득
	      //Chef chef = (Chef)applicationContext.getBean("chef");
	      Chef chef = applicationContext.getBean("chef", Chef.class);//두 번째 인자: 형변환 
	      logger.info("셰프이름 : " + chef.getName());
	      Restaurant restaurant = applicationContext.getBean("restaurant", Restaurant.class);//두 번째 인자: 형변환 
	      logger.info("레스토랑 이름 : " + restaurant.getName());
	      logger.info(restaurant.getChef().toString());//Chef 객체와 동일(DI개념적용)
	      //빈 검색
	      boolean exist = applicationContext.containsBean("chef");//검색기능
	      logger.info(exist + "");//"chef"라는 이름으로 등록된 bean이 있는지 검색 후 결과 반환
	      //타입 조회
	      //"chef"라는 타입으로 된 bean 객체가 있는지 확인 
	      logger.info(applicationContext.getType("chef")+"");//info 메소드가 문자열밖에 지원하지 않음. 그래서 '+""' 
	      
	      Chef chef2 = applicationContext.getBean("chef", Chef.class);
	      
	      logger.info(chef.hashCode()+"");
	      logger.info(chef2.hashCode()+"");
	   }
}
