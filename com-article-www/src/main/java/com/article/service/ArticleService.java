/**ArticleService.java**/
package com.article.service;

import java.util.List;

import com.article.domain.Article;

/**
 * @author 刘泰 =========>>>  m1300326093@163.com
 * 功能: 
 */
public interface ArticleService {

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	List<Article> articles();

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	Article find(Integer id);

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	void save(Article article);

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	void update(Article article);

}
