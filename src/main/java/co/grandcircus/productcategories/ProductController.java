package co.grandcircus.productcategories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.grandcircus.productcategories.dao.ProductRepo;

@Controller
public class ProductController {

	@Autowired
	private ProductRepo productRepository;
	
	@RequestMapping("/products")
	public String list(Model model) {
		model.addAttribute("listofproducts", productRepository.findAll(Sort.by("name")));
		return "product-list";
	}
	
	
	
	
	
	
	
	
}
