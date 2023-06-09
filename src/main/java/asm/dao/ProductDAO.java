package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.Products;


public interface ProductDAO extends JpaRepository<Products, Integer>{

}
