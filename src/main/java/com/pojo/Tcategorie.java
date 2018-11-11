package com.pojo;

import java.util.List;

/**
 * @date 2018/10/31
 * @author admin
 * 大麦网商品分类实体类
 */
public class Tcategorie {
    private Long categorieId;

    private String categorieName;

    private String categorieShorthand;

    private List<Tshow> tshows;

    public Long getCategorieId() {
        return categorieId;
    }

    public void setCategorieId(Long categorieId) {
        this.categorieId = categorieId;
    }

    public String getCategorieName() {
        return categorieName;
    }

    public void setCategorieName(String categorieName) {
        this.categorieName = categorieName;
    }

    public String getCategorieShorthand() {
        return categorieShorthand;
    }

    public void setCategorieShorthand(String categorieShorthand) {
        this.categorieShorthand = categorieShorthand;
    }

    public List<Tshow> getTshows() {
        return tshows;
    }

    public void setTshows(List<Tshow> tshows) {
        this.tshows = tshows;
    }
}