package com.concat.api;

import com.concat.domain.Comment;
import com.concat.domain.User;
import com.concat.mapper.UserMapper;
import com.concat.service.CommentService;
import com.concat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Parameter;
import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("user")
public class UserApi {
    @Autowired
    private UserService userService;
    @Autowired
    private CommentService commentService;

    /*
    而不是路径变量（path variables）。
    在Spring框架中，如果你的参数是通过查询字符串传递的，应该使用@RequestParam注解而不是@PathVariable。
     */
    @GetMapping("verify")
    public String verify(@RequestParam String username, String password, String kind) {
        User userByUsername = userService.getUserByUsernameAndKind(username,Integer.parseInt(kind));
        if (userByUsername == null) {
            return "nothisuser";
        }
        if (userByUsername.getPassword().equals(password)&&userByUsername.getRole().toString().equals(kind)) {
            return "right";
        } else {
            return "errorpassword";
        }
    }

    @GetMapping("register")
    public String register(@RequestParam String username, String password, String password2) {
        if (!password.equals(password2)) {
            return "errorpassword";
        }
        User userByUsername = userService.getUserByUsernameAndKind(username,0);
        if (userByUsername != null) {
            return "alreadyexist";
        } else {
            User user = new User(username, password, 0, LocalDateTime.now());
            userService.insertUser(user);
            return "right";
        }
    }

    @GetMapping("getAllUsers")
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }


    @GetMapping("getUserById/{id}")
    public User getUserById(@PathVariable String id) {
        return userService.getUserById(Integer.parseInt(id));
    }

    @GetMapping("delUserById/{id}")
    public String delUserById(@PathVariable String id) {
        try {
            userService.deleteUserById(Integer.parseInt(id));
        } catch (Exception e) {
            commentService.deleteCommentByUserId(Integer.parseInt(id));
            userService.deleteUserById(Integer.parseInt(id));
        }
        return "true";
    }

    @GetMapping("updateUserById/{id}")
    public String updateUserById(@PathVariable String id, @RequestParam String username, String password) {
        userService.updateUser(new User(Integer.parseInt(id),username,password,0,LocalDateTime.now()));
        return "true";
    }

    @GetMapping("insertUser")
    public String insertUser(@RequestParam String username, String password,String role) {
        System.out.println(LocalDateTime.now());
        userService.insertUser(new User(username,password,Integer.parseInt(role),LocalDateTime.now()));
        return "true";
    }

    @GetMapping("GetUserByUsername")
    public List<User> GetUserByUsername(@RequestParam String username){
        return userService.getUserByUsername(username);
    }


}
