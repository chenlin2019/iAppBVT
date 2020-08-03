package com.hogwarts.androidui;

import com.hogwarts.base.AndroidUIBase;
import com.hogwarts.base.AndroidUITasks;
import com.hogwarts.base.Tools;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class AppsFlyerBVT extends AndroidUIBase {
    private Logger logger = Logger.getLogger(AppsFlyerBVT.class);

    @Test
    public void runTest() throws Exception {
        testcaseName = "AppsFlyer BVT测试";
        logger.info("开始\"" + testcaseName + "\"的测试");
        Assertions.assertTrue(AndroidUITasks.isRecordEvenBtnExist(driver), "验证app已经启动成功，并且页面按钮元素可以被正确定位");
        Tools.wait(2);
    }
}
