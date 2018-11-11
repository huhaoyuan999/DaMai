package com.mapper;

import com.pojo.Tareainfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("tareainfoMapper")
public interface TareainfoMapper {

    /**
     * 根据地址表主键查询
     *
     * @param areainfoId
     * @return
     */
    Tareainfo selectByPrimaryKey(@Param("areainfoId") String areainfoId);

    /**
     * 根据父级分类查询信息
     *
     * @param parentId
     * @return
     */
    List<Tareainfo> queryTareainfoList(@Param("parentId") String parentId);

}