package com.concat.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {

    private int commentId;
    private int userId;
    private int newsId;
    private String content;
    private LocalDateTime createdAt;

    public Comment(int userId, int newsId, String content, LocalDateTime createdAt) {
        this.userId = userId;
        this.newsId = newsId;
        this.content = content;
        this.createdAt = createdAt;
    }
}
