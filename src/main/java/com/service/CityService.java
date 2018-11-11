package com.service;

import com.pojo.City;

import java.util.List;

public interface CityService {
    List<City> queryAllCityInfo();

    List<City> queryHotCityInfo();
    String selectByName(String name);
}
