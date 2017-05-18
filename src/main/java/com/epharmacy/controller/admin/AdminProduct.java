package com.epharmacy.controller.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.epharmacy.model.Customer;
import com.epharmacy.model.Product;
import com.epharmacy.service.CustomerService;
import com.epharmacy.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminProduct {

	private Path path;
	private Path path1;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/product/addProduct")
	public String addProduct(Model model) {
		Product product = new Product();
		

		model.addAttribute("product", product);

		return "addProduct";
	}
	
	@RequestMapping(value="/product/addProduct", method=RequestMethod.POST)
	public String addProductPost(@Valid @ModelAttribute("product") Product product, 
			BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return "addProduct";
		}
		
		productService.addProduct(product);
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Root-i : "+rootDirectory);
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId()+".png");
	
		
		if(productImage!=null && !productImage.isEmpty())
		{
			try{
				productImage.transferTo(new File(path.toString()));
			}catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product image saving failed. ",e);
			}
		}
		
		MultipartFile productPdf = product.getProductPdf();
		String rootDirectoryPdf = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Root-i : "+rootDirectoryPdf);
		path1 = Paths.get(rootDirectory + "\\WEB-INF\\resources\\pdfFiles\\" + product.getProductId()+".pdf");
		
		
		if(productPdf!=null && !productPdf.isEmpty())
		{
			try{
				productPdf.transferTo(new File(path1.toString()));
			}catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product pdf saving failed. ",e);
			}
		}
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("/product/editProduct/{id}")
	public String editProduct(@PathVariable("id") long id,Model model) {
		Product product = productService.getProductById(id);

		model.addAttribute("product", product);

		return "editProduct";
	}
	
	
	@RequestMapping(value="/product/editProduct", method=RequestMethod.POST)
	public String editProductPost(@Valid @ModelAttribute("product") Product product, 
			BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return "editProduct";
		}
		
		
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Root-i : "+rootDirectory);
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId()+".png");
	
		
		if(productImage!=null && !productImage.isEmpty())
		{
			try{
				productImage.transferTo(new File(path.toString()));
			}catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product image saving failed. ",e);
			}
		}
		
		
		MultipartFile productPdf = product.getProductPdf();
		String rootDirectory1 = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Root-i : "+rootDirectory1);
		path1 = Paths.get(rootDirectory + "\\WEB-INF\\resources\\pdfFiles\\" + product.getProductId()+".pdf");
		
		
		if(productPdf!=null && !productPdf.isEmpty())
		{
			try{
				productPdf.transferTo(new File(path1.toString()));
			}catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product pdf saving failed. ",e);
			}
		}
		
		productService.editProduct(product);
		
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("/product/deleteProduct/{id}")
	public String deleteProduct(@PathVariable long id,Model model, HttpServletRequest request)
	{
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path= Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + id + ".png");
		
		if(Files.exists(path))
		{
			try{
				Files.delete(path);
			} catch(IOException e){
				e.printStackTrace();
			}
		}
		
		
		String rootDirectory1 = request.getSession().getServletContext().getRealPath("/");
		path1 = Paths.get(rootDirectory1 + "\\WEB-INF\\resources\\pdfFiles\\" + id +".pdf");
		
		if(Files.exists(path1))
		{
			try{
				Files.delete(path1);
			} catch(IOException e){
				e.printStackTrace();
			}
		}
		
		Product product = productService.getProductById(id);
		productService.deleteProduct(product);
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("/cust/deleteCustomer/{customerId}")
	public String deleteCustomer(@PathVariable int customerId,Model model, HttpServletRequest request)
	{
		Customer customer = customerService.getCustomerById(customerId);
		customerService.deleteCustomer(customer);
		
		return "redirect:/admin/customer";
	}
	
}
