package asm.loginServices;

import java.util.List;
import java.util.Optional;

import asm.entity.Accounts;

public interface userService {
	void deleteAll();
	
	void deleteAll(List<Accounts> entities);
	
	void delete(Accounts entity);
	
	void deleteById(String usename);
	
	long count();
	
	List<Accounts> findAllById(List<String> usename);
	
	List<Accounts> findAll();
	
	boolean existsById(String username);
	
	Optional<Accounts> findById(String username);
	
	List<Accounts> saveAll(List<Accounts>entities);
	
	Accounts save(Accounts entity);
	
//	ham check login
	static boolean checkLogin (String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}
}
