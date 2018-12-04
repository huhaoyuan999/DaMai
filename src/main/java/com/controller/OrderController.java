package com.controller;

import com.github.pagehelper.PageInfo;
import com.pojo.*;
import com.service.CityService;
import com.service.OrderService;
import com.service.TshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.security.util.Length;

import java.io.File;
import java.text.SimpleDateFormat;
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

    @Autowired
    @Qualifier("cityService")
    private CityService cityService;

    @Autowired
    @Qualifier("tshowService")
    private TshowService tshowService;

    /**
     * 根据用户ID查询订单
     *
     * @return
     */
    @RequestMapping("/query/{user_id}/{info}")
    public String queryOrderInfo(@PathVariable("user_id") Integer user_id, @PathVariable("info") Integer info, Model model) {
        List<Order> orderList = orderService.queryOrderInfo(user_id);
        PageInfo<Order> orderAllList = orderService.queryOrderAllInfo(1, 5);
        model.addAttribute("orderList", orderList);
        if (info == 0) {
            model.addAttribute("orderAllList", orderAllList);
            return "user/order";
        } else {
            Order order = orderService.queryOrderIdInfo(info);
            model.addAttribute("order", order);
            return "user/orderDetailed";
        }
    }

    /**
     * 分页查询订单信息
     *
     * @return
     */
    @RequestMapping("/queryPage/{pageNo}")
    public String queryOrderPageInfo(@PathVariable("pageNo") Integer pageNo, Model model) {
        System.out.println("到了到了");
        PageInfo<Order> orderAllList = orderService.queryOrderAllInfo(pageNo, 5);
        model.addAttribute("orderAllList", orderAllList);
        return "user/order";
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

    /**
     * 根据订单ID删除订单信息
     *
     * @return
     */
    @RequestMapping("/delete/{id}")
    @ResponseBody
    public int deleteOrderInfo(@PathVariable("id") Integer id) {
        return orderService.deleteOrderIdInfo(id);
    }

    /**
     * 查询商品信息
     *
     * @return
     */
    @RequestMapping("/goods/{pageNo}")
    public String queryGoodsAllInfo(@PathVariable("pageNo") Integer pageNo, Model model) {
        PageInfo<Tshow> goodsList = orderService.queryGoodsAll(pageNo, 7);
        model.addAttribute("goodsList", goodsList);
        return "admin/goodsAdmin";
    }

    /**
     * 删除指定商品信息
     *
     * @return
     */
    @RequestMapping("/deleteGoods/{id}")
    @ResponseBody
    public int deleteGoodsInfo(@PathVariable("id") Long id) {
        return orderService.deleteGoodsInfo(id);
    }

    /**
     * 跳转到商品上架页面
     *
     * @return
     */
    @RequestMapping("/changeGoods")
    public String changeGoods(Model model) {
        List<Tcategorie> categoriesList = orderService.queryCategoriesAll();
        List<City> cityList = cityService.queryAllCityInfo();
        model.addAttribute("categoriesList", categoriesList);
        model.addAttribute("cityList", cityList);
        model.addAttribute("imageFile", "118036157_150_150.jpg");
        return "admin/changeGoods";
    }

    /**
     * 上传商品图片
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileHandler(@RequestParam("file") MultipartFile file, Model model) {
        if (!file.isEmpty()) {
            try {
                // 文件存放服务端的位置
                String rootPath = "D:\\Y2\\ClassroomExample\\DaMai\\src\\main\\webapp\\static\\image";
                File dir = new File(rootPath + File.separator);
                if (!dir.exists())
                    dir.mkdirs();
                // 写文件到服务器
                File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
                file.transferTo(serverFile);
                model.addAttribute("imageFile2", file.getOriginalFilename());

                System.out.println("得到的图片文件名是：" + file.getOriginalFilename());
                return "true";
            } catch (Exception e) {
                return "You failed to upload " + file.getOriginalFilename() + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + file.getOriginalFilename() + " because the file was empty.";
        }
    }

    /**
     * 图片替换
     *
     * @return
     */
    @RequestMapping("/imageReplace")
    public String imageReplace(Tshow tshow, Model model) {
        model.addAttribute("imageFile", tshow.getShowImg());
        return "admin/changeGoods";
    }

    /**
     * 商品上架
     *
     * @return
     */
    @RequestMapping("/insertGoods")
    @ResponseBody
    public int insertGoodsInfo(Tshow tshow) {
        return orderService.insertGoodsInfo(tshow);
    }


    /**
     * 查询指定商品信息
     *
     * @return
     */
    @RequestMapping("/queryGoods/{showId}")
    public String queryGoodsId(@PathVariable("showId") Long showId, Model model) {
        List<Tcategorie> categoriesList = orderService.queryCategoriesAll();
        List<City> cityList = cityService.queryAllCityInfo();
        Tshow tshow = tshowService.queryShowDeatilById(showId);
        model.addAttribute("categoriesList", categoriesList);
        model.addAttribute("cityList", cityList);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String str1 = sdf.format(tshow.getShowBeginTime());
        String str2 = sdf.format(tshow.getShowEndTime());
        model.addAttribute("showBeginTime", str1);
        model.addAttribute("showEndTime", str2);
        model.addAttribute("tshow", tshow);
        model.addAttribute("imageFile", tshow.getShowImg());
        model.addAttribute("update", 1);
        model.addAttribute("activityPicture", tshow.getShowImg());
        return "admin/changeGoods";
    }

    /**
     * 修改商品信息
     *
     * @param tshow
     * @return
     */
    @RequestMapping("/updateGoods")
    @ResponseBody
    public int updateGoodsInfo(Tshow tshow) {
        return orderService.updateGoodsInfo(tshow);
    }
}
