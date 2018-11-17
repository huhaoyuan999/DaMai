package com.controller;

import com.github.pagehelper.PageInfo;
import com.pojo.TicketHolder;
import com.pojo.User;
import com.service.UserService;
import com.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * 用户控制类
 */
@Controller
@RequestMapping("/user")
public class UserController {
    //调用用户表业务逻辑接口
    @Autowired
    @Qualifier("userService")
    private UserService userService;


    /**
     * 用户登入
     *
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestBody User userInfo, HttpSession session) {
        User user = userService.login(userInfo.getLoginName(), userInfo.getPassword());
        if (user == null) {
            return "false";
        }
        if (user.getDate() == null) {
            session.setAttribute("user", user);
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String str = sdf.format(user.getDate());
            String sourceStr = str;
            String[] sourceStrArray = sourceStr.split("-");
            session.setAttribute("birthY", sourceStrArray[0]);
            session.setAttribute("birthM", sourceStrArray[1]);
            session.setAttribute("birthD", sourceStrArray[2]);
            session.setAttribute("user", user);
        }
        return "true";
    }

    /**
     * 用户注册
     *
     * @return
     */
    @RequestMapping("/register")
    @ResponseBody
    public String insertInfo(@RequestBody User user) {
        int num = userService.insertInfo(user);
        return num == 1 ? "true" : "false";
    }


    /**
     * 设置Session失效
     * Info
     *
     * @param session
     * @return
     */
    @RequestMapping("/destroy")
    public String destroySessionInfo(@RequestParam(value = "Info", required = false) Integer Info, HttpSession session) {
        if (Info == null) {
            session.invalidate();
            return "redirect:/index.jsp";
        } else {
            session.invalidate();
            return "redirect:/jsp/user/login.jsp";
        }
    }

    /**
     * 个人信息设置
     *
     * @return
     */
    @RequestMapping("/modular/{modular}")
    public String modularInfo(@PathVariable("modular") String modular, Model model) {
        model.addAttribute("modular", modular);
        return "user/ownInfo";
    }

    /**
     * 修改信息
     *
     * @return
     */
    @RequestMapping("/update")
    @ResponseBody
    public String updateInfo(@RequestBody User user, HttpSession session) {
        int num = userService.updateInfo(user);
        User user1 = userService.queryUserInfo(user.getId());
        if (num == 1) {
            if (user.getDate() == null) {
                session.setAttribute("user", user1);
            } else {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String str = sdf.format(user.getDate());
                String sourceStr = str;
                String[] sourceStrArray = sourceStr.split("-");
                session.setAttribute("birthY", sourceStrArray[0]);
                session.setAttribute("birthM", sourceStrArray[1]);
                session.setAttribute("birthD", sourceStrArray[2]);
                session.setAttribute("user", user1);
            }
        }
        return num == 1 ? "true" : "false";
    }

    /**
     * 修改信息设置
     *
     * @return
     */
    @RequestMapping("/updatePwd/{pwd}")
    public String updateUser(@PathVariable("pwd") Integer pwd, Model model) {
        model.addAttribute("pwd", pwd);
        if (pwd > 2) {
            return "user/updateUser2";
        } else {
            return "user/updateUser1";
        }
    }

    /**
     * 判断密码是否正确
     *
     * @return
     */
    @RequestMapping("/existence")
    @ResponseBody
    public int passwordIsItCorrect(@RequestBody User user) {
        return userService.existence(user);
    }

    /**
     * 修改密码
     *
     * @return
     */
    @RequestMapping("/updatePwd")
    @ResponseBody
    public int updatePassword(@RequestBody User user) {
        User user5 = new User();
        user5.setId(user.getId());
        user5.setPassword(SecurityUtils.md5Hex(user.getPassword()));
        return userService.updateInfo(user5);
    }

    /**
     * 更换账号
     *
     * @return
     */
    @RequestMapping("/change")
    @ResponseBody
    public int changeAccount(@RequestBody User user) {
        return userService.changeAccount(user);
    }

    /**
     * 查询用户是否存在
     *
     * @return
     */
    @RequestMapping("/exist")
    @ResponseBody
    public int queryExist(@RequestBody User user) {
        return userService.queryExist(user.getLoginName());
    }

