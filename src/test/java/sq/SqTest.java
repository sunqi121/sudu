package sq;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SqTest {

    private ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

    @Test
    public void test() {

        HelloService helloService = context.getBean("helloService", HelloService.class);
   nihoa
        helloService.test();
    }
}