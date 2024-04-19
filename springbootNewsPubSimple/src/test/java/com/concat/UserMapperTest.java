//package com.concat;
//
//import com.concat.domain.User;
//import com.concat.mapper.UserMapper;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.util.List;
//
//@SpringBootTest
//public class UserMapperTest {
//
//    @Autowired
//    private UserMapper userMapper;
//
//    @Test
//    public void testInsertUser() {
//        User user = new User();
//        user.setUsername("testuser");
//        user.setPassword("testpassword");
//        user.setRole(0);
//
//        userMapper.insertUser(user);
//
//        // Assuming there's a method to get user by ID in the mapper
//        User retrievedUser = userMapper.getUserById(user.getUserId());
//        // Perform assertions to verify correctness
//    }
//
//    @Test
//    public void testUpdateUser() {
//        // Assuming there's a method to get user by ID in the mapper
//        User user = userMapper.getUserById(1);
//        if (user != null) {
//            user.setUsername("updateduser");
//            user.setPassword("updatedpassword");
//            userMapper.updateUser(user);
//
//            // Assuming there's a method to get user by ID in the mapper
//            User updatedUser = userMapper.getUserById(user.getUserId());
//            // Perform assertions to verify correctness
//        }
//    }
//
//    @Test
//    public void testDeleteUser() {
//        // Assuming there's a method to get user by ID in the mapper
//        User user = userMapper.getUserById(1);
//        if (user != null) {
//            userMapper.deleteUserById(user.getUserId());
//
//            // Assuming there's a method to get user by ID in the mapper
//            User deletedUser = userMapper.getUserById(user.getUserId());
//            // Perform assertions to verify correctness (deletedUser should be null)
//        }
//    }
//
//    @Test
//    public void testGetAllUsers() {
//        List<User> allUsers = userMapper.getAllUsers();
//        // Perform assertions to verify correctness
//    }
//}
