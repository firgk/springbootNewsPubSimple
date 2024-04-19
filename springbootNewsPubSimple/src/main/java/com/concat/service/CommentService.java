package com.concat.service;

import com.concat.domain.Comment;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {

    void insertComment(Comment comment);

    void updateComment(Comment comment);

    void deleteCommentById(int commentId);

    Comment getCommentById(int commentId);

    List<Comment> getCommentsByNewsId(int newsId);

    Integer deleteCommentByUserId(int id);
    // 可根据需要添加其他查询方法
    Integer deleteCommentByNewsId(int id);
}
