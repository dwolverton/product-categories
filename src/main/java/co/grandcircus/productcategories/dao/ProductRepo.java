package co.grandcircus.productcategories.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.productcategories.entity.Product;

public interface ProductRepo extends JpaRepository <Product, Long> {

}
