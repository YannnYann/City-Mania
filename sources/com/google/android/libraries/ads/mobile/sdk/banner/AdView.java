package com.google.android.libraries.ads.mobile.sdk.banner;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.bd;
import ads_mobile_sdk.bz2;
import ads_mobile_sdk.cd;
import ads_mobile_sdk.cm1;
import ads_mobile_sdk.cz2;
import ads_mobile_sdk.f01;
import ads_mobile_sdk.j53;
import ads_mobile_sdk.qo;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.vo;
import ads_mobile_sdk.xh0;
import ads_mobile_sdk.zz0;
import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.common.base.Splitter;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes3.dex */
public final class AdView extends FrameLayout {
    public BannerAd a;
    public AdSize b;
    public Channel c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void a(AdView adView, BannerAd bannerAd) {
        Context context = adView.getContext();
        adView.a(bannerAd, context instanceof Activity ? (Activity) context : null);
    }

    public final void b() {
        AdSize adSize = this.b;
        if (this.a == null && adSize != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int height = adSize.getHeight();
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
            setMinimumHeight((int) Math.ceil(TypedValue.applyDimension(1, height, r1)));
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            int width = adSize.getWidth();
            Intrinsics.checkNotNullParameter(context2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "<this>");
            Intrinsics.checkNotNullExpressionValue(context2.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
            setMinimumWidth((int) Math.ceil(TypedValue.applyDimension(1, width, r1)));
        } else {
            setMinimumHeight(0);
            setMinimumWidth(0);
        }
        requestLayout();
    }

    public final void destroy() {
        BannerAd bannerAd = this.a;
        unregisterBannerAd();
        if (bannerAd != null) {
            bannerAd.destroy();
        }
    }

    public final BannerAd getBannerAd() {
        return this.a;
    }

    public final void loadAd(BannerAdRequest adRequest, AdLoadCallback<BannerAd> adLoadCallback) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        a();
        bd adLoadCallback2 = new bd(adLoadCallback, this);
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadCallback2, "adLoadCallback");
        a01.a.getClass();
        cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
        xh0 xh0Var = new xh0(((vf0) zz0.a()).c);
        xh0Var.d = j53.f;
        cz2 cz2VarA = ((bz2) ((bz2) ((bz2) ((bz2) xh0Var.a((AdRequest) adRequest)).a((BaseRequest) adRequest)).a((BannerRequest) adRequest).a(adRequest).b(false)).a(false)).a();
        cm1Var.a((Function1) new qo(cz2VarA, adLoadCallback2, this, true, null));
        this.c = cz2VarA.c();
    }

    public final void loadFromAdResponse(String adResponse, AdLoadCallback<BannerAd> adLoadCallback) {
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        a();
        this.c = vo.a(adResponse, new bd(adLoadCallback, this));
    }

    public final BannerAd unregisterBannerAd() {
        BannerAd bannerAd = this.a;
        this.a = null;
        removeAllViews();
        a();
        b();
        return bannerAd;
    }

    public final void a(BannerAd bannerAd, Activity activity) {
        removeAllViews();
        this.a = bannerAd;
        this.b = bannerAd.getAdSize();
        b();
        View view = activity == null ? bannerAd.getView() : bannerAd.getView(activity);
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            String adapterClassName = bannerAd.getResponseInfo().getAdapterClassName();
            Splitter splitter = f01.a;
            f01.c("Banner view provided from " + adapterClassName + " already has a parent view. Removing its old parent.", null);
            ((ViewGroup) parent).removeView(view);
        }
        addView(view);
    }

    public final void a() {
        Channel channel = this.c;
        if (channel != null) {
            a01.a.getClass();
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ((vf0) zz0.a()).u.get(), null, null, new cd(channel, null), 3, null);
        }
    }
}
