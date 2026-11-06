package com.google.android.libraries.ads.mobile.sdk.rewarded;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.cm1;
import ads_mobile_sdk.j53;
import ads_mobile_sdk.ki0;
import ads_mobile_sdk.mi0;
import ads_mobile_sdk.o03;
import ads_mobile_sdk.p63;
import ads_mobile_sdk.q03;
import ads_mobile_sdk.r63;
import ads_mobile_sdk.u63;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.zz0;
import android.app.Activity;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface RewardedAd extends Ad {
    public static final Companion Companion = Companion.a;

    static void load(AdRequest adRequest, AdLoadCallback<RewardedAd> adLoadCallback) {
        Companion.load(adRequest, adLoadCallback);
    }

    static void loadFromAdResponse(String str, AdLoadCallback<RewardedAd> adLoadCallback) {
        Companion.loadFromAdResponse(str, adLoadCallback);
    }

    Bundle getAdMetadata();

    RewardItem getRewardItem();

    void setAdEventCallback(RewardedAdEventCallback rewardedAdEventCallback);

    void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener);

    public static final class Companion {
        public static final /* synthetic */ Companion a = new Companion();

        public final void loadFromAdResponse(String adResponse, AdLoadCallback<RewardedAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            u63.d.getClass();
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new r63((q03) new ki0(vf0Var, j53.j, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }

        public final void load(AdRequest adRequest, AdLoadCallback<RewardedAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            u63.d.getClass();
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adRequest.getClass();
            j53 j53Var = j53.j;
            Boolean bool = Boolean.FALSE;
            cm1Var.a((Function1) new p63((o03) new mi0(vf0Var, adRequest, adRequest, j53Var, bool, bool).i.get(), adLoadCallback, null));
        }
    }
}
