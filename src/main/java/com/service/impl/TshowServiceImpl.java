package com.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.TshowMapper;
import com.pojo.Tshow;
import com.service.TshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("tshowService")
@Transactional(rollbackFor = Exception.class)
public class TshowServiceImpl implements TshowService {

    //定义DAO接口
    @Autowired
    @Qualifier("tshowMapper")
    private TshowMapper tshowMapper;

    @Override
    public List<Tshow> queryAll() {
        return tshowMapper.queryAll();
    }

    @Override
    public PageInfo<Tshow> queryShowByCategorys(Tshow tshow, String pai,int pageNum) {
        PageHelper.startPage(pageNum,60);
        List<Tshow> list=tshowMapper.queryShowByCategorys(tshow,pai);
        PageInfo<Tshow> pageInfo=new PageInfo<Tshow>(list);
        return pageInfo;
    }

    @Override
    public List<Tshow> queryShowInfoByAreainfoId(String areainfoId) {
        return tshowMapper.queryShowInfoByAreainfoId(areainfoId);
    }

    @Override
    public Tshow queryShowDeatilById(Long showId) {
        return tshowMapper.queryShowDeatilById(showId);
    }


    @Override
    public List<Tshow> queryHotShowInfo() {
        return tshowMapper.queryHotShowInfo();
    }
}
