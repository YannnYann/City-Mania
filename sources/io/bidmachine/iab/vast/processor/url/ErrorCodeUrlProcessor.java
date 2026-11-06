package io.bidmachine.iab.vast.processor.url;

import android.os.Bundle;
import android.text.TextUtils;
import io.bidmachine.iab.vast.VastLog;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorCodeUrlProcessor implements UrlProcessor {
    @Override // io.bidmachine.iab.vast.processor.url.UrlProcessor
    public String prepare(String url, Bundle params) {
        int i;
        if (!TextUtils.isEmpty(url) && params != null && params.containsKey("params_error_code") && (i = params.getInt("params_error_code", -1)) > -1) {
            VastLog.d("VastAdUrlProcessor", "Before prepare url: %s", url);
            if (url.contains("[ERRORCODE]")) {
                url = url.replace("[ERRORCODE]", String.valueOf(i));
            }
            if (url.contains("%5BERRORCODE%5D")) {
                url = url.replace("%5BERRORCODE%5D", String.valueOf(i));
            }
            VastLog.d("VastAdUrlProcessor", "After prepare url: %s", url);
        }
        return url;
    }
}
