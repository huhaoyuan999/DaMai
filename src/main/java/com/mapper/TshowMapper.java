package com.mapper;

import com.pojo.Tshow;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository("tshowMapper")
public interface TshowMapper {

    /**
     * 查询商品信息接口
     * @return
     */
    List<Tshow> queryAll();

    /**
     * 分类查询商品信息接口
     * @param
     * @return
     */
    List<Tshow> queryShowByCategorys(@Param("tshow") Tshow tshow,@Param("pai") String pai);

    /**
     * 根据城市查询商品信息接口
     * @param areainfoId
     * @return
     */
    List<Tshow> queryShowInfoByAreainfoId(@Param("areainfoId") String areainfoId);

    Tshow queryShowDeatilById(@Param("showId") Long showId);

    List<Tshow> queryHotShowInfo();


    /**
     * 根据ID查询商品信息
     *
     * @param showId
     * @return
     */
    Tshow queryShowKey(@Param("showId") Long showId);
}