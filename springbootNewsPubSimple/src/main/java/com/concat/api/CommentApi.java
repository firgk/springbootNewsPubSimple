package com.concat.api;


import com.concat.domain.Comment;
import com.concat.domain.User;
import com.concat.service.CommentService;
import com.concat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("Comment")
public class CommentApi {
    @Autowired
    private CommentService commentServices;
    @Autowired
    private UserService userService;

    @GetMapping("insertComment")
    public String insertComment(@RequestParam String text , String username,String newsId){
        User userByUsername = userService.getUserByUsername(username).get(0);
        commentServices.insertComment(new Comment(userByUsername.getUserId(),Integer.parseInt(newsId),text, LocalDateTime.now()));
        return "true";
    }
    @GetMapping("getCommentByNewsId/{newsId}")
    public List<Comment> getCommentByNewsId(@PathVariable String newsId){
        return commentServices.getCommentsByNewsId(Integer.parseInt(newsId));
    }
    @GetMapping("deleteCommentByNewsId/{newsId}")
    public String deleteCommentByNewsId(@PathVariable String newsId){
        commentServices.deleteCommentByNewsId(Integer.parseInt(newsId));
        return "ture";
    }
}
