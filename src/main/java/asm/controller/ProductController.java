package asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm.dao.ProductDAO;
import asm.entity.Products;


@Controller
public class ProductController {
	
	
	@Autowired
	ProductDAO prodao;
	
	@RequestMapping("/product/index")
	public String index(Model model) {
		Products product = new Products();
		model.addAttribute("productItem", product);
		List<Products> products = prodao.findAll();
		model.addAttribute("productItems", products);
		return "/category/index";
	}


	
	@PostMapping("/product/create")
	public String product_create(Model model, @Validated @ModelAttribute("productItem") Products pr, BindingResult result) {
		if(!result.hasErrors()) {
			if(!prodao.findById(pr.getId()).isEmpty())
				model.addAttribute("error_category","ID da ton tai");
			else {
				prodao.save(pr);
				model.addAttribute("success_category","Create Success!");
			}
		}
		model.addAttribute("productItems", prodao.findAll());
		return "category/index";
	}
	
	@PostMapping("/product/update")
	public String product_update(Model model, @Validated @ModelAttribute("productItem") Products pr, BindingResult result) {
		if(!result.hasErrors()) {
			if(!prodao.findById(pr.getId()).isEmpty())
				model.addAttribute("error_category","ID khong ton tai");
			else {
				prodao.save(pr);
				model.addAttribute("success_category","Update Success!");
			}
		}
		model.addAttribute("productItems", prodao.findAll());
		return "category/index";
	}
	

	
	@GetMapping("/product/delete")
	public String product_delete(Model model, @RequestParam("id") Integer id, @ModelAttribute("productItem") Products pr) {
	    try {
	        if (prodao.findById(pr.getId()).isEmpty())
	            return "redirect:/category/index";
	        else {
	            prodao.deleteById(id);
	            model.addAttribute("success_category", "Delete success!");
	        }
	    } catch (DataIntegrityViolationException e) {
	        // Xử lý lỗi khóa ngoại
	        model.addAttribute("error_category", "Cannot delete the category. It is referenced by other entities.");
	    }
	    model.addAttribute("categoryItems", prodao.findAll());

	    return "category/index";
	}
	
	@GetMapping("/product/edit")
	public String product_edit(Model model, @RequestParam("id") Integer id, @ModelAttribute("productItem") Products pr) {
		if(prodao.findById(pr.getId()).isEmpty()) 
			return "redirect:/category/index";
		else {
			Products product = prodao.findById(id).get();
			pr.setId(product.getId());
			pr.setName(product.getName());
			pr.setPrice(product.getPrice());
			pr.setImage(product.getImage());
		}
		model.addAttribute("productItems", prodao.findAll());
		return "category/index";
	}
}
