package com.concat.service.impl;


import com.concat.domain.User;
import com.concat.mapper.UserMapper;
import com.concat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    public void insertUser(User user){
        userMapper.insertUser(user);
    }

    public void updateUser(User user){
        userMapper.updateUser(user);
    }

    public void deleteUserById(int userId){
        userMapper.deleteUserById(userId);
    }

    public User getUserById(int userId){
        return userMapper.getUserById(userId);
    }

    public List<User> getUserByUsername(String username){
        return userMapper.getUserByUsername(username);
    }

    public List<User> getAllUsers(){
        return userMapper.getAllUsers();
    }


    public User getUserByUsernameAndKind(String username,Integer role){
        return userMapper.getUserByUsernameAndKind(username,role);
    }

}
