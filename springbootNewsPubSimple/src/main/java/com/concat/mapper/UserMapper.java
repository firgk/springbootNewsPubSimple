package com.concat.mapper;


import com.concat.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface UserMapper {

    void insertUser(User user);

    void updateUser(User user);

    void deleteUserById(int userId);

    User getUserById(int userId);

    List<User> getUserByUsername(String username);

    List<User> getAllUsers();

    User getUserByUsernameAndKind(String username,Integer role);
}
