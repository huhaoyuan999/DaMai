package com.controller;

import com.github.pagehelper.PageInfo;
import com.pojo.TicketHolder;
import com.pojo.User;
import com.service.UserService;
import com.utils.HttpUtils;
import com.utils.ReturnResult;
import com.utils.SecurityUtils;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

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
     * 退出登录
     * @param
     * @param session
     * @return
     */
    @RequestMapping("/exit")
    public String exit(@RequestParam(value = "url", required = false) String url, HttpSession session) {
        session.invalidate();
        return "redirect:"+ url;
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
        User user1 = userService.queryUserList(user.getLoginName());
        if(user1.getPassword().trim()!=null&&user1.getPassword().trim()!=""){
            User user5 = new User();
            user5.setId(user.getId());
            user5.setPassword(SecurityUtils.md5Hex(user.getPassword()));
            return userService.updateInfo(user5);
        }else {
            return 0;
        }

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


    @RequestMapping("/queryUserId")
    @ResponseBody
    public User queryUserId(@RequestParam("id") String id,HttpSession session) {
        User user=userService.queryUserList(id);
        if(user!=null){
            session.setAttribute("user",user);
        }
        return user;
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
        return userService.deleteUserInfo(id);
    }

    /**
     * 短信验证码
     * @param
     */
    @RequestMapping("chuangxinsms")
    @ResponseBody
    public int chuangxinsms (@RequestParam("phoneNo")String phoneNo){
        String host = "https://cxkjsms.market.alicloudapi.com";
        String path = "/chuangxinsms/dxjk";
        String method = "POST";
        String appcode = "b2e3145f6c904eec92d82439849c2c85";
        Map<String, String> headers = new HashMap<String, String>();
        //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
        headers.put("Authorization", "APPCODE " + appcode);
        Map<String, String> querys = new HashMap<String, String>();

        int i = (int) ((Math.random() * 9 + 1) * 100000);
        querys.put("content", "【大麦】你的验证码是："+i+"，3分钟内有效！");
        querys.put("mobile", phoneNo);
        Map<String, String> bodys = new HashMap<String, String>();


        try {
            /**
             * 重要提示如下:
             * HttpUtils请从
             * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
             * 下载
             *
             * 相应的依赖请参照
             * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
             */
            HttpResponse response = HttpUtils.doPost(host, path, method, headers, querys, bodys);
            System.out.println(response.toString());
            return i;
            //获取response的body
            //System.out.println(EntityUtils.toString(response.getEntity()));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }


    /**
     * 验证码注册
     * @param phone
     * @param model
     * @return
     */
    @RequestMapping("bookRegister")
    public String bookRegister(@RequestParam("phone") String phone,Model model){
        model.addAttribute("phone",phone);
        return "goods/booRegister";
    }

    /**
     * 验证码注册账号
     * @param phone
     * @param session
     * @return
     */
    @RequestMapping("insertBookUser")
    @ResponseBody
    public String insertBookUser(@RequestParam("phone") String phone,HttpSession session){
        User user=new User();
        user.setLoginName(phone);
        user.setPassword(" ");
        user.setUserName(phone);
        user.setLoginPhone(Long.valueOf(phone));
        int insertInfo = userService.insertUser(user);
        if(insertInfo>0){
            session.setAttribute("user",userService.queryUserList(phone));
            return "true";
        }
        return "false";
    }




}
