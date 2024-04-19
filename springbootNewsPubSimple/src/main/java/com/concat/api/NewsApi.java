package com.concat.api;
import com.concat.domain.News;
import com.concat.mapper.NewsMapper;
import com.concat.service.CommentService;
import com.concat.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("news")
public class NewsApi {
    @Autowired
    private NewsMapper newsMapper;

    @Autowired
    private NewsService newsService;

    @Autowired
    private CommentService commentServices;
    @GetMapping("getAllNews")
    public List<News> getAllNews(){
        List<News> allNews = newsMapper.getAllNews();
        return allNews;
    }
    @GetMapping("getNewsSubTitle")
    public List<News> getNewsSubTitle(){
        List<News> allNews = newsService.getNewsSubTitle();
        return allNews;
    }

    @GetMapping("getNewsById/{id}")
    public News getNewsById(@PathVariable String id){
        News newsById = newsMapper.getNewsById(Integer.parseInt(id));
        return newsById;
    }


    @GetMapping("getNewsByCategoryId/{id}")
    public List<News> getNewsByCategoryId(@PathVariable String id){
        return newsMapper.getNewsByCategory(Integer.parseInt(id));
    }

    @GetMapping("getNewSubtitlesByCategoryId/{id}")
    public List<News> getNewSubtitlesByCategoryId(@PathVariable String id){
        List<News> newsByCategory = newsMapper.getNewsByCategory(Integer.parseInt(id));
        for(News xinwen:newsByCategory) {
            xinwen.setContent(xinwen.getContent().split("</p>")[0]);
        }
        return newsByCategory;
    }

    @GetMapping("deleteNewsById/{id}")
    public String deleteNewsById(@PathVariable String id){
        commentServices.deleteCommentByNewsId(Integer.parseInt(id));
         newsMapper.deleteNewsById(Integer.parseInt(id));
         return "true";
    }

    @GetMapping("insertNews")
    public String insertNews(@RequestParam String picture ,String title,String category,String content){
        newsMapper.insertNews(new News(title,content,Integer.parseInt(category),"\\web\\pictures\\"+picture.split("\\\\")[2], LocalDateTime.now(),LocalDateTime.now()));
        return "true";
    }

    @GetMapping("getNewsByNewsTitle")
    public List<News> getNewsByNewsTitle(@RequestParam String title){
        return newsMapper.getNewsByNewsTitle(title);
    }
    @GetMapping("getNewsByNewsTitlePiece")
    public List<News> getNewsByNewsTitlePiece(@RequestParam String title){
        return newsMapper.getNewsByNewsTitlePiece(title);
    }

    @GetMapping("getNewsByNewsContentPiece")
    public List<News> getNewsByNewsContentPiece(@RequestParam String content){
       return newsMapper.getNewsByNewsContentPiece(content);
    }

    @GetMapping("getNewsByFuzzyQuery")
    public List<News> getNewsByFuzzyQuery(@RequestParam String keyword){
        List<News> newsByNewsTitlePiece = newsMapper.getNewsByNewsTitlePiece(keyword);
        List<News> newsByNewsContentPiece = newsMapper.getNewsByNewsContentPiece(keyword);
        List<News> reNewList=new ArrayList<>();
        for(News news:newsByNewsTitlePiece){
            reNewList.add(news);
        }
        for(News news:newsByNewsContentPiece){
            reNewList.add(news);
        }
        return reNewList;
    }

    @GetMapping("updateNews")
    public String updateNews(@RequestParam String id,String picture ,String title,String category,String content){
        newsMapper.updateNews(new News(Integer.parseInt(id),title,content,Integer.parseInt(category),"\\web\\pictures\\"+picture.split("\\\\")[2], LocalDateTime.now(),LocalDateTime.now()));
        return "true";
    }



    @RequestMapping(value = "/fileupload", method = RequestMethod.POST)
    public String upload(@RequestParam("lemonFile") MultipartFile file) {
        if (file.isEmpty()) {
            return "文件上传失败";
        }
        // 获取文件名
        String originalFilename = file.getOriginalFilename();

//        // 获取文件后缀名
//        String suffixName = originalFilename.substring(originalFilename.lastIndexOf("."));
//
//        // 设置文件上传绝对路径
        String filePath = "C:\\greenmode\\nginx\\html\\web\\pictures\\"; // 加入斜线
//        // 获取UUID名称
//        String fileName = UUID.randomUUID() + suffixName;
        // 获取上传文件的File对象
        File dest = new File(filePath + originalFilename);

        // 开始上传
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
            return "上传成功";
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }
        return "上传失败";
    }

}


