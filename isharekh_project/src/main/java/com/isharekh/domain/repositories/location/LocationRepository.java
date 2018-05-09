package com.isharekh.domain.repositories.location;

import com.isharekh.domain.models.location.Location;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by : Ron Rith
 * Create Date: 05/09/2018.
 */
public interface LocationRepository extends PagingAndSortingRepository<Location,Long> {
}
