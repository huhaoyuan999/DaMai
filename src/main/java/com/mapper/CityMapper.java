package com.mapper;

import com.pojo.City;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CityMapper {
    List<City> queryAllCityInfo();

    List<City> queryHotCityInfo();
    City selectById(@Param("cityId") Integer cityId);
    String  selectByName(@Param("name") String name);

}