package com.service;

import com.github.pagehelper.PageInfo;
import com.pojo.Order;
import com.pojo.Reduce;
import com.pojo.Tcategorie;
import com.pojo.Tshow;

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

    /**
     * 根据订单ID删除订单信息
     *
     * @return
     */
    int deleteOrderIdInfo(Integer id);

    /**
     * 查询商品信息
     *
     * @return
     */
    PageInfo<Tshow> queryGoodsAll(Integer pageNo, Integer pageSize);

    /**
     * 删除指定商品信息
     *
     * @param showId
     * @return
     */
    int deleteGoodsInfo(Long showId);

    /**
     * 查询商品分类信息
     *
     * @return
     */
    List<Tcategorie> queryCategoriesAll();

    /**
     * 商品上架
     *
     * @param
     * @return
     */
    int insertGoodsInfo(Tshow tshow);

    /**
     * 修改商品
     *
     * @param
     * @return
     */
    int updateGoodsInfo(Tshow tshow);
}
