package com.isharekh.domain.repositories.vision;

import com.isharekh.domain.models.vision.Vision;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by : Ron Rith
 * Create Date: 05/08/2018.
 */
public interface VisionRepository extends PagingAndSortingRepository<Vision,Long> {
}
