package com.service.impl;


import com.mapper.OrderMapper;
import com.mapper.TaddressMapper;
import com.mapper.TareainfoMapper;
import com.pojo.Taddress;
import com.pojo.Tareainfo;
import com.service.TaddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 收货地址业务逻辑类
 */
@Service("taddressService")
@Transactional(rollbackFor = Exception.class)
public class TaddressServiceImpl implements TaddressService {

    @Autowired
    @Qualifier("taddressMapper")
    TaddressMapper taddressMapper;

    @Autowired
    @Qualifier("tareainfoMapper")
    TareainfoMapper tareainfoMapper;

    @Autowired
    @Qualifier("orderMapper")
    private OrderMapper orderMapper;

    /**
     * 查询用户收货地址
     *
     * @param userId
     * @return
     */
    @Override
    public List<Taddress> selectByUserId(Integer userId) {
        return taddressMapper.selectByUserId(userId);
    }

    /**
     * 根据父级分类查询信息
     *
     * @param parentId
     * @return
     */
    @Override
    public List<Tareainfo> queryTareainfoList(String parentId) {
        return tareainfoMapper.queryTareainfoList(parentId);
    }

    /**
     * 新增收货地址
     *
     * @param taddress
     * @return
     */
    @Override
    public int insertAddressInfo(Taddress taddress) {
        List<Taddress> address = taddressMapper.selectByUserId(taddress.getUserId());
        int num = 0;
        if (address.size() > 0) {
            Taddress taddress1 = taddress;
            taddress1.setPreferred(0);
            num = taddressMapper.insertAddressInfo(taddress1);
        } else {
            Taddress taddress2 = taddress;
            taddress2.setPreferred(1);
            num = taddressMapper.insertAddressInfo(taddress2);
        }
        return num;
    }

    /**
     * 修改用户地址信息
     *
     * @param taddress
     * @return
     */
    @Override
    public int updateAddressInfo(Taddress taddress) {
        return taddressMapper.updateAddressInfo(taddress);
    }

    /**
     * 设置首选收货地址
     *
     * @param addressId
     * @param userId
     * @return
     */
    @Override
    public int updatePreferredInfo(Long addressId, Integer userId) {
        int num = taddressMapper.updateUserId(userId);
        int num2 = 0;
        if (num > 0) {
            num2 = taddressMapper.updateAddressId(addressId);
        }
        return num2;
    }

    /**
     * 删除地址信息
     *
     * @param addressId
     * @return
     */
    @Override
    public int deleteAddressId(Long addressId) {
        int num = orderMapper.deleteAddressIdInfo(addressId);
        if (num < 1) {
            return 0;
        }
        return taddressMapper.deleteAddressId(addressId);
    }

}
