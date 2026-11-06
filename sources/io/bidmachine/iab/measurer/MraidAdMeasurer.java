package io.bidmachine.iab.measurer;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public interface MraidAdMeasurer extends AdMeasurer<WebView> {
    String prepareCreativeForMeasure(String html);
}
