package com.mapper;

import com.pojo.TicketHolder;
import com.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户表DAO接口
 */
@Repository("userMapper")
public interface UserMapper {

    /**
     * 查询指定信息
     *
     * @param user
     * @return
     */
    User queryAppointInfo(User user);

    /**
     * 用户登入
     *
     * @param user
     * @return
     */
    int login(User user);

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    int insertInfo(User user);

    /**
     * 查询是否有此账号
     *
     * @param loginName
     * @return
     */
    int queryLoginName(@Param("loginName") String loginName);

    /**
     * 修改用户信息
     *
     * @param user
     * @return
     */
    int updateInfo(User user);

    /**
     * 查询用户是否存在
     *
     * @param loginName
     * @return
     */
    int queryExist(@Param("loginName") String loginName);

    /**
     * 找回密码
     *
     * @param user
     * @return
     */
    int updatePassword(User user);

    /**
     * 根据用户ID查询用户常用购票人
     *
     * @return
     */
    List<TicketHolder> queryTicketHolder(@Param("t_user") int t_user);

    /**
     * 添加常用购票人
     *
     * @return
     */
    int insertTicketHolder(TicketHolder ticketHolder);

    /**
     * 删除常用购票人
     *
     * @return
     */
    int deleteTicketHolder(int id);

    /**
     * 根据用户ID查询用户信息
     *
     * @param id
     * @return
     */
    User queryUserInfo(@Param("id") int id);

    /**
     * 根据账号查询
     * @param id
     * @return
     */
    User queryUser(@Param("id") String id);

    /**
     * 获取用户列表
     *
     * @return
     */
    List<User> queryUserAllInfo();

    /**
     * 删除指定用户信息
     *
     * @param id
     * @return
     */
    int deleteUserInfo(@Param("id") Integer id);
}
