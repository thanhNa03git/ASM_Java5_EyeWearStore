package asm.controller;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm.dao.CategoryDAO;
import asm.dao.ProductDAO;
import asm.entity.Categories;
import asm.entity.Products;
import asm.service.SessionService;
import asm.session.SessionManager;

@Controller
@RequestMapping("/product/search")
public class ShoppingProductController {

	@Autowired
	ProductDAO prodao;
	
	@RequestMapping("/product/index")
	public String index(Model model) {
		Products product = new Products();
		model.addAttribute("productItem", product);
		List<Products> products = prodao.findAll();
		model.addAttribute("productItems", products);
		return "shop";
	}
	
}
