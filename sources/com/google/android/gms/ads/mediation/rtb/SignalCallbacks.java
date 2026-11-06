package com.google.android.gms.ads.mediation.rtb;

import com.google.android.gms.ads.AdError;

/* JADX INFO: loaded from: classes3.dex */
public interface SignalCallbacks {
    void onFailure(AdError adError);

    void onFailure(String str);

    void onSuccess(String str);
}
