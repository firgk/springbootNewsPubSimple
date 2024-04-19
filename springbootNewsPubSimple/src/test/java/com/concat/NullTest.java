//package com.concat;
//
//import com.concat.domain.News;
//import com.concat.domain.User;
//import com.concat.mapper.NewsMapper;
//import com.concat.mapper.UserMapper;
//import com.concat.service.NewsService;
//import com.concat.service.UserService;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.util.Calendar;
//import java.util.Date;
//import java.util.List;
//
//@SpringBootTest
//public class NullTest {
//
//
//    @Autowired
//    private NewsService newsService;
//    @Autowired
//    private UserService userService;
//
//    @Autowired
//    private NewsMapper newsMapper;
//
//    @Test
//    void test1(){
//        Date date = Calendar.getInstance().getTime();
//        System.out.println(date);
//    }
//    @Test
//    void test2(){
//        Date date = new Date();
//        System.out.println(date);
//    }
//
//    @Test
//    void test3(){
//        List<News> newsSubTitle = newsService.getNewsSubTitle();
//        for(News xinwen:newsSubTitle){
//            System.out.println(xinwen.getContent());
//        }
//    }
//    @Test
//    void test4(){
//        System.out.println(userService.getUserByUsername("qwe"));
//    }
//    @Test
//    void test5(){
//
//    }
//}
