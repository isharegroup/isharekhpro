package com.isharekh.domain.models.location;

import com.isharekh.domain.models.base.BaseFooter;
import com.isharekh.domain.models.user_security.SecUser;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by : Ron Rith
 * Create Date: 05/08/2018.
 */
@Entity
@Table(name = "td_location")
public class Location extends BaseFooter {
    private Double numX;
    private Double numY;

    public Location(String des, String desEn, String title, String titleEn, SecUser secUser) {
        super(des, desEn, title, titleEn, secUser);
    }

    public Location() {
    }

    @Column(name = "num_x")
    public Double getNumX() {
        return numX;
    }

    public void setNumX(Double numX) {
        this.numX = numX;
    }

    @Column(name = "num_y")
    public Double getNumY() {
        return numY;
    }

    public void setNumY(Double numY) {
        this.numY = numY;
    }
}