    /**
     * 中转信息
     *
     * @return
     */
    @RequestMapping("/transfer")
    public String transferStation(@RequestParam(value = "loginName", required = false) String loginName,
                                  @RequestParam(value = "loginName2", required = false) String loginName2,
                                  Model model) {
        if (loginName != null) {
            model.addAttribute("loginName", loginName);
            return "user/retrievePassword2";
        }
        if (loginName2 != null) {
            model.addAttribute("loginName", loginName2);
            return "user/retrievePassword3";
        }
        return "index";
    }

    /**
     * 找回密码
     *
     * @return
     */
    @RequestMapping("/retrieve")
    @ResponseBody
    public int updatePasswordInfo(@RequestBody User user) {
        User user5 = new User();
        user5.setLoginName(user.getLoginName());
        user5.setPassword(SecurityUtils.md5Hex(user.getPassword()));
        return userService.updatePassword(user5);
    }

    /**
     * 查询用户常用购票人
     *
     * @return
     */
    @RequestMapping("/ticketHolder/{id}")
    public String queryTicketHolder(@PathVariable("id") int id, Model model) {
        List<TicketHolder> listHolder = userService.queryTicketHolder(id);
        model.addAttribute("listHolder", listHolder);
        return "user/ticketHolder";
    }

    /**
     * 添加常用购票人信息
     *
     * @return
     */
    @RequestMapping("/insertHolder")
    @ResponseBody
    public int insertTicketHolder(@RequestBody TicketHolder ticketHolder) {
        return userService.insertTicketHolder(ticketHolder);
    }

    /**
     * 删除常用购票人信息
     *
     * @return
     */
    @RequestMapping("/deleteHolder")
    @ResponseBody
    public int deleteTicketHolder(TicketHolder ticketHolder) {
        return userService.deleteTicketHolder(ticketHolder.getId());
    }

    /**
     * 上传头像
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public String uploadFileHandler(@RequestParam("file") MultipartFile file,
                                    @RequestParam("id") Integer id, HttpSession session) {
        if (!file.isEmpty()) {
            try {
                // 文件存放服务端的位置
                String rootPath = "D:\\Y2\\ClassroomExample\\DaMai\\src\\main\\webapp\\static\\image";
                File dir = new File(rootPath + File.separator);
                if (!dir.exists())
                    dir.mkdirs();
                // 写文件到服务器
                File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
                file.transferTo(serverFile);
//                System.out.println("得到的图片文件名是：" + file.getOriginalFilename() + "  得到的Id是:" + id);
                User user = new User();
                user.setId(id);
                user.setImageName(file.getOriginalFilename());
                int num = userService.updateInfo(user);
                if (num == 1) {
                    User user1 = userService.queryUserInfo(id);
                    session.setAttribute("user", user1);
                }
                return "user/fileUpload";
            } catch (Exception e) {
                return "You failed to upload " + file.getOriginalFilename() + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + file.getOriginalFilename() + " because the file was empty.";
        }
    }

    /**
     * 获取用户列表
     *
     * @return
     */
    @RequestMapping("/userAll/{pageNo}")
    public String queryUserAllInfo(@PathVariable("pageNo") Integer pageNo, Model model) {
        PageInfo<User> userList = userService.queryUserAllInfo(pageNo, 8);
        model.addAttribute("userPage", userList);
        return "admin/userAdmin";
    }

    /**
     * 根据ID查询指定用户
     *
     * @return
     */
    @RequestMapping("/queryUser/{id}")
    @ResponseBody
    public User queryUserIdInfo(@PathVariable("id") Integer id) {
        return userService.queryUserInfo(id);
    }

    /**
     * 修改指定用户
     *
     * @return
     */
    @RequestMapping("/updateUser")
    @ResponseBody
    public int updateUserIdInfo(@RequestBody User user) {
        return userService.updateInfo(user);
    }

    /**
     * 删除指定用户信息
     *
     * @return
     */
    @RequestMapping("/deleteUser/{id}")
    @ResponseBody
    public int deleteUserInfo(@PathVariable("id") Integer id) {
        System.out.println("进来了");
        int num = userService.deleteUserInfo(id);
        System.out.println("得到了：" + num);
        return num;
    }

}
