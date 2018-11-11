package com.mapper;

import com.pojo.Order;
import com.pojo.Reduce;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 订单DAO接口
 */
@Repository("orderMapper")
public interface OrderMapper {

    /**
     * 根据用户ID查询用户订单
     *
     * @return
     */
    List<Order> queryOrderInfo(@Param("user_id") Integer user_id);

    /**
     * 根据用户ID查询用户优惠劵
     *
     * @return
     */
    List<Reduce> queryReduceInfo(@Param("user_id") Integer user_id);
}
