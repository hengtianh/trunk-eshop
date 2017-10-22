package com.th.market.dao;

import com.th.market.model.MkType;

import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
public interface MkTypeDao {
    void saveType(MkType type);

    List<MkType> listTypes();
}
