//package com.concat;
//import com.concat.domain.Comment;
//import com.concat.mapper.CommentMapper;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.util.List;
//
//@SpringBootTest
//public class CommentMapperTest {
//
//    @Autowired
//    private CommentMapper commentMapper;
//
//    @Test
//    public void testInsertComment() {
//        Comment comment = new Comment();
//        comment.setUserId(2); // Assuming user with ID 1 exists
//        comment.setNewsId(2); // Assuming news with ID 1 exists
//        comment.setContent("Test comment");
//
//        commentMapper.insertComment(comment);
//
//        // Assuming there's a method to get comment by ID in the mapper
//        Comment retrievedComment = commentMapper.getCommentById(comment.getCommentId());
//        // Perform assertions to verify correctness
//    }
//
//    @Test
//    public void testUpdateComment() {
//        // Assuming there's a method to get comment by ID in the mapper
//        Comment comment = commentMapper.getCommentById(1);
//        if (comment != null) {
//            comment.setContent("Updated Test Comment");
//            commentMapper.updateComment(comment);
//
//            // Assuming there's a method to get comment by ID in the mapper
//            Comment updatedComment = commentMapper.getCommentById(comment.getCommentId());
//            // Perform assertions to verify correctness
//        }
//    }
//
//    @Test
//    public void testDeleteComment() {
//        // Assuming there's a method to get comment by ID in the mapper
//        Comment comment = commentMapper.getCommentById(1);
//        if (comment != null) {
//            commentMapper.deleteCommentById(comment.getCommentId());
//
//            // Assuming there's a method to get comment by ID in the mapper
//            Comment deletedComment = commentMapper.getCommentById(comment.getCommentId());
//            // Perform assertions to verify correctness (deletedComment should be null)
//        }
//    }
//
//    @Test
//    public void testGetCommentsByNewsId() {
//        // Assuming there's a method to get comments by news ID in the mapper
//        List<Comment> commentsByNewsId = commentMapper.getCommentsByNewsId(1);
//        // Perform assertions to verify correctness
//    }
//}
