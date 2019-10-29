package simplecrud.db;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

import simplecrud.entity.User;

@Component
public class FactoryBuilder {
	
	private static SessionFactory factory;
	
	{
		System.out.println("Connecting....");
		factory = new Configuration().configure()
				.addAnnotatedClass(User.class).buildSessionFactory();
	}
	
	public SessionFactory getFactory() {
		return factory;
	}
	
}