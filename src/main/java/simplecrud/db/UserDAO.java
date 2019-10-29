package simplecrud.db;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import simplecrud.entity.User;

@Repository
public class UserDAO {
	
	@Autowired
	private FactoryBuilder factoryMaker;
	
	public void addUser(User user) {
		Session session = factoryMaker.getFactory().getCurrentSession();
		
		session.beginTransaction();
		session.saveOrUpdate(user);
		session.getTransaction().commit();
	}
	
	public List<User> retrieve() {
		Session session = factoryMaker.getFactory().getCurrentSession();
		
		session.beginTransaction();
		List<User> users = session.createQuery("from User").getResultList();

		session.getTransaction().commit();
		
		return users;	
	}
	
	public void deleteUser(int id) {
		Session session = factoryMaker.getFactory().getCurrentSession();
		session.beginTransaction();
		
		User tempUser = session.get(User.class, id);
		session.delete(tempUser);
		
		session.getTransaction().commit();
	}
	
	public User getById(int id) {
		Session session = factoryMaker.getFactory().getCurrentSession();
		session.beginTransaction();
		
		User tempUser = session.get(User.class, id);
		session.getTransaction().commit();
		return tempUser;
	}
	
}
