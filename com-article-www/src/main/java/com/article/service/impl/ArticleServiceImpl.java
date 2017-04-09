/**ArticleServiceImpl.java**/
package com.article.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.article.domain.Article;
import com.article.mapper.ArticleMapper;
import com.article.service.ArticleService;

/**
 * @author 刘泰 =========>>>  m1300326093@163.com
 * 功能: 处理主要业务
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleMapper articleMapper;

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 查询列表
	 */
	@Override
	public List<Article> articles() {
		// TODO Auto-generated method stub
		List<Article> list = articleMapper.articles();
		Date date = new Date();
		for (Article article : list) {
			long create_date = article.getCreate_date().getTime();
			long ago = (date.getTime() - create_date)/1000/60;
			article.setAgo( ago > 60 ? (ago / 60  + "小时之前") :( ago + "分钟之前"));
		}
		return list;
	}

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 回显数据
	 */
	@Override
	public Article find(Integer id) {
		// TODO Auto-generated method stub
		Article article = articleMapper.find(id);
		if( article == null){
			return null;
		}
		Date date = new Date();
		long create_date = article.getCreate_date().getTime();
		long ago = (date.getTime() - create_date) / 1000 / 60;
		article.setAgo( ago > 60 ? (ago /60  + "小时之前") :( ago + "分钟之前"));
		return article;
	}

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能: 保存数据
	 */
	@Override
	public void save(Article article) {
		// TODO Auto-generated method stub
		article.setCreate_date(new Date());
		String path = article.getContext().substring(article.getContext().indexOf("src=\"")+5, article.getContext().indexOf(".")+4);
		article.setCoverUrl(path);
		articleMapper.save(article);
	}

	/**
	 * @author 刘泰 =========>>>  m1300326093@163.com
	 * 功能:  更新数据
	 */
	@Override
	public void update(Article article) {
		// TODO Auto-generated method stub
		article.setCreate_date(new Date());
		String path = article.getContext().substring(article.getContext().indexOf("src=\"")+5, article.getContext().indexOf(".")+4);
		article.setCoverUrl(path);
		articleMapper.update(article);
	}

}
