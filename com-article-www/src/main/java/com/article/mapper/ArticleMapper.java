/**ArticleMapper.java**/
package com.article.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.article.domain.Article;

/**
 * @author 刘泰 =========>>>  m1300326093@163.com
 * 功能: 
 */
public interface ArticleMapper {

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	List<Article> articles();

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 
	 */
	Article find(@Param("id")Integer id);

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
