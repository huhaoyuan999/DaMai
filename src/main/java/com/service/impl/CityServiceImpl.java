package com.service.impl;

import com.mapper.CityMapper;
import com.pojo.City;
import com.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cityService")
public class CityServiceImpl implements CityService {

    @Autowired
    private CityMapper cityMapper;

    @Override
    public List<City> queryAllCityInfo() {
        return cityMapper.queryAllCityInfo();
    }

    @Override
    public List<City> queryByShowName(String showName) {
        return cityMapper.queryByShowName(showName);
    }

    @Override
    public List<City> queryHotCityInfo() {
        return cityMapper.queryHotCityInfo();
    }

    @Override
    public String selectByName(String name) {
        return cityMapper.selectByName(name);
    }
}
