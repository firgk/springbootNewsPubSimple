package com.concat.service.impl;

import com.concat.domain.Comment;
import com.concat.mapper.CommentMapper;
import com.concat.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
    public void insertComment(Comment comment){
        commentMapper.insertComment(comment);
    }

    public void updateComment(Comment comment){
        commentMapper.updateComment(comment);
    }

    public void deleteCommentById(int commentId){
        commentMapper.deleteCommentById(commentId);
    }

    public Comment getCommentById(int commentId){
        return commentMapper.getCommentById(commentId);
    }

    public List<Comment> getCommentsByNewsId(int newsId){
        return commentMapper.getCommentsByNewsId(newsId);
    }

    @Override
    public Integer deleteCommentByUserId(int id) {
        return commentMapper.deleteCommentByUserId(id);
    }
    public Integer deleteCommentByNewsId(int id){
        return commentMapper.deleteCommentByNewsId(id);
    }
    // 可根据需要添加其他查询方法
}
