package com.th.market.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by tianheng on 2017/5/19.
 */
public class MarketUtils {
    public static String getProp(String key) {
        InputStream in = MarketUtils.class.getClassLoader().getResourceAsStream("upload.properties");
        Properties prop = new Properties();
        try {
            prop.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return prop.getProperty(key);
    }
}
