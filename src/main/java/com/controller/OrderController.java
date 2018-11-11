package com.controller;

import com.pojo.Order;
import com.pojo.Reduce;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 订单控制类
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    @Qualifier("orderService")
    private OrderService orderService;

    /**
     * 根据用户ID查询订单
     *
     * @return
     */
    @RequestMapping("/query/{user_id}/{info}")
    public String queryOrderInfo(@PathVariable("user_id") Integer user_id, @PathVariable("info") Integer info, Model model) {
        List<Order> orderList = orderService.queryOrderInfo(user_id);
        model.addAttribute("orderList", orderList);
        if (info == 0) {
            return "user/order";
        } else {
            model.addAttribute("info", info);
            return "user/orderDetailed";
        }
    }

    /**
     * 根据用户ID查询用户优惠劵
     *
     * @return
     */
    @RequestMapping("/reduce/{user_id}")
    public String queryReduceInfo(@PathVariable("user_id") Integer user_id, Model model) {
        List<Reduce> reduceList = orderService.queryReduceInfo(user_id);
        model.addAttribute("reduceList", reduceList);
        return "user/reduce";
    }
}
