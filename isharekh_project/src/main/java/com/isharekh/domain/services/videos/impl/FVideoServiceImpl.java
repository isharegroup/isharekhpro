package com.isharekh.domain.services.videos.impl;

import com.isharekh.domain.models.videos.Video;
import com.isharekh.domain.repositories.video.VideoRepository;
import com.isharekh.domain.services.videos.FVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by : Ron Rith
 * Create Date: 04/27/2018.
 */
@Service
public class FVideoServiceImpl implements FVideoService {
    @Autowired
    private VideoRepository videoRepository;

    @Override
    public List getAll() {
        return (List<Video>) videoRepository.findAll();
    }

    @Override
    public void save(Object o) {
        Video video = (Video) o;
        videoRepository.save(video);
    }

    @Override
    public List getAllTShort() {
        return null;
    }

    @Override
    public Object getById(Long id) {
        return (Object) videoRepository.findOne(id);
    }

    @Override
    public void delete(Long id) {
        videoRepository.delete(id);
    }

    @Override
    public void update(Object o, Long id) {
        Video video = (Video) o;
        video.setId(id);
        videoRepository.save(video);
    }
}
