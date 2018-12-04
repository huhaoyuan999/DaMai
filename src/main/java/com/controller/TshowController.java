package com.controller;

import com.github.pagehelper.PageInfo;
import com.model.Products;
import com.model.ReturnApi;
import com.pojo.*;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 商品控制类
 */
@Controller
@RequestMapping("/show")
public class TshowController {


    @Autowired
    @Qualifier("tshowService")
    private TshowService tshowService;

    @Autowired
    @Qualifier("tcategorieService")
    private TcategorieService tcategorieService;

    @Autowired
    @Qualifier("cityService")
    private CityService cityService;

    @Autowired
    @Qualifier("taddressService")
    private TaddressService taddressService;

    @Autowired
    @Qualifier("orderService")
    private OrderService orderService;

    /**
     * 首页加载显示商品内容
     *
     * @param model
     * @return
     */
    @RequestMapping("/index")
    public String index(Model model, Tshow tshow) {
        List<Tcategorie> tcategorieList = tcategorieService.queryAll(tshow.getAreainfoId());
        //============查询分类信息============//
        model.addAttribute("tcategorieList", tcategorieList);
        //============查询演出信息============//
//        model.addAttribute("tshowList",tshowService.queryShowInfoByAreainfoId(tshow.getAreainfoId()));
        //============查询热门城市============//
        model.addAttribute("hotCitys", cityService.queryHotCityInfo());
        model.addAttribute("selectIndex", "select");
        //============查询其它城市============//
        model.addAttribute("cityList", cityService.queryAllCityInfo());
        return "forward:/index.jsp";
    }

    /**
     * 根据分类显示商品内容
     *
     * @param model
     * @return
     */
    @RequestMapping("/query")
    public String categories(Model model, Tshow tshow, @RequestParam("name") String name, @RequestParam(value = "mode", defaultValue = "0") Integer mode, @RequestParam(value = "pai", defaultValue = "count") String pai, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "showName", required = false) String showName) {
        String areainfoId = cityService.selectByName(name);
        tshow.setAreainfoId(areainfoId);
        List<Tcategorie> tcategorieList = null;
        List<City> cityList = null;
        if (showName != null) {
            tshow.setShowName(showName);
            tcategorieList = tcategorieService.queryByShowName(showName);
            cityList = cityService.queryByShowName(showName);
        } else {
            tcategorieList = tcategorieService.queryAll(tshow.getAreainfoId());
            cityList = cityService.queryAllCityInfo();
        }
        PageInfo<Tshow> pageInfo = tshowService.queryShowByCategorys(tshow, pai, pageNum);
//        model.addAttribute("showList",showList);
        model.addAttribute("pageInfo", pageInfo);


        //============查询分类信息============//
        model.addAttribute("tcategorieList", tcategorieList);
        //============查询所有城市============//
        model.addAttribute("cityList", cityList);
        model.addAttribute("categorieId", tshow.getCategorieId());
        model.addAttribute("areainfoId", areainfoId);
        model.addAttribute("selectDcategory", "select");
        model.addAttribute("showName", showName);

        if (mode == 0) {
            return "goods/classification";
        } else {
            return "goods/classification1";
        }

    }

    @RequestMapping("/queryByName")
    @ResponseBody
    public List<Tshow> queryByName(Tshow tshow, @RequestParam("name") String name, @RequestParam(value = "mode", defaultValue = "0") Integer mode, @RequestParam(value = "pai", defaultValue = "count") String pai, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "showName", required = false) String showName) {
        String areainfoId = cityService.selectByName(name);
        tshow.setAreainfoId(areainfoId);
        if (showName != null) {
            tshow.setShowName(showName);
        }
        PageInfo<Tshow> pageInfo = tshowService.queryShowByCategorys(tshow, pai, pageNum);
        return pageInfo.getList();
    }


    @RequestMapping("/detail/{showId}")
    public String details(Model model, @PathVariable Long showId) {
        //============查询演出详情信息============//
        model.addAttribute("detailList", tshowService.queryShowDeatilById(showId));
        //============查询热门演出信息============//
        model.addAttribute("hotShowList", tshowService.queryHotShowInfo());
        return "goods/booking";
    }

    @RequestMapping("/toOrder")
    public String toOrder( Model model, @RequestBody ArrayList<Products> productsList, HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Taddress> addressList = taddressService.selectByUserId(user.getId());
        double nums=0;
        int num=0;
        for (Products products : productsList) {
            nums=nums+products.getSubtotal();
            num=num+products.getNum();
        }
        session.setAttribute("nums", nums);
        session.setAttribute("num", num);
        session.setAttribute("productsList", productsList);
        session.setAttribute("addressList", addressList);
        return "goods/settlement";
    }
    @RequestMapping("/getOrder")
    public String getOrder(Model model, HttpSession session,@RequestBody Order order) {
        User user = (User) session.getAttribute("user");
        Tshow tshow=tshowService.queryShowDeatilById(order.getShowId());
        order.setUserId(user.getId());
        order.setTshow(tshow);
        int i = orderService.insertOrder(order);
        String substring = order.getNumber().substring(10);
        session.setAttribute("order",order);
        session.setAttribute("substring",substring);
        session.setAttribute("date",new Date());
        return "goods/payment";
    }

    @RequestMapping("/tradeStatus")
    private String tradeStatus(Model model,ReturnApi returnApi,HttpSession httpSession){
        if(returnApi.getTrade_status().equals("TRADE_SUCCESS")){
           int i= orderService.updateOrder(returnApi.getOut_trade_no());
            User user = (User) httpSession.getAttribute("user");
            List<Order> orderList = orderService.queryOrderInfo(user.getId());
            model.addAttribute("orderList", orderList);
            return "user/order";
        }
        return "";
    }

    @RequestMapping("/selectStatus")
    @ResponseBody
    private boolean selectStatus(@RequestParam("number") String number){
        Order order = orderService.selectStatus(number);
        if(order==null){
            return false;
        }else if(order.getStatus()==1){
            return false;
        }
        return true;
    }



}
