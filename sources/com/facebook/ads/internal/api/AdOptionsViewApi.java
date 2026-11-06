package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.AdClosedListener;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public interface AdOptionsViewApi extends AdComponentViewApiProvider {
    void setIconColor(int i);

    void setIconSizeDp(int i);

    void setOnAdClosedListener(AdClosedListener adClosedListener);

    void setSingleIcon(boolean z);
}
