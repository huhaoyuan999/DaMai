package com.controller;

import com.pojo.Taddress;
import com.pojo.Tareainfo;
import com.service.TaddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 地址控制类
 */
@Controller
@RequestMapping("/address")
public class TaddressController {

    @Autowired
    @Qualifier("taddressService")
    private TaddressService taddressService;


    /**
     * 根据用户ID查询用户信息
     *
     * @return
     */
    @RequestMapping("/userAddress/{user_id}")
    public String queryUserAddress(@PathVariable("user_id") Integer user_id, Model model) {
        List<Taddress> addressList = taddressService.selectByUserId(user_id);
        List<Tareainfo> addressCollection = taddressService.queryTareainfoList(null);
        model.addAttribute("addressCollection", addressCollection);
        model.addAttribute("addressList", addressList);
        return "user/address";
    }

    /**
     * 根据父级ID获取子集
     *
     * @param parentId
     * @return
     */
    @RequestMapping("/addressList/{parentId}")
    @ResponseBody
    public List<Tareainfo> queryAddressListInfo(@PathVariable("parentId") String parentId, Model model) {
        return taddressService.queryTareainfoList(parentId);
    }

    /**
     * 新增收货人地址信息
     *
     * @param taddress
     * @return
     */
    @RequestMapping("/insert")
    @ResponseBody
    public int insertAddressInfo(@RequestBody Taddress taddress) {
        return taddressService.insertAddressInfo(taddress);
    }

    /**
     * 修改收货人地址信息
     *
     * @param taddress
     * @return
     */
    @RequestMapping("/update")
    @ResponseBody
    public int updateAddressInfo(@RequestBody Taddress taddress) {
        return taddressService.updateAddressInfo(taddress);
    }

    /**
     * 设置首选收货地址
     *
     * @param
     * @return
     */
    @RequestMapping("/preferred/{addressId}/{userId}")
    @ResponseBody
    public int updatePreferredInfo(@PathVariable("addressId") Long addressId, @PathVariable("userId") Integer userId) {
        return taddressService.updatePreferredInfo(addressId, userId);
    }

    /**
     * 删除地址信息
     *
     * @return
     */
    @RequestMapping("/delete/{addressId}")
    @ResponseBody
    public int deleteAddressId(@PathVariable("addressId") Long addressId) {
        return taddressService.deleteAddressId(addressId);
    }


}
