package com.sbs.starter.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sbs.starter.dto.Article;

@Component //autowired에 의한 연결에 적용됨
public class ArticleDaoImpl implements ArticleDao{

	@Override
	public List<Article> getList() {
		Article article1 = new Article(1, "2020-04-18 12:12:12", "제목1", "내용1");
		Article article2 = new Article(2, "2020-04-18 12:12:12", "제목2", "내용2");
		Article article3 = new Article(3, "2020-04-18 12:12:12", "제목3", "내용3");
		
		List<Article> list =  new ArrayList<>();
		
		list.add(article1);
		list.add(article2);
		list.add(article3);
		
		return list;
	}
	

}
