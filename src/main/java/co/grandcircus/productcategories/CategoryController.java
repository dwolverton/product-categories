package co.grandcircus.productcategories;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.grandcircus.productcategories.dao.CategoryRepo;
import co.grandcircus.productcategories.entity.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryRepo categoryRepository;

	@RequestMapping("/")
	public String list(Model model) {
		model.addAttribute("categories", categoryRepository.findAll(Sort.by("name")));
		return "category-list";
	}
	
	@RequestMapping("/add-category")
	public String showAddForm() {
		return "category-add";
	}
	
	// category parameter - collects inputs from form
	@PostMapping("/add-category")
	public String submitAddForm(Category category, Model model) {
		categoryRepository.save(category);
		model.addAttribute("category", category);
		return "category-add-confirm";
	}
	
	// This is sort of a trick. When the app starts up, it will check to see if the
	// database table is empty, and fill it with sample data if it is.
	@PostConstruct
	public void fillDatabase() {
		if (categoryRepository.count() == 0) {
			categoryRepository.save(new Category("Plants", "ForestGreen"));
			categoryRepository.save(new Category("Beverages", "DodgerBlue"));
			categoryRepository.save(new Category("Candy", "Pink"));
		}
	}
	
	@RequestMapping("/test")
	public String test() {
		return "product-add";
	}
}
