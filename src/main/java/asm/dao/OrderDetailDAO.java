package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.OrderDetails;


public interface OrderDetailDAO extends JpaRepository<OrderDetails, Integer>{

}
