package ads_mobile_sdk;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wv3 implements p12 {
    public final UnifiedNativeAdMapper a;
    public final String b;
    public final ArrayList c;
    public final String d;
    public final uv3 e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final boolean j;
    public final View k;
    public final View l;
    public final Object m;
    public final Bundle n;
    public final boolean o;
    public final boolean p;
    public final float q;

    public wv3(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(unifiedNativeAdMapper, "unifiedNativeAdMapper");
        this.a = unifiedNativeAdMapper;
        this.b = unifiedNativeAdMapper.getHeadline();
        List<NativeAd.Image> images = unifiedNativeAdMapper.getImages();
        if (images != null) {
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(images, 10));
            Iterator<T> it = images.iterator();
            while (it.hasNext()) {
                arrayList.add(new vv3((NativeAd.Image) it.next()));
            }
        } else {
            arrayList = null;
        }
        this.c = arrayList;
        this.d = this.a.getBody();
        NativeAd.Image icon = this.a.getIcon();
        this.e = icon != null ? new uv3(icon) : null;
        this.f = this.a.getCallToAction();
        this.g = this.a.getAdvertiser();
        this.a.getStarRating();
        this.h = this.a.getStore();
        this.i = this.a.getPrice();
        this.a.getVideoController();
        this.j = this.a.getHasVideoContent();
        NativeAd.AdChoicesInfo attributionInfo = this.a.getAttributionInfo();
        if (attributionInfo != null) {
            attributionInfo.getText();
            List<NativeAd.Image> images2 = attributionInfo.getImages();
            if (images2 != null) {
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(images2, 10));
                Iterator<T> it2 = images2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new tv3((NativeAd.Image) it2.next()));
                }
            }
        }
        this.k = this.a.getAdChoicesContent();
        this.l = this.a.getMediaView();
        this.m = this.a.getMediatedAd();
        this.n = this.a.getExtras();
        this.o = this.a.getOverrideImpressionRecording();
        this.p = this.a.getOverrideClickHandling();
        this.q = this.a.getMediaContentAspectRatio();
    }

    @Override // ads_mobile_sdk.p12
    public final ArrayList f() {
        return this.c;
    }

    @Override // ads_mobile_sdk.p12
    public final String getHeadline() {
        return this.b;
    }

    @Override // ads_mobile_sdk.p12
    public final String getBody() {
        return this.d;
    }

    @Override // ads_mobile_sdk.p12
    public final s91 getIcon() {
        return this.e;
    }

    @Override // ads_mobile_sdk.p12
    public final String getCallToAction() {
        return this.f;
    }

    @Override // ads_mobile_sdk.p12
    public final String getAdvertiser() {
        return this.g;
    }

    @Override // ads_mobile_sdk.p12
    public final String getStore() {
        return this.h;
    }

    @Override // ads_mobile_sdk.p12
    public final String getPrice() {
        return this.i;
    }

    @Override // ads_mobile_sdk.p12
    public final boolean getHasVideoContent() {
        return this.j;
    }

    @Override // ads_mobile_sdk.p12
    public final View c() {
        return this.k;
    }

    @Override // ads_mobile_sdk.p12
    public final View a() {
        return this.l;
    }

    @Override // ads_mobile_sdk.p12
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.a.handleClick(view);
    }

    @Override // ads_mobile_sdk.p12
    public final Bundle getExtras() {
        return this.n;
    }

    @Override // ads_mobile_sdk.p12
    public final boolean b() {
        return this.o;
    }

    @Override // ads_mobile_sdk.p12
    public final void b(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.a.untrackView(view);
    }

    @Override // ads_mobile_sdk.p12
    public final boolean d() {
        return this.p;
    }

    @Override // ads_mobile_sdk.p12
    public final float e() {
        return this.q;
    }

    @Override // ads_mobile_sdk.p12
    public final void recordImpression() {
        this.a.recordImpression();
    }

    @Override // ads_mobile_sdk.p12
    public final void destroy() {
        this.a.destroy();
    }

    @Override // ads_mobile_sdk.p12
    public final void a(View containerView, Map clickableAssetViews, Map nonclickableAssetViews) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(clickableAssetViews, "clickableAssetViews");
        Intrinsics.checkNotNullParameter(nonclickableAssetViews, "nonclickableAssetViews");
        this.a.trackViews(containerView, clickableAssetViews, nonclickableAssetViews);
    }
}
