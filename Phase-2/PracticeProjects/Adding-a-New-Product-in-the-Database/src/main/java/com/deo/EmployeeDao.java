package com.deo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Employee;
import com.util.HibernateUtil;

public class EmployeeDao {

	public static void addEmployee(Employee e) {

		Session session = null;
		try {
			SessionFactory sf = HibernateUtil.buildSessionFactory();
			session = sf.openSession();

			Transaction tx = session.beginTransaction();
			
			session.save(e);
			tx.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public static List<Employee> listEmployee() {
		List<Employee> employee1 = null;
		Session session = null;
		try {

			SessionFactory sf = HibernateUtil.buildSessionFactory();
			session = sf.openSession();
			
			employee1 = session.createQuery("from Employee e").list();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}

		return employee1;
	}

}