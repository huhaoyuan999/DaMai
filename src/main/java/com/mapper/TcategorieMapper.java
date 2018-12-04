package com.mapper;

import com.pojo.Tcategorie;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("tcategorieMapper")
public interface TcategorieMapper {


    /**
     * 查询所有商品分类信息
     * @return
     */
    List<Tcategorie> tcategorieList(@Param("areainfoId") String areainfoId);

     Tcategorie selectById(@Param("categorieId") Long categorieId);

    List<Tcategorie> queryByShowName(@Param("showName") String showName);
}