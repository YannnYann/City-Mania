package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.NativeAd;
import com.unity3d.services.UnityAdsConstants;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NativeAdMapper {
    private String a;
    private List b;
    private String c;
    private NativeAd.Image d;
    private String e;
    private String f;
    private Double g;
    private String h;
    private String i;
    private VideoController j;
    private boolean k;
    private NativeAd.AdChoicesInfo l;
    private View m;
    private View n;
    private Object o;
    private Bundle p;
    private boolean q;
    private boolean r;
    private float s;

    public NativeAdMapper(String str, List<? extends NativeAd.Image> list, String str2, NativeAd.Image image, String str3, String str4, Double d, String str5, String str6, VideoController videoController, boolean z, NativeAd.AdChoicesInfo adChoicesInfo, View view, View view2, Object obj, Bundle extras, boolean z2, boolean z3, float f) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = image;
        this.e = str3;
        this.f = str4;
        this.g = d;
        this.h = str5;
        this.i = str6;
        this.j = videoController;
        this.k = z;
        this.l = adChoicesInfo;
        this.m = view;
        this.n = view2;
        this.o = obj;
        this.p = extras;
        this.q = z2;
        this.r = z3;
        this.s = f;
    }

    public void destroy() {
    }

    public final View getAdChoicesContent() {
        return this.m;
    }

    public final String getAdvertiser() {
        return this.f;
    }

    public final NativeAd.AdChoicesInfo getAttributionInfo() {
        return this.l;
    }

    public final String getBody() {
        return this.c;
    }

    public final String getCallToAction() {
        return this.e;
    }

    public float getCurrentTime() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public float getDuration() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final Bundle getExtras() {
        return this.p;
    }

    public final String getHeadline() {
        return this.a;
    }

    public final NativeAd.Image getIcon() {
        return this.d;
    }

    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    public final float getMediaContentAspectRatio() {
        return this.s;
    }

    public final Object getMediatedAd() {
        return this.o;
    }

    public final View getMediatedMediaView() {
        return this.n;
    }

    public final boolean getOverrideClickHandling() {
        return this.r;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.q;
    }

    public final String getPrice() {
        return this.i;
    }

    public final Double getStarRating() {
        return this.g;
    }

    public final String getStore() {
        return this.h;
    }

    public final VideoController getVideoController() {
        return this.j;
    }

    public void handleClick(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public final boolean hasVideoContent() {
        return this.k;
    }

    public void recordImpression() {
    }

    public final void setAdChoicesContent(View view) {
        this.m = view;
    }

    public final void setAdvertiser(String str) {
        this.f = str;
    }

    public final void setAttributionInfo(NativeAd.AdChoicesInfo adChoicesInfo) {
        this.l = adChoicesInfo;
    }

    public final void setBody(String str) {
        this.c = str;
    }

    public final void setCallToAction(String str) {
        this.e = str;
    }

    public final void setExtras(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "<set-?>");
        this.p = bundle;
    }

    public final void setHasVideoContent(boolean z) {
        this.k = z;
    }

    public final void setHeadline(String str) {
        this.a = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.d = image;
    }

    public final void setImages(List<? extends NativeAd.Image> list) {
        this.b = list;
    }

    public final void setMediaContentAspectRatio(float f) {
        this.s = f;
    }

    public final void setMediaView(View mediaView) {
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        this.n = mediaView;
    }

    public final void setMediatedAd(Object obj) {
        this.o = obj;
    }

    public final void setMediatedMediaView(View view) {
        this.n = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.r = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.q = z;
    }

    public final void setPrice(String str) {
        this.i = str;
    }

    public final void setStarRating(Double d) {
        this.g = d;
    }

    public final void setStore(String str) {
        this.h = str;
    }

    public final void setVideoController(VideoController videoController) {
        this.j = videoController;
    }

    public void trackViews(View containerView, Map<String, View> clickableAssetViews, Map<String, View> nonclickableAssetViews) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(clickableAssetViews, "clickableAssetViews");
        Intrinsics.checkNotNullParameter(nonclickableAssetViews, "nonclickableAssetViews");
    }

    public void untrackView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public /* synthetic */ NativeAdMapper(int i) {
        this(null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, new Bundle(), false, false, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public NativeAdMapper() {
        this(0);
    }
}
