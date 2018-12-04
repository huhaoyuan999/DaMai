package com.service.impl;

import com.mapper.TcategorieMapper;
import com.pojo.Tcategorie;
import com.service.TcategorieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("tcategorieService")
@Transactional(rollbackFor = Exception.class)
public class TcategorieServiceImpl implements TcategorieService {

    //定义DAO接口
    @Autowired
    @Qualifier("tcategorieMapper")
    private TcategorieMapper tcategorieMapper;
    @Override
    public List<Tcategorie> queryAll(String areainfoId) {
        return tcategorieMapper.tcategorieList(areainfoId);
    }

    @Override
    public List<Tcategorie> queryByShowName(String showName) {
        return tcategorieMapper.queryByShowName(showName);
    }
}
