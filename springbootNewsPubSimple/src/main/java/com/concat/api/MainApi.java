package com.concat.api;

import com.concat.domain.News;
import com.concat.domain.User;
import com.concat.mapper.NewsMapper;
import com.concat.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
public class MainApi {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private NewsMapper newsMapper;

    @GetMapping("getAllNews")
    public List<News> getAllNews(){
        List<News> allNews = newsMapper.getAllNews();
        System.out.println(allNews);
        return allNews;
    }


    @GetMapping("/getNewsByCategory/{id}")
    public List<News> getNewsByCategory(@PathVariable String id){
        List<News> allNews = newsMapper.getNewsByCategory(Integer.parseInt(id));
        System.out.println(allNews);
        return allNews;
    }


}
