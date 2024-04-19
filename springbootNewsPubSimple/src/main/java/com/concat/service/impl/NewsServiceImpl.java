package com.concat.service.impl;

import com.concat.domain.News;
import com.concat.mapper.NewsMapper;
import com.concat.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;
    public void insertNews(News news){
        newsMapper.insertNews(news);
    }

    public List<News> getNewsSubTitle(){
        List<News> allNews = newsMapper.getAllNews();
        for(News xinwen:allNews){
            xinwen.setContent(xinwen.getContent().split("</p>")[0]);
        }
        return allNews;
    }
    public void updateNews(News news){
        newsMapper.updateNews(news);
    }

    public void deleteNewsById(int newsId){
        newsMapper.deleteNewsById(newsId);
    }

    public News getNewsById(int newsId){
        return newsMapper.getNewsById(newsId);
    }

    public List<News> getAllNews(){
        return getAllNews();
    }

    public List<News> getNewsByCategory(Integer category_id){
        return newsMapper.getNewsByCategory(category_id);
    }

    public List<News> getNewsByNewsTitle(String title){
        return  newsMapper.getNewsByNewsTitle(title);
    }
    public List<News> getNewsByNewsTitlePiece(String title){
        return newsMapper.getNewsByNewsTitlePiece(title);
    }
    public List<News> getNewsByNewsContentPiece(String content){
        return newsMapper.getNewsByNewsContentPiece(content);
    }
}
