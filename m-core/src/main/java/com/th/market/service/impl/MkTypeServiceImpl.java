package com.th.market.service.impl;

import com.th.market.dao.MkTypeDao;
import com.th.market.model.MkType;
import com.th.market.service.MkTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tianheng on 2017/5/18.
 */
@Service
public class MkTypeServiceImpl implements MkTypeService {

    @Autowired
    private MkTypeDao typeDao;

    public void saveType(MkType type) {
        typeDao.saveType(type);
    }

    public List<MkType> listTypes() {
        List<MkType> typeList = typeDao.listTypes();
        return typeList;
    }
}
