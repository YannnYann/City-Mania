package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;

/* JADX INFO: loaded from: classes3.dex */
public interface InitializationCompleteCallback {
    void onInitializationFailed(AdError adError);

    void onInitializationFailed(String str);

    void onInitializationSucceeded();
}
