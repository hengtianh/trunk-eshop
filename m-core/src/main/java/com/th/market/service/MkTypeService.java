package com.th.market.service;

import com.th.market.model.MkType;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tianheng on 2017/5/18.
 */
public interface MkTypeService {
    void saveType(MkType type);

    List<MkType> listTypes();
}
