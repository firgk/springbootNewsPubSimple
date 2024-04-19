//package com.concat;
//
//import com.concat.domain.News;
//import com.concat.mapper.NewsMapper;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.util.List;
//
//@SpringBootTest
//public class NewsMapperTest {
//
//    @Autowired
//    private NewsMapper newsMapper;
//
//    @Test
//    public void testInsertNews() {
//        News news = new News();
//        news.setTitle("Test News");
//        news.setContent("This is a test news.");
//        news.setCategoryId(2); // Assuming category with ID 1 exists
//        news.setImageUrl("test_image.jpg");
//
//        newsMapper.insertNews(news);
//
//        // Assuming there's a method to get news by ID in the mapper
//        News retrievedNews = newsMapper.getNewsById(news.getNewsId());
//        // Perform assertions to verify correctness
//    }
//
//    @Test
//    public void testUpdateNews() {
//        // Assuming there's a method to get news by ID in the mapper
//        News news = newsMapper.getNewsById(1);
//        if (news != null) {
//            news.setTitle("Updated Test News");
//            newsMapper.updateNews(news);
//
//            // Assuming there's a method to get news by ID in the mapper
//            News updatedNews = newsMapper.getNewsById(news.getNewsId());
//            // Perform assertions to verify correctness
//        }
//    }
//
//    @Test
//    public void testDeleteNews() {
//        // Assuming there's a method to get news by ID in the mapper
//        News news = newsMapper.getNewsById(1);
//        if (news != null) {
//            newsMapper.deleteNewsById(news.getNewsId());
//
//            // Assuming there's a method to get news by ID in the mapper
//            News deletedNews = newsMapper.getNewsById(news.getNewsId());
//            // Perform assertions to verify correctness (deletedNews should be null)
//        }
//    }
//
//    @Test
//    public void testGetAllNews() {
//        List<News> allNews = newsMapper.getAllNews();
//        // Perform assertions to verify correctness
//    }
//}
