package com.isharekh.domain.models.videos;

import com.isharekh.domain.models.base.BaseEntity;
import com.isharekh.domain.models.user_security.SecUser;

import javax.persistence.*;

/**
 * Created by Rith on 5/20/2018.
 */
@Entity
@Table(name = "td_video_sd")
public class VideoSD extends BaseEntity{

    private String des;

    private String desEn;

    private Video video;

    private SecUser secUser;

    public VideoSD(String des, String desEn) {
        this.des = des;
        this.desEn = desEn;
    }

    public VideoSD() {
    }

    @Column(name = "des",length = 700)
    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    @Column(name = "des_en",length = 700)
    public String getDesEn() {
        return desEn;
    }

    public void setDesEn(String desEn) {
        this.desEn = desEn;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @PrimaryKeyJoinColumn
    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
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
