package asm.loginServices;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm.dao.Accountsdao;
import asm.entity.Accounts;

@Service
public class userServiceImp implements userService {

	@Autowired
	Accountsdao accdao;
	
	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(List<Accounts> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Accounts entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String usename) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Accounts> findAllById(List<String> usename) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Accounts> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existsById(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Optional<Accounts> findById(String username) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public List<Accounts> saveAll(List<Accounts> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Accounts save(Accounts entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		Optional<Accounts> optionalUser = findById(username);
		if(optionalUser.isPresent() && optionalUser.get().getPassword().equals(password)) {
			return true;
		}
		return false;
	}

}
