package com.service;

import com.github.pagehelper.PageInfo;
import com.pojo.Tshow;

import java.util.List;

public interface TshowService {

    List<Tshow> queryAll();

    PageInfo<Tshow> queryShowByCategorys(Tshow tshow, String pai,int pageNum);

    List<Tshow> queryShowInfoByAreainfoId(String areainfoId);

    Tshow queryShowDeatilById(Long showId);

    List<Tshow> queryHotShowInfo();
}
