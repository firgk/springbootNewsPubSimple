package com.concat.mapper;

import com.concat.domain.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface CommentMapper {

    void insertComment(Comment comment);

    void updateComment(Comment comment);

    void deleteCommentById(int commentId);

    Comment getCommentById(int commentId);

    List<Comment> getCommentsByNewsId(int newsId);

    Integer deleteCommentByUserId(int userId);
    Integer deleteCommentByNewsId(int id);
}
