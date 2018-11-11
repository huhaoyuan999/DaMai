package com.controller;

import com.github.pagehelper.PageInfo;
import com.pojo.Tcategorie;
import com.pojo.Tshow;
import com.service.CityService;
import com.service.TcategorieService;
import com.service.TshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    /**
     * 首页加载显示商品内容
     * @param model
     * @return
     */
    @RequestMapping("/index")
    public String index(Model model,Tshow tshow) {
        List<Tcategorie> tcategorieList=tcategorieService.queryAll(tshow.getAreainfoId());
        //============查询分类信息============//
        model.addAttribute("tcategorieList",tcategorieList);
        //============查询演出信息============//
//        model.addAttribute("tshowList",tshowService.queryShowInfoByAreainfoId(tshow.getAreainfoId()));
        //============查询热门城市============//
        model.addAttribute("hotCitys",cityService.queryHotCityInfo());
        model.addAttribute("selectIndex","select");
        //============查询其它城市============//
        model.addAttribute("cityList",cityService.queryAllCityInfo());
        return "forward:/index.jsp";
    }

    /**
     * 根据分类显示商品内容
     * @param model
     * @return
     */
    @RequestMapping("/query")
    public String categories(Model model, Tshow tshow,@RequestParam("name") String name,@RequestParam(value = "mode",defaultValue = "0")Integer mode,@RequestParam(value = "pai",defaultValue = "count")String pai,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum){
        String areainfoId = cityService.selectByName(name);
        tshow.setAreainfoId(areainfoId);
        PageInfo<Tshow> pageInfo = tshowService.queryShowByCategorys(tshow,pai,pageNum);
//        model.addAttribute("showList",showList);
        model.addAttribute("pageInfo",pageInfo);
        List<Tcategorie> tcategorieList=tcategorieService.queryAll(tshow.getAreainfoId());
        //============查询分类信息============//
        model.addAttribute("tcategorieList",tcategorieList);
        //============查询所有城市============//
        model.addAttribute("cityList",cityService.queryAllCityInfo());
        model.addAttribute("categorieId",tshow.getCategorieId());
        model.addAttribute("areainfoId",areainfoId);
        model.addAttribute("selectDcategory","select");
        if(mode==0){
            return "goods/classification";
        }else {
            return "goods/classification1";
        }

    }


    @RequestMapping("/detail/{showId}")
    public String details(Model model, @PathVariable Long showId){
        //============查询演出详情信息============//
        model.addAttribute("detailList",tshowService.queryShowDeatilById(showId));
        //============查询热门演出信息============//
        model.addAttribute("hotShowList",tshowService.queryHotShowInfo());
        return "goods/booking";
    }

}
