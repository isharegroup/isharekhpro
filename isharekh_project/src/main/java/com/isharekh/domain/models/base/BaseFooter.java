package com.isharekh.domain.models.base;

import com.isharekh.domain.models.user_security.SecUser;

import javax.persistence.*;

/**
 * Created by : Ron Rith
 * Create Date: 05/08/2018.
 */
@MappedSuperclass
public class BaseFooter extends BaseEntity {
    private String des;
    private String desEn;
    private String title;
    private String titleEn;
    private SecUser secUser;

    public BaseFooter(String des, String desEn, String title, String titleEn, SecUser secUser) {
        this.des = des;
        this.desEn = desEn;
        this.title = title;
        this.titleEn = titleEn;
        this.secUser = secUser;
    }

    public BaseFooter() {
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    @Column(name = "des_en")
    public String getDesEn() {
        return desEn;
    }

    public void setDesEn(String desEn) {
        this.desEn = desEn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "title_en")
    public String getTitleEn() {
        return titleEn;
    }

    public void setTitleEn(String titleEn) {
        this.titleEn = titleEn;
    }

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "sec_user_id")
    public SecUser getSecUser() {
        return secUser;
    }

    public void setSecUser(SecUser secUser) {
        this.secUser = secUser;
    }
}
