package com.google.android.libraries.ads.mobile.sdk.nativead;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.cm1;
import ads_mobile_sdk.fi0;
import ads_mobile_sdk.gi0;
import ads_mobile_sdk.h01;
import ads_mobile_sdk.i01;
import ads_mobile_sdk.j53;
import ads_mobile_sdk.jl1;
import ads_mobile_sdk.px2;
import ads_mobile_sdk.tz2;
import ads_mobile_sdk.v01;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.vz2;
import ads_mobile_sdk.zz0;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeAdLoader {
    public static final Companion Companion = Companion.a;

    static void loadFromAdResponse(String str, NativeAdLoaderCallback nativeAdLoaderCallback) {
        Companion.loadFromAdResponse(str, nativeAdLoaderCallback);
    }

    static void load(NativeAdRequest nativeAdRequest, NativeAdLoaderCallback nativeAdLoaderCallback) {
        Companion.load(nativeAdRequest, nativeAdLoaderCallback);
    }

    public static final class Companion {
        public static final /* synthetic */ Companion a = new Companion();

        public static px2 a(NativeAdRequest nativeAdRequest, int i) {
            a01.a.getClass();
            return ((vz2) ((vz2) ((vz2) ((vz2) ((vz2) new gi0(((vf0) zz0.a()).c).a((BaseRequest) nativeAdRequest)).a((AdRequest) nativeAdRequest)).a((NativeRequest) nativeAdRequest).a(nativeAdRequest).a(j53.i)).b(false)).a(false)).a(i).a().a();
        }

        public final void loadFromAdResponse(String adResponse, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new d((tz2) new fi0(vf0Var, j53.i, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }

        public final void load(NativeAdRequest adRequest, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            load(adRequest, 1, adLoadCallback);
        }

        public final void load(NativeAdRequest adRequest, int i, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            v01 v01VarA = jl1.a(adRequest.getNativeAdTypes(), adRequest.getCustomFormatIds(), adRequest.getAdSize(), Integer.valueOf(i));
            if (v01VarA instanceof i01) {
                adLoadCallback.onAdFailedToLoad(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, h01.a((i01) v01VarA), null));
            } else {
                a01.a.getClass();
                ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new c(a(adRequest, i), adLoadCallback, null));
            }
        }
    }
}
