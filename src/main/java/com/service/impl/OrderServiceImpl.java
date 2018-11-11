package com.service.impl;

import com.mapper.OrderMapper;
import com.pojo.Order;
import com.pojo.Reduce;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 订单业务实现类
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    //定义DAO接口
    @Autowired
    @Qualifier("orderMapper")
    private OrderMapper orderMapper;

    /**
     * 根据用户ID查询用户订单
     *
     * @param user_id
     * @return
     */
    @Override
    public List<Order> queryOrderInfo(Integer user_id) {
        return orderMapper.queryOrderInfo(user_id);
    }

    /**
     * 根据用户ID查询用户优惠劵
     *
     * @param user_id
     * @return
     */
    @Override
    public List<Reduce> queryReduceInfo(Integer user_id) {
        return orderMapper.queryReduceInfo(user_id);
    }
}
