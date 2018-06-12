package com.javamuk.declaration.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Declaration;
import com.javamuk.domain.Manager;
import com.javamuk.declaration.service.DeclarationCreateService;

@Controller
public class DeclarationCreateController {

   @Inject
   private DeclarationCreateService declarationCreateService;
   
   @RequestMapping(value="/declaration/declarationCreate", method=RequestMethod.GET)
   public String createForm(@RequestParam(name="man_idx")int man_idx,@RequestParam(name="pro_idx")int pro_idx,Model model) {
      
      model.addAttribute("man_idx", man_idx);
      model.addAttribute("pro_idx", pro_idx);
      return "declaration/declarationCreateForm";
   }
   
   @RequestMapping(value="/declaration/declarationCreate", method=RequestMethod.POST)
   public String create(Declaration declaration) {
      int resultCnt = declarationCreateService.createDeclaration(declaration);
      System.out.println(resultCnt);
      return "declaration/declarationSending";
   }
}