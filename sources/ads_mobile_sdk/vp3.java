package ads_mobile_sdk;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.gson.JsonObject;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class vp3 extends j12 {
    public final CoroutineScope g;
    public final CoroutineScope h;
    public final p12 i;
    public final v3 j;
    public final i2 k;
    public final k32 l;
    public boolean m;

    public vp3(CoroutineScope backgroundScope, CoroutineScope uiScope, p12 nativeAdMapper, v3 adEventEmitter, i2 adConfiguration, k32 nativeAdUtil) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(nativeAdMapper, "nativeAdMapper");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        this.g = backgroundScope;
        this.h = uiScope;
        this.i = nativeAdMapper;
        this.j = adEventEmitter;
        this.k = adConfiguration;
        this.l = nativeAdUtil;
    }

    @Override // ads_mobile_sdk.j12
    public final void a(View view, int i) {
    }

    @Override // ads_mobile_sdk.j12
    public final void c() {
    }

    @Override // ads_mobile_sdk.j12
    public final boolean d() {
        return true;
    }

    @Override // ads_mobile_sdk.j12
    public final int e() {
        return 0;
    }

    @Override // ads_mobile_sdk.j12
    public final boolean k() {
        return false;
    }

    @Override // ads_mobile_sdk.j12
    public final void a() {
        this.i.destroy();
    }

    @Override // ads_mobile_sdk.j12
    public final void a(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
    }

    @Override // ads_mobile_sdk.j12
    public final void b(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
    }

    @Override // ads_mobile_sdk.j12
    public final JsonObject b(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        return new JsonObject();
    }

    @Override // ads_mobile_sdk.j12
    public final void a(View clickedView, FrameLayout frameLayout, LinkedHashMap assetViews, ImageView.ScaleType mediaViewScaleType) {
        Intrinsics.checkNotNullParameter(clickedView, "clickedView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        if (this.i.d()) {
            return;
        }
        this.i.a(clickedView);
        BuildersKt__Builders_commonKt.launch$default(this.g, null, null, new qp3(this, null), 3, null);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        if (this.m) {
            if (this.i.b() && this.k.q0 == h2.g) {
                BuildersKt__Builders_commonKt.launch$default(this.g, null, null, new rp3(this, null), 3, null);
            } else {
                this.i.recordImpression();
                BuildersKt__Builders_commonKt.launch$default(this.g, null, null, new sp3(this, null), 3, null);
            }
        }
    }

    @Override // ads_mobile_sdk.j12
    public final JsonObject a(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        return new JsonObject();
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout frameLayout, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // ads_mobile_sdk.j12
    public final void a(WeakReference nativeAdViewContainer, FrameLayout frameLayout, LinkedHashMap assetViews, View.OnTouchListener touchListener, View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(touchListener, "touchListener");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new tp3(this, assetViews, frameLayout, null), 3, null);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout frameLayout, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new up3(frameLayout, this, null), 3, null);
    }
}
