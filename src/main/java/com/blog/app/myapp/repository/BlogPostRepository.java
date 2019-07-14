package com.blog.app.myapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.blog.app.myapp.entity.BlogPost;
import java.lang.String;
import java.util.List;

@Repository
public interface BlogPostRepository extends JpaRepository<BlogPost, Long> {
List<BlogPost> findByStatus(String status);
}
