package com.vungle.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.h;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.k2;
import com.vungle.ads.internal.o1;
import com.vungle.ads.internal.p1;
import com.vungle.ads.internal.presenter.b;
import com.vungle.ads.internal.presenter.w;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.r;
import com.vungle.ads.internal.signals.j;
import com.vungle.ads.internal.ui.view.MediaView;
import com.vungle.ads.internal.ui.view.k;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.internal.util.z;
import com.vungle.ads.nativead.NativeVideoOptions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NativeAd extends BaseAd {
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    public static final Companion Companion = new Companion(null);
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    public int A;
    public final k2 B;
    public final AtomicBoolean C;
    public final NativeAd$adPlayCallback$1 D;
    public ImageView t;
    public MediaView u;
    public FrameLayout v;
    public Collection w;
    public k x;
    public int y;
    public final o1 z;

    @Retention(RetentionPolicy.RUNTIME)
    public @interface AdOptionsPosition {
    }

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.vungle.ads.NativeAd$adPlayCallback$1] */
    public NativeAd(Context context, String str, AdConfig adConfig) {
        super(context, str, adConfig);
        this.y = 1;
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.NativeAdInternal");
        this.z = (o1) adInternal$vungle_ads_release;
        this.B = new k2(Sdk.SDKMetric.SDKMetricType.NATIVE_AD_DISPLAY_DURATION);
        this.C = new AtomicBoolean(false);
        this.D = new b() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.b
            public void onAdClick(String str2) throws Throwable {
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdClick$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(nativeAd);
                        }
                    }
                });
                this.a.getDisplayToClickMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 displayToClickMetric$vungle_ads_release = this.a.getDisplayToClickMetric$vungle_ads_release();
                analyticsClient.a(displayToClickMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), displayToClickMetric$vungle_ads_release.b);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdEnd(String str2) throws Throwable {
                if (this.a.getAdInternal$vungle_ads_release().i()) {
                    this.a.getAdInternal$vungle_ads_release().a(h.c);
                }
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdEnd$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(nativeAd);
                        }
                    }
                });
                this.a.getShowToCloseMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 showToCloseMetric$vungle_ads_release = this.a.getShowToCloseMetric$vungle_ads_release();
                analyticsClient.a(showToCloseMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), showToCloseMetric$vungle_ads_release.b);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdImpression(String str2) throws Throwable {
                this.a.getAdInternal$vungle_ads_release().a(h.e);
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdImpression$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(nativeAd);
                        }
                    }
                });
                this.a.getPresentToDisplayMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 presentToDisplayMetric$vungle_ads_release = this.a.getPresentToDisplayMetric$vungle_ads_release();
                analyticsClient.a(presentToDisplayMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), presentToDisplayMetric$vungle_ads_release.b);
                this.a.getDisplayToClickMetric$vungle_ads_release().e();
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdLeftApplication(String str2) throws Throwable {
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdLeftApplication$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(nativeAd);
                        }
                    }
                });
                AnalyticsClient.a(AnalyticsClient.INSTANCE, this.a.getLeaveApplicationMetric$vungle_ads_release(), this.a.getLogEntry$vungle_ads_release(), 4);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdRewarded(String str2) {
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdStart(String str2) throws Throwable {
                this.a.getAdInternal$vungle_ads_release().a(h.d);
                j signalManager$vungle_ads_release = this.a.getSignalManager$vungle_ads_release();
                synchronized (signalManager$vungle_ads_release) {
                    signalManager$vungle_ads_release.h.f++;
                }
                this.a.getAdInternal$vungle_ads_release().l.d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 p1Var = this.a.getAdInternal$vungle_ads_release().l;
                analyticsClient.a(p1Var, this.a.getLogEntry$vungle_ads_release(), p1Var.b);
                this.a.getPresentToDisplayMetric$vungle_ads_release().e();
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdStart$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(nativeAd);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onFailure(final VungleError error) throws Throwable {
                Intrinsics.checkNotNullParameter(error, "error");
                this.a.getAdInternal$vungle_ads_release().a(h.g);
                Handler handler = z.a;
                final NativeAd nativeAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onFailure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(nativeAd, error);
                        }
                    }
                });
                this.a.getShowToFailMetric$vungle_ads_release().d();
                AnalyticsClient.INSTANCE.a(this.a.getShowToFailMetric$vungle_ads_release(), this.a.getLogEntry$vungle_ads_release(), error.getCode() + '-' + error.getErrorMessage());
            }
        };
    }

    public static final void a(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.z.w();
    }

    @AdOptionsPosition
    public static /* synthetic */ void getAdOptionsPosition$annotations() {
    }

    public final String adOptionsPositionMeta$vungle_ads_release() {
        int i = this.y;
        return i != 0 ? i != 2 ? i != 3 ? "top_right" : "bottom_right" : "bottom_left" : "top_left";
    }

    public final String getAdBodyText() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        return (linkedHashMap == null || (str = (String) linkedHashMap.get("APP_DESCRIPTION")) == null) ? "" : str;
    }

    public final String getAdCallToActionText() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        return (linkedHashMap == null || (str = (String) linkedHashMap.get("CTA_BUTTON_TEXT")) == null) ? "" : str;
    }

    public final int getAdOptionsPosition() {
        return this.y;
    }

    public final String getAdSponsoredText() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        return (linkedHashMap == null || (str = (String) linkedHashMap.get("SPONSORED_BY")) == null) ? "" : str;
    }

    public final Double getAdStarRating() {
        return this.z.m();
    }

    public final String getAdTitle() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        return (linkedHashMap == null || (str = (String) linkedHashMap.get("APP_NAME")) == null) ? "" : str;
    }

    public final String getAppIcon() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        return (linkedHashMap == null || (str = (String) linkedHashMap.get("APP_ICON")) == null) ? "" : str;
    }

    public final float getMediaAspectRatio() {
        return this.z.z;
    }

    public final MediaView getMediaView() {
        return this.u;
    }

    public final k2 getNativeDisplayDurationMetric$vungle_ads_release() {
        return this.B;
    }

    public final NativeVideoOptions getVideoOptions() {
        return this.z.q();
    }

    public final boolean hasCallToAction() {
        String str;
        LinkedHashMap linkedHashMap = this.z.u;
        if (linkedHashMap == null || (str = (String) linkedHashMap.get("CTA_BUTTON_URL")) == null) {
            str = "";
        }
        return str.length() > 0;
    }

    public final boolean hasVideoContent() {
        return this.z.r();
    }

    public final void performCTA() {
        String str;
        o1 o1Var = this.z;
        w wVar = o1Var.t;
        if (wVar != null) {
            LinkedHashMap linkedHashMap = o1Var.u;
            if (linkedHashMap == null || (str = (String) linkedHashMap.get("CTA_BUTTON_URL")) == null) {
                str = "";
            }
            wVar.a("download", (String) null, str);
        }
    }

    public final void registerViewForInteraction(FrameLayout rootView, MediaView mediaView, ImageView imageView, Collection<? extends View> collection) throws Throwable {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        boolean z = v.a;
        StringBuilder sbA = l.a("registerViewForInteraction ");
        sbA.append(hashCode());
        u.c("NativeAd", sbA.toString());
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API);
        StringBuilder sbA2 = l.a("ad_options_position: ");
        sbA2.append(adOptionsPositionMeta$vungle_ads_release());
        j2Var.a(sbA2.toString());
        AnalyticsClient.a(analyticsClient, j2Var, getLogEntry$vungle_ads_release(), 4);
        this.A++;
        this.B.e();
        getResponseToShowMetric$vungle_ads_release().d();
        AnalyticsClient.a(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release());
        getAdInternal$vungle_ads_release().g().e();
        getShowToFailMetric$vungle_ads_release().e();
        getShowToCloseMetric$vungle_ads_release().e();
        if (getAdInternal$vungle_ads_release().i()) {
            if (Intrinsics.areEqual(this.v, rootView)) {
                u.a("NativeAd", "no-op when re-play it on the same root view");
                return;
            }
            unregisterView();
        }
        this.C.set(false);
        VungleError vungleErrorA = getAdInternal$vungle_ads_release().a(true);
        if (vungleErrorA != null) {
            StringBuilder sbA3 = l.a("registerViewForInteraction can NOT play. ");
            sbA3.append(hashCode());
            sbA3.append(' ');
            sbA3.append(vungleErrorA);
            u.c("NativeAd", sbA3.toString());
            if (getAdInternal$vungle_ads_release().a(vungleErrorA.getCode())) {
                getAdInternal$vungle_ads_release().a(h.g);
            }
            BaseAdListener adListener = getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this, vungleErrorA);
                return;
            }
            return;
        }
        if (!this.z.k()) {
            VungleError vungleErrorLogError$vungle_ads_release = new NativeAssetError("privacy icon or AI label is required to display.").setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release();
            getAdInternal$vungle_ads_release().a(h.g);
            BaseAdListener adListener2 = getAdListener();
            if (adListener2 != null) {
                adListener2.onAdFailedToPlay(this, vungleErrorLogError$vungle_ads_release);
                return;
            }
            return;
        }
        this.v = rootView;
        this.u = mediaView;
        this.t = imageView;
        this.w = collection;
        this.z.a(rootView, this.D);
        if (this.x == null) {
            this.x = new k(getContext());
        }
        if (collection == null) {
            collection = CollectionsKt__CollectionsJVMKt.listOf(mediaView);
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.NativeAd$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAd.a(this.f$0, view);
                }
            });
        }
        k kVar = this.x;
        if (kVar != null) {
            kVar.a(rootView, this.y, this.z);
        }
        this.z.a(mediaView);
        mediaView.a(this.z);
        this.z.b(imageView);
        this.z.a(rootView, getAdConfig().getWatermark$vungle_ads_release());
        getAdInternal$vungle_ads_release().g().d();
        AnalyticsClient.a(AnalyticsClient.INSTANCE, getAdInternal$vungle_ads_release().g(), getLogEntry$vungle_ads_release());
        getAdInternal$vungle_ads_release().h().e();
    }

    public final void setAdOptionsPosition(int i) {
        this.y = i;
    }

    public final void unregisterView() throws Throwable {
        Object objM2760constructorimpl;
        boolean z = v.a;
        StringBuilder sbA = l.a("unregisterView  ");
        sbA.append(hashCode());
        u.c("NativeAd", sbA.toString());
        if (this.C.getAndSet(true)) {
            return;
        }
        this.B.d();
        this.B.a(String.valueOf(this.A));
        AnalyticsClient.a(AnalyticsClient.INSTANCE, this.B, getLogEntry$vungle_ads_release(), 4);
        Collection collection = this.w;
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setOnClickListener(null);
            }
        }
        this.w = null;
        this.v = null;
        MediaView mediaView = this.u;
        if (mediaView != null) {
            mediaView.a();
        }
        this.u = null;
        k kVar = this.x;
        if (kVar != null) {
            kVar.a();
        }
        this.x = null;
        this.z.l();
        try {
            Result.Companion companion = Result.Companion;
            ImageView imageView = this.t;
            Drawable drawable = imageView != null ? imageView.getDrawable() : null;
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z2 = v.a;
            StringBuilder sbA2 = l.a("error msg: ");
            sbA2.append(thM2763exceptionOrNullimpl.getLocalizedMessage());
            u.c("NativeAd", sbA2.toString());
        }
        ImageView imageView2 = this.t;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
        }
        this.t = null;
    }

    @Override // com.vungle.ads.BaseAd
    public o1 constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new o1(context);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAd(Context context, String placementId) {
        this(context, placementId, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
    }
}
