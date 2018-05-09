package com.isharekh.domain.repositories.about;

import com.isharekh.domain.models.about.About;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by : Ron Rith
 * Create Date: 05/08/2018.
 */
public interface AboutRepository extends PagingAndSortingRepository<About,Long> {
}
