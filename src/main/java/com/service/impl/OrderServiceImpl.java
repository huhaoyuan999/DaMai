package com.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.OrderMapper;
import com.pojo.Order;
import com.pojo.Reduce;
import com.pojo.Tcategorie;
import com.pojo.Tshow;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
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
     * 获取全部订单
     *
     * @return
     */
    @Override
    public PageInfo<Order> queryOrderAllInfo(Integer pageNo, Integer pageSize) {
        //调用页面助手
        PageHelper.startPage(pageNo, pageSize);
        //调用DAO层方法
        List<Order> queryOrderA = orderMapper.queryOrderAllInfo();
        // 调用这个构造器，我们的分页助手对象就构建成功
        PageInfo<Order> pageInfo = new PageInfo<Order>(queryOrderA);
        return pageInfo;
    }

    /**
     * 查询指定订单
     *
     * @param id
     * @return
     */
    @Override
    public Order queryOrderIdInfo(Integer id) {
        return orderMapper.queryOrderIdInfo(id);
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

    /**
     * 根据订单ID删除订单信息
     *
     * @param id
     * @return
     */
    @Override
    public int deleteOrderIdInfo(Integer id) {
        return orderMapper.deleteOrderIdInfo(id);
    }

    /**
     * 查询商品信息
     *
     * @return
     */
    @Override
    public PageInfo<Tshow> queryGoodsAll(Integer pageNo, Integer pageSize) {
        //调用页面助手
        PageHelper.startPage(pageNo, pageSize);
        //调用DAO层方法
        List<Tshow> goodsList = orderMapper.queryGoodsAll();
        // 调用这个构造器，我们的分页助手对象就构建成功
        PageInfo<Tshow> pageInfo = new PageInfo<Tshow>(goodsList);
        return pageInfo;
    }

    /**
     * 删除指定商品信息
     *
     * @param showId
     * @return
     */
    @Override
    public int deleteGoodsInfo(Long showId) {
        return orderMapper.deleteGoodsInfo(showId);
    }

    /**
     * 查询商品分类信息
     *
     * @return
     */
    @Override
    public List<Tcategorie> queryCategoriesAll() {
        return orderMapper.queryCategoriesAll();
    }

    /**
     * 商品上架
     *
     * @param tshow
     * @return
     */
    @Override
    public int insertGoodsInfo(Tshow tshow) {
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
//        String str = sdf.format(tshow.getShowBeginTime());
//        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy.MM.dd");
//        String str2 = sdf2.format(tshow.getShowEndTime());
//        if (str.equals(str2)) {
//            tshow.setShowTime(str);
//        } else {
//            String dateTime = str + "-" + str2;
//            tshow.setShowTime(dateTime);
//        }
        return orderMapper.insertGoodsInfo(tshow);
    }

    /**
     * 修改商品
     *
     * @param tshow
     * @return
     */
    @Override
    public int updateGoodsInfo(Tshow tshow) {
        return orderMapper.updateGoodsInfo(tshow);
    }

    @Override
    public int insertOrder(Order order) {
        return orderMapper.insertOrder(order);
    }

    @Override
    public int updateOrder(String number) {
        return orderMapper.updateOrder(number);
    }

    @Override
    public Order selectStatus(String number) {
        return orderMapper.selectStatus(number);
    }
}
