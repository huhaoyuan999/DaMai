package com.mapper;

import com.pojo.Order;
import com.pojo.Reduce;
import com.pojo.Tcategorie;
import com.pojo.Tshow;
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
     * 获取全部订单
     *
     * @return
     */
    List<Order> queryOrderAllInfo();

    /**
     * 查询指定订单
     *
     * @return
     */
    Order queryOrderIdInfo(@Param("id")Integer id);

    /**
     * 根据用户ID查询用户优惠劵
     *
     * @return
     */
    List<Reduce> queryReduceInfo(@Param("user_id") Integer user_id);

    /**
     * 根据地址ID删除订单信息
     *
     * @param address_id
     * @return
     */
    int deleteAddressIdInfo(@Param("address_id") Long address_id);

    /**
     * 根据订单ID删除订单信息
     *
     * @return
     */
    int deleteOrderIdInfo(@Param("id") Integer id);

    /**
     * 查询商品信息
     *
     * @return
     */
    List<Tshow> queryGoodsAll();

    /**
     * 删除指定商品信息
     *
     * @param showId
     * @return
     */
    int deleteGoodsInfo(@Param("showId") Long showId);

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

    /**
     * 添加订单
     * @return
     */
    int insertOrder(@Param("order") Order order);

    /**
     * 根据订单号修改订单状态
     * @param number
     * @return
     */
    int updateOrder(@Param("number") String number);

    Order selectStatus(@Param("number") String number);
}
