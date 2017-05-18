package com.epharmacy.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.epharmacy.model.Product;
import com.epharmacy.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/productList")
	public String getProducts(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "productList";
	}

	@RequestMapping("/medicine/AllergyandSinus")
	public String getAllergyandSinus(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "allergysinus";
	}

	@RequestMapping("/medicine/Antacids")
	public String getAntacids(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "antacids";
	}

	@RequestMapping("/medicine/Arthritis")
	public String getArthritis(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "arthritis";
	}

	@RequestMapping("/medicine/Antihistamines")
	public String getAntihistamines(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "antihistamines";
	}

	@RequestMapping("/medicine/BloodPressureandDiabetes")
	public String getBloodPressureandDiabetes(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "bloodPressureandDiabetes";
	}

	@RequestMapping("/medicine/CoughColdandFlu")
	public String getCoughColdandFlu(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "coughColdandFlu";
	}

	@RequestMapping("/medicine/Diarrhea")
	public String getDiarrhea(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "diarrhea";
	}

	@RequestMapping("/medicine/EarNoseandThroatCare")
	public String getEarNoseandThroatCare(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "earNoseandThroatCare";
	}

	@RequestMapping("/medicine/EyeCare")
	public String getEyeCare(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "eyeCare";
	}

	@RequestMapping("/medicine/NauseaandTravelSickness")
	public String getNauseaandTravelSickness(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "nauseaandTravelSickness";
	}

	@RequestMapping("/medicine/PainRelief")
	public String getPainRelief(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "painRelief";
	}

	@RequestMapping("/medicine/Respiratory")
	public String getRespiratory(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "respiratory";
	}

	@RequestMapping("/medicine/FootCare")
	public String getFootCare(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "footCare";
	}
	@RequestMapping("/vitaminsandSupplements/Antioxidants")
	public String getAntioxidants(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "antioxidants";
	}
	@RequestMapping("/vitaminsandSupplements/BodyBuilding")
	public String getBodyBuilding(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "bodyBuilding";
	}
	@RequestMapping("/vitaminsandSupplements/BoneHealth")
	public String getBoneHealth(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "boneHealth";
	}
	@RequestMapping("/vitaminsandSupplements/BrainandMemory")
	public String getBrainandMemory(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "brainandMemory";
	}
	@RequestMapping("/vitaminsandSupplements/Cholesterol")
	public String getCholesterol(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "cholesterol";
	}
	@RequestMapping("/vitaminsandSupplements/EnergySupport")
	public String getEnergySupport(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "energySupport";
	}
	@RequestMapping("/vitaminsandSupplements/EyeVision")
	public String getEyeVision(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "eyeVision";
	}
	@RequestMapping("/vitaminsandSupplements/FishOil")
	public String getFishOil(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "fishOil";
	}
	@RequestMapping("/vitaminsandSupplements/ImmuneSystemandVitamins")
	public String getImmuneSystemandVitamins(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "immuneSystemandVitamins";
	}
	@RequestMapping("/vitaminsandSupplements/SkinHairandNails")
	public String getSkinHairandNails(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "skinHairandNails";
	}
	@RequestMapping("/vitaminsandSupplements/SleepingandInsomnia")
	public String getSleepingandInsomnia(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "sleepingandInsomnia";
	}
	@RequestMapping("/vitaminsandSupplements/WeightLoss")
	public String getWeightLoss(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "weightLoss";
	}
	@RequestMapping("/skinCare/Acne")
	public String getAcne(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "acne";
	}
	@RequestMapping("/skinCare/AntiAgeing")
	public String getAntiAgeing(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "antiAgeing";
	}
	@RequestMapping("/skinCare/AntiAgeing/AntiWrinkle")
	public String getAntiWrinkle(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "antiWrinkle";
	}
	@RequestMapping("/skinCare/AntiAgeing/FaceliftCreamsandSerums")
	public String getFaceliftCreamsandSerums(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "faceliftCreamsandSerums";
	}
	@RequestMapping("/skinCare/EczemaandProblemSkin")
	public String getEczemaandProblemSkin(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "eczemaandProblemSkin";
	}
	@RequestMapping("/skinCare/ExfoliatorsandScrubs")
	public String getExfoliatorsandScrubs(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "exfoliatorsandScrubs";
	}
	@RequestMapping("/skinCare/EyesDarkCircles")
	public String getEyesDarkCircles(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "eyesDarkCircles";
	}
	@RequestMapping("/skinCare/HandCare")
	public String getHandCare(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "handCare";
	}
	@RequestMapping("/skinCare/LipCare")
	public String getLipCare(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "lipCare";
	}
	@RequestMapping("/skinCare/Moisturisers")
	public String getMoisturisers(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "moisturisers";
	}
	@RequestMapping("/skinCare/Moisturisers/FaceMoisturiserDay")
	public String getFaceMoisturiserDay(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "faceMoisturiserDay";
	}
	@RequestMapping("/skinCare/Moisturisers/FaceMoisturiserNight")
	public String getFaceMoisturiserNight(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "faceMoisturiserNight";
	}
	@RequestMapping("/skinCare/Moisturisers/BodyMoisturisers")
	public String getBodyMoisturisers(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "bodyMoisturisers";
	}

	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);

		return "viewProduct";
	}

}
