package com.ironsource;

import android.app.Activity;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface J8 {

    public interface a {
        void onNativeAdClicked();

        void onNativeAdLoadFailed(String str);

        void onNativeAdLoadSuccess(H8 h8);

        void onNativeAdShown();
    }

    void a();

    void a(Activity activity, JSONObject jSONObject);

    void a(a aVar);

    void a(K8 k8);

    a b();

    H8 c();
}
