package com.concat.mapper;

import com.concat.domain.News;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface NewsMapper {

    void insertNews(News news);

    void updateNews(News news);

    void deleteNewsById(int newsId);

    News getNewsById(int newsId);


    List<News> getAllNews();

    List<News> getNewsByCategory(Integer category_id);

    List<News> getNewsByNewsTitle(String title);

    List<News> getNewsByNewsTitlePiece(String title);

    List<News> getNewsByNewsContentPiece(String title);

}
