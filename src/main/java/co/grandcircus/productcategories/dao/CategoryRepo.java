package co.grandcircus.productcategories.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.productcategories.entity.Category;

public interface CategoryRepo extends JpaRepository<Category, Long> {

}
