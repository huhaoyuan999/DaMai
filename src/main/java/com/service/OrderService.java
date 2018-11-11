package com.service;

import com.pojo.Order;
import com.pojo.Reduce;

import java.util.List;

/**
 * 订单业务接口
 */
public interface OrderService {

    /**
     * 根据用户ID查询用户订单
     *
     * @return
     */
    List<Order> queryOrderInfo(Integer user_id);

    /**
     * 根据用户ID查询用户优惠劵
     *
     * @return
     */
    List<Reduce> queryReduceInfo(Integer user_id);

}
