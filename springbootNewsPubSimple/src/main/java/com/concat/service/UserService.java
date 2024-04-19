package com.concat.service;


import com.concat.domain.User;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    void insertUser(User user);

    void updateUser(User user);

    void deleteUserById(int userId);

    User getUserById(int userId);

    List<User> getUserByUsername(String username);

    List<User> getAllUsers();
    User getUserByUsernameAndKind(String username,Integer role);

}
