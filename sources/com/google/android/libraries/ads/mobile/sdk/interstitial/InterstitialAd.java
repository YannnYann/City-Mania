package com.google.android.libraries.ads.mobile.sdk.interstitial;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.ci0;
import ads_mobile_sdk.cm1;
import ads_mobile_sdk.ei0;
import ads_mobile_sdk.ho1;
import ads_mobile_sdk.j53;
import ads_mobile_sdk.jo1;
import ads_mobile_sdk.kz2;
import ads_mobile_sdk.mo1;
import ads_mobile_sdk.mz2;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.zz0;
import android.app.Activity;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface InterstitialAd extends Ad {
    public static final Companion Companion = Companion.a;

    static void load(AdRequest adRequest, AdLoadCallback<InterstitialAd> adLoadCallback) {
        Companion.load(adRequest, adLoadCallback);
    }

    static void loadFromAdResponse(String str, AdLoadCallback<InterstitialAd> adLoadCallback) {
        Companion.loadFromAdResponse(str, adLoadCallback);
    }

    void setAdEventCallback(InterstitialAdEventCallback interstitialAdEventCallback);

    void show(Activity activity);

    public static final class Companion {
        public static final /* synthetic */ Companion a = new Companion();

        public final void loadFromAdResponse(String adResponse, AdLoadCallback<InterstitialAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            mo1.d.getClass();
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new jo1((mz2) new ci0(vf0Var, j53.h, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }

        public final void load(AdRequest adRequest, AdLoadCallback<InterstitialAd> loadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(loadCallback, "adLoadCallback");
            mo1.d.getClass();
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adRequest.getClass();
            j53 j53Var = j53.h;
            Boolean bool = Boolean.FALSE;
            cm1Var.a((Function1) new ho1((kz2) new ei0(vf0Var, adRequest, adRequest, j53Var, bool, bool).i.get(), loadCallback, null));
        }
    }
}
