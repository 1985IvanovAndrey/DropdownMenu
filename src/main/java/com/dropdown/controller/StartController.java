package com.dropdown.controller;

import com.dropdown.entity.Categories;
import com.dropdown.entity.SubCategories;
import com.dropdown.service.SubCategories.SubCategoriesService;
import com.dropdown.service.categories.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class StartController {

    @Autowired
    private CategoriesService categoriesService;
    @Autowired
    private SubCategoriesService subCategoriesService;

    @GetMapping
    public String main(Model model) {
        model.addAttribute("nameList1", categoriesService.listNames());
        model.addAttribute("nameList2", subCategoriesService.listNames());
        return "index";
    }

    @RequestMapping("new")
    public String addForm(Model model) {
        model.addAttribute("nameList1", categoriesService.listNames());
        return "edit";

    }
    @RequestMapping("new2")
    public String addForm2(Model model) {
        model.addAttribute("nameList2", subCategoriesService.listNames());
        return "edit2";
    }
    @RequestMapping("clear")
    public String clearAllCategories(Model model) {
        //model.addAttribute("nameList", categoriesService.listNames());
        categoriesService.listNames().clear();
        categoriesService.clearAllCategories();
        System.out.println(categoriesService.listNames());
        //categoriesService.clearAllCategories();
        return "redirect:/";
    }

    @RequestMapping("addCategory")
    public String addCategory(@ModelAttribute("category") Categories categories) {
        categoriesService.addCategory(categories);
        return "redirect:/";
    }
    @RequestMapping("addSubCategory")
    public String addSubCategory(@ModelAttribute("subCategory")SubCategories subCategories) {
        subCategoriesService.addCategory(subCategories);
        return "redirect:/";
    }

    @RequestMapping("deleteCategoryById")
    public String deleteCategories(@RequestParam("id") int id) {
        try{
            categoriesService.deleteCategoryById(id);
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/new";
        }
        return "redirect:/";
    }
    @RequestMapping("deleteSubCategoryById")
    public String deleteSubCategories(@RequestParam("id") int id) {
        try{
            subCategoriesService.deleteCategoryById(id);
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/new2";
        }
        return "redirect:/";
    }
}
