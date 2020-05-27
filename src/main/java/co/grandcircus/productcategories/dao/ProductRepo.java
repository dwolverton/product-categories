package co.grandcircus.productcategories.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.productcategories.entity.Category;
import co.grandcircus.productcategories.entity.Product;

public interface ProductRepo extends JpaRepository <Product, Long> {

	// search by category.id
	List<Product> findByCategoryId(Long categoryId);
	
	// This would have been an alternative option, but I'm not using it
	List<Product> findByCategory(Category category);
}
