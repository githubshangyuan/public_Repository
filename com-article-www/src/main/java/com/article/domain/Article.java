/**Article.java**/
package com.article.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @author 刘泰 =========>>>  m1300326093@163.com
 * 功能: 
 */
public class Article implements Serializable{

	/**serialVersionUID **/
	private static final long serialVersionUID = -4242946378438080054L;

	/**编号**/
	private Integer id;
	
	/**标题**/
	private String title;
	
	/**首页引用**/
	private String portal;
	
	/**图片路径**/
	private String coverUrl;
	
	/**创建日期**/
	private Date create_date;
	
	/**内容**/
	private String context;
	
	/**作者**/
	private String editor;
	
	/**。。。分钟之前**/
	private String ago;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCoverUrl() {
		return coverUrl;
	}

	public void setCoverUrl(String coverUrl) {
		this.coverUrl = coverUrl;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	
	public String getAgo() {
		return ago;
	}

	public void setAgo(String ago) {
		this.ago = ago;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", coverUrl=" + coverUrl + ", create_date=" + create_date
				+ ", context=" + context + "]";
	}

	public String getPortal() {
		return portal;
	}

	public void setPortal(String portal) {
		this.portal = portal;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
}
