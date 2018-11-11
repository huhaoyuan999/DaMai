package com.mapper;

import com.pojo.Taddress;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 收货地址DAO接口
 */
@Repository("taddressMapper")
public interface TaddressMapper {


    /**
     * 查询用户收货地址
     *
     * @param userId
     * @return
     */
    List<Taddress> selectByUserId(@Param("userId") Integer userId);

    /**
     * 新增收货地址
     *
     * @param taddress
     * @return
     */
    int insertAddressInfo(Taddress taddress);

    /**
     * 修改用户地址信息
     *
     * @param taddress
     * @return
     */
    int updateAddressInfo(Taddress taddress);

    /**
     * 根据用户ID修改首选地址
     *
     * @param userId
     * @return
     */
    int updateUserId(@Param("userId") Integer userId);

    /**
     * 根据地址ID修改首选地址
     *
     * @param addressId
     * @return
     */
    int updateAddressId(@Param("addressId") Long addressId);

    /**
     * 删除地址信息
     *
     * @param addressId
     * @return
     */
    int deleteAddressId(@Param("addressId") Long addressId);

    /**
     * 根据ID查询信息
     *
     * @param addressId
     * @return
     */
    Taddress queryAddressKey(@Param("addressId") Long addressId);
}