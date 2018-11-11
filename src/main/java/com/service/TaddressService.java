package com.service;

import com.pojo.Taddress;
import com.pojo.Tareainfo;

import java.util.List;

/**
 * 收货地址业务接口
 */
public interface TaddressService {

    /**
     * 查询用户收货地址
     *
     * @param userId
     * @return
     */
    List<Taddress> selectByUserId(Integer userId);

    /**
     * 根据父级分类查询信息
     *
     * @param parentId
     * @return
     */
    List<Tareainfo> queryTareainfoList(String parentId);

    /**
     * 新增收货地址
     *
     * @param taddress
     * @return
     */
    int insertAddressInfo(Taddress taddress);

    /**
     * 修改用户信息
     *
     * @param taddress
     * @return
     */
    int updateAddressInfo(Taddress taddress);

    /**
     * 设置首选收货地址
     *
     * @return
     */
    int updatePreferredInfo(Long addressId, Integer userId);

    /**
     * 删除地址信息
     *
     * @param addressId
     * @return
     */
    int deleteAddressId(Long addressId);
}
