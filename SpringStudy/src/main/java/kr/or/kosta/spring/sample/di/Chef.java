package kr.or.kosta.spring.sample.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Data;

/**
 * POJO(Java Bean)
 * @author KOSTA
 *
 */
@Component("chef")
//@Scope("prototype")
@Data
public class Chef {
	
	@Value("홍길동2")
	private String name;

	
	
}
