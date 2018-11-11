package com.controller;

import com.github.pagehelper.PageInfo;
import com.pojo.Tshow;
import com.service.CityService;
import com.service.TcategorieService;
import com.service.TshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 城市控制类
 */
@Controller
@RequestMapping("/city")
public class CityController {

    @Autowired
    private CityService cityService;

    @Autowired
    private TcategorieService tcategorieService;

    @Autowired
    private TshowService tshowService;

    /**
     * 分类信息
     * @param model
     * @return
     */
    @RequestMapping("/categories")
    public String queryAllCityInfo(Model model){
        model.addAttribute("cityList",cityService.queryAllCityInfo());
        model.addAttribute("tcategorieList",tcategorieService.queryAll(null));
        PageInfo<Tshow> pageInfo = tshowService.queryShowByCategorys(new Tshow(),"count",1);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("selectDcategory","select");
        model.addAttribute("categorieId",0);
        model.addAttribute("cityName","全部");
        return "goods/classification";
    }
}
