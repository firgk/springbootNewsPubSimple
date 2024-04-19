package com.concat.service;

import com.concat.domain.News;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface NewsService {

    void insertNews(News news);

    void updateNews(News news);

    void deleteNewsById(int newsId);

    News getNewsById(int newsId);

    List<News> getNewsSubTitle();

    List<News> getAllNews();

    List<News> getNewsByCategory(Integer category_id);

    List<News> getNewsByNewsTitle(String title);
    List<News> getNewsByNewsTitlePiece(String title);
    List<News> getNewsByNewsContentPiece(String title);

}
