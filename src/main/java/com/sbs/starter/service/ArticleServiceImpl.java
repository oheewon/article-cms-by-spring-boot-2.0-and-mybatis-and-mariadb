package com.sbs.starter.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.starter.dao.ArticleDao;
import com.sbs.starter.dto.Article;

import groovy.util.logging.Slf4j;
import jline.internal.Log;

@Service
@Slf4j
public class ArticleServiceImpl implements ArticleService{
	@Autowired
	ArticleDao articleDao;
	
	@Override
	public List<Article> getList(){
		return articleDao.getList();
	}

	@Override
	public long add(Map<String, Object> param) {
		articleDao.add(param);
		
		BigInteger bigIntId = (BigInteger)param.get("id");
		long newId = bigIntId.longValue();
		
		return newId;
	}
}
