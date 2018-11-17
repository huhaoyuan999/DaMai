package com.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.UserMapper;
import com.pojo.TicketHolder;
import com.pojo.User;
import com.service.UserService;
import com.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户表业务逻辑接口实现类
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    //定义DAO接口
    @Autowired
    @Qualifier("userMapper")
    private UserMapper userMapper;

    /**
     * 用户登入
     *
     * @param
     * @return
     */
    @Override
    public User login(String loginName, String password) {
        int num = userMapper.login(new User(SecurityUtils.md5Hex(password), loginName));
        if (num == 1) {
            return userMapper.queryAppointInfo(new User(SecurityUtils.md5Hex(password), loginName));
        } else {
            return null;
        }
    }

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @Override
    public int insertInfo(User user) {
        int num = userMapper.queryLoginName(user.getLoginName());
        if (num > 0) {
            return 0;
        } else {
            user.setPassword(SecurityUtils.md5Hex(user.getPassword()));
            System.out.println("你好");
            return userMapper.insertInfo(user);
        }
    }

    /**
     * 修改用户信息
     *
     * @param user
     * @return
     */
    @Override
    public int updateInfo(User user) {
        return userMapper.updateInfo(user);
    }

    /**
     * 判断密码是否正确
     *
     * @param user
     * @return
     */
    @Override
    public int existence(User user) {
        return userMapper.login(new User(SecurityUtils.md5Hex(user.getPassword()), user.getLoginName()));
    }

    /**
     * 更换账号
     *
     * @param user
     * @return
     */
    @Override
    public int changeAccount(User user) {
        int num = userMapper.login(new User(SecurityUtils.md5Hex(user.getPassword()), user.getLoginName()));
        if (num == 0) {
            return 9;
        }
        return userMapper.updateInfo(new User(user.getId(), user.getImageName()));
    }

    /**
     * 查询用户是否存在
     *
     * @param loginName
     * @return
     */
    @Override
    public int queryExist(String loginName) {
        return userMapper.queryExist(loginName);
    }

    /**
     * 找回密码
     *
     * @param user
     * @return
     */
    @Override
    public int updatePassword(User user) {
        return userMapper.updatePassword(user);
    }

    /**
     * 根据用户ID查询用户常用购票人
     *
     * @param t_user
     * @return
     */
    @Override
    public List<TicketHolder> queryTicketHolder(int t_user) {
        return userMapper.queryTicketHolder(t_user);
    }

    /**
     * 添加常用购票人
     *
     * @param ticketHolder
     * @return
     */
    @Override
    public int insertTicketHolder(TicketHolder ticketHolder) {
        return userMapper.insertTicketHolder(ticketHolder);
    }

    /**
     * 删除常用购票人
     *
     * @param id
     * @return
     */
    @Override
    public int deleteTicketHolder(int id) {
        return userMapper.deleteTicketHolder(id);
    }

    /**
     * 根据用户ID查询用户信息
     *
     * @param id
     * @return
     */
    @Override
    public User queryUserInfo(int id) {
        return userMapper.queryUserInfo(id);
    }

    /**
     * 获取用户列表
     *
     * @return
     */
    @Override
    public PageInfo<User> queryUserAllInfo(Integer pageNo, Integer pageSize) {
        //调用页面助手
        PageHelper.startPage(pageNo, pageSize);
        //调用DAO层方法
        List<User> list = userMapper.queryUserAllInfo();
        // 调用这个构造器，我们的分页助手对象就构建成功
        PageInfo<User> pageInfo = new PageInfo<User>(list);
        return pageInfo;
    }

    /**
     * 删除指定用户信息
     *
     * @param id
     * @return
     */
    @Override
    public int deleteUserInfo(Integer id) {
        return userMapper.deleteUserInfo(id);
    }

}
