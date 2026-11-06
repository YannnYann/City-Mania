package io.bidmachine.iab.vast;

import android.os.Bundle;
import io.bidmachine.iab.vast.processor.url.ErrorCodeUrlProcessor;
import io.bidmachine.iab.vast.processor.url.UrlProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class VastUrlProcessorRegistry {
    public static List a = new a();

    public interface OnUrlReadyCallback {
        void onUrlReady(String url);
    }

    public class a extends ArrayList {
        public a() {
            add(new ErrorCodeUrlProcessor());
        }
    }

    public static String processUrl(String url, Bundle params) {
        if (url == null) {
            return null;
        }
        Iterator it = a.iterator();
        while (it.hasNext()) {
            url = ((UrlProcessor) it.next()).prepare(url, params);
        }
        return url;
    }

    public static void processUrls(List<String> urls, Bundle params, OnUrlReadyCallback callback) {
        if (urls == null || urls.isEmpty() || callback == null) {
            return;
        }
        Iterator<String> it = urls.iterator();
        while (it.hasNext()) {
            callback.onUrlReady(processUrl(it.next(), params));
        }
    }
}
