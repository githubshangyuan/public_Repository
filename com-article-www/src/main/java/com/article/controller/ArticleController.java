/**ArticleController.java**/
package com.article.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.article.domain.Article;
import com.article.service.ArticleService;

/**
 * @author 刘泰 =========>>>  m1300326093@163.com
 * 功能: controller
 */
@Controller
public class ArticleController {

	/**注入service**/
	@Resource(name = "articleService")
	private ArticleService articleService;
	
	/**
	 * 
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 首页并显示文章列表
	 */
	@RequestMapping(value = "/")
	public String articles(Model model) {
		model.addAttribute("articles", articleService.articles());
		return "articles";
	}
	/**
	 * 
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 去往编辑页面
	 */
	@RequestMapping(value = "/edit/{id}" , method = RequestMethod.GET)
	public String edit(@PathVariable Integer id , Model model , @ModelAttribute Article article) {
		if (id != null && id != 0){
			article = articleService.find(id);
		}
		model.addAttribute("article", article);
		return "edit";
	}
	
	/**
	 * 
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 更新到数据库
	 */
	@RequestMapping(value = "/edit" , method = RequestMethod.POST)
	public String update(@ModelAttribute(name = "article") Article article) {
		if (article.getId() == null || article.getId() == 0){
			articleService.save(article);
		} else {
			articleService.update(article);
		}
		return "redirect:/";
	}

	/**
	 * 
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 根据编号回显数据
	 */
	@RequestMapping(value = "/find/{id}")
	public String find(@PathVariable String id , Model model) {
		model.addAttribute("article", articleService.find(Integer.parseInt(id)));
		return "article";
	}
	
}
