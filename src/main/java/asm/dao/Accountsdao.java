package asm.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import asm.entity.Accounts;
@Repository
public interface Accountsdao extends JpaRepository<Accounts, String>{

}
