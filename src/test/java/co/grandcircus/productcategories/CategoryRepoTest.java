package co.grandcircus.productcategories;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;

import co.grandcircus.productcategories.dao.CategoryRepo;
import co.grandcircus.productcategories.entity.Category;

@SpringBootTest
class CategoryRepoTest {
	
	@Autowired
	CategoryRepo repo;
	
	@BeforeEach
	void setupDb() {
		repo.deleteAll();
		repo.save(new Category("Plants", "ForestGreen"));
		repo.save(new Category("Beverages", "DodgerBlue"));
		repo.save(new Category("Candy", "Pink"));
	}

	@Test
	void count() {
		assertEquals(3, repo.count());
	}

	@Test
	void findAll() {
		List<Category> categories = repo.findAll(Sort.by("name"));
		assertEquals(3, categories.size());
		assertEquals("Beverage", categories.get(0).getName());
		assertEquals("Pink", categories.get(1).getCssColor());
	}

}
