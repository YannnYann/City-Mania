package ads_mobile_sdk;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class bv0 extends j12 {
    public final Gson A;
    public final ur3 B;
    public final eo2 C;
    public Point D;
    public Point E;
    public long F;
    public long G;
    public final AtomicBoolean H;
    public final JsonObject g;
    public final CoroutineScope h;
    public final CoroutineScope i;
    public final rb j;
    public final s02 k;
    public final k32 l;
    public final NativeRequest m;
    public final g83 n;
    public final ks3 o;
    public final tx p;
    public final q52 q;
    public final vf2 r;
    public final fm0 s;
    public final n72 t;
    public final t72 u;
    public final j53 v;
    public final i2 w;
    public final ja1 x;
    public final ex0 y;
    public final s93 z;

    public bv0(JsonObject nativeAdJson, CoroutineScope uiScope, CoroutineScope backgroundScope, rb adSpamClient, s02 nativeAdAssets, k32 nativeAdUtil, NativeRequest nativeRequest, g83 rootTraceCreator, ks3 traceMetaSet, tx clock, q52 nativeJavascriptEngine, vf2 omidMonitor, fm0 delegatingAdEventListener, d63 urlPinger, v3 adEventEmitter, n72 nativeOnePointFiveOverlayFactory, t72 nativePolicyValidatorOverlayFactory, j53 requestType, i2 adConfiguration, ja1 initializationConfigWrapper, ex0 flags, s93 safeBrowsingManager, Gson gson, ur3 traceLogger, eo2 placementIdWrapper) {
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(delegatingAdEventListener, "delegatingAdEventListener");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(nativeOnePointFiveOverlayFactory, "nativeOnePointFiveOverlayFactory");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorOverlayFactory, "nativePolicyValidatorOverlayFactory");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.g = nativeAdJson;
        this.h = uiScope;
        this.i = backgroundScope;
        this.j = adSpamClient;
        this.k = nativeAdAssets;
        this.l = nativeAdUtil;
        this.m = nativeRequest;
        this.n = rootTraceCreator;
        this.o = traceMetaSet;
        this.p = clock;
        this.q = nativeJavascriptEngine;
        this.r = omidMonitor;
        this.s = delegatingAdEventListener;
        this.t = nativeOnePointFiveOverlayFactory;
        this.u = nativePolicyValidatorOverlayFactory;
        this.v = requestType;
        this.w = adConfiguration;
        this.x = initializationConfigWrapper;
        this.y = flags;
        this.z = safeBrowsingManager;
        this.A = gson;
        this.B = traceLogger;
        this.C = placementIdWrapper;
        this.D = new Point();
        this.E = new Point();
        new AtomicBoolean(false);
        this.H = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.j12
    public final void a() {
    }

    @Override // ads_mobile_sdk.j12
    public final void c() {
        o32 o32Var = (o32) this.c.get();
        if (o32Var == null) {
            f01.a("Ad should be associated with an ad view before click happens.", null, null, 6);
            return;
        }
        g83 g83Var = this.n;
        ks3 ks3Var = this.o;
        k32 k32Var = this.l;
        p32 p32Var = (p32) o32Var;
        FrameLayout frameLayoutC = p32Var.c();
        Map mapB = p32Var.b();
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = ImageView.ScaleType.CENTER_INSIDE;
        }
        g32 g32VarA = f32.a(g83Var, ks3Var, k32Var, frameLayoutC, mapB, scaleTypeE);
        String strA = a((View) this.f.get(), p32Var.b());
        a(this, p32Var.c(), g32VarA, strA, this.l.a(strA, this.E, this.D), false, 48);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.bv0 r8, ads_mobile_sdk.o32 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bv0.a(ads_mobile_sdk.bv0, ads_mobile_sdk.o32, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(ads_mobile_sdk.bv0 r5, ads_mobile_sdk.o32 r6, kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bv0.b(ads_mobile_sdk.bv0, ads_mobile_sdk.o32, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.j12
    public final boolean k() {
        return (this.k.p.isEmpty() || this.k.q == null) ? false : true;
    }

    @Override // ads_mobile_sdk.j12
    public final int e() {
        NativeAd.SwipeGestureDirection customClickGestureDirection = this.m.getCustomClickGestureDirection();
        if (customClickGestureDirection != null) {
            return customClickGestureDirection.getValue();
        }
        return 0;
    }

    @Override // ads_mobile_sdk.j12
    public final boolean d() {
        if (e() == 0) {
            return true;
        }
        return this.m.getCustomClickGestureAllowTaps();
    }

    public final boolean j() {
        ds1 ds1Var = ds1.a;
        return ds1.a(this.g, "allow_custom_click_gesture", false);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        a(this, null, null, assetName, null, false, 48);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(View clickedView, FrameLayout frameLayout, LinkedHashMap assetViews, ImageView.ScaleType mediaViewScaleType) {
        Intrinsics.checkNotNullParameter(clickedView, "clickedView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new pu0(this, null), 3, null);
        g32 g32VarA = f32.a(this.n, this.o, this.l, frameLayout, assetViews, mediaViewScaleType);
        String strA = a(clickedView, assetViews);
        a(this, frameLayout, g32VarA, strA, this.l.a(strA, this.E, this.D), false, 48);
    }

    public static void a(bv0 bv0Var, FrameLayout frameLayout, g32 g32Var, String str, JsonObject jsonObject, boolean z, int i) {
        if ((i & 32) != 0) {
            z = false;
        }
        BuildersKt__Builders_commonKt.launch$default(bv0Var.h, null, null, new qu0(bv0Var, g32Var, jsonObject, null, str, frameLayout, z, null), 3, null);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new ru0(this, null), 3, null);
        g32 g32VarA = f32.a(this.n, this.o, this.l, nativeAdView, assetViews, mediaviewScaleType);
        String strA = a(nativeAdView);
        if (this.w.r0) {
            InitializationConfig initializationConfigA = this.x.a();
            z = !(initializationConfigA != null ? initializationConfigA.getNativeAdDebuggerDisabled() : false);
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new su0(this, g32VarA, null, strA, z, null), 3, null);
    }

    public final String a(FrameLayout frameLayout) {
        g83 g83Var = this.n;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.o;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.j.a(frameLayout);
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                String strA2 = this.j.a(frameLayout);
                CloseableKt.closeFinally(rr3VarA, null);
                return strA2;
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    @Override // ads_mobile_sdk.j12
    public final void b(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        g32 g32VarA = f32.a(this.n, this.o, this.l, nativeAdView, assetViews, mediaviewScaleType);
        String strA = a(nativeAdView);
        if (this.w.r0) {
            InitializationConfig initializationConfigA = this.x.a();
            z = !(initializationConfigA != null ? initializationConfigA.getNativeAdDebuggerDisabled() : false);
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new tu0(this, g32VarA, null, strA, z, null), 3, null);
    }

    @Override // ads_mobile_sdk.j12
    public final JsonObject b(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("nas", a(frameLayout, mediaViewScaleType, assetViews));
        if (this.H.get() && j()) {
            jsonObject.addProperty("custom_click_gesture_eligible", Boolean.TRUE);
        }
        return jsonObject;
    }

    public final String a(View view, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (Intrinsics.areEqual(view, (View) ((WeakReference) entry.getValue()).get())) {
                return str;
            }
        }
        q02 q02Var = this.k.b;
        if (q02Var != null && ou0.a[q02Var.ordinal()] == 1) {
            return "3099";
        }
        return null;
    }

    @Override // ads_mobile_sdk.j12
    public final JsonObject a(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        g32 g32VarA = f32.a(this.n, this.o, this.l, frameLayout, assetViews, mediaViewScaleType);
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("asset_view_signal", g32VarA.a);
        jsonObject.add("ad_view_signal", g32VarA.b);
        jsonObject.add("scroll_view_signal", g32VarA.c);
        jsonObject.add("lock_screen_signal", g32VarA.d);
        return jsonObject;
    }

    @Override // ads_mobile_sdk.j12
    public final void a(View view, int i) {
        boolean z = this.m.getCustomClickGestureDirection() != null;
        ds1 ds1Var = ds1.a;
        boolean zA = ds1.a(this.g, "allow_sdk_custom_click_gesture", false);
        JsonObject jsonObject = null;
        if (!zA) {
            if (!z && j()) {
                if (!this.H.get()) {
                    f01.c("Custom click reporting failed. enableCustomClickGesture is not set.", null);
                    return;
                }
            } else {
                f01.c("Custom click reporting failed. Ad unit id is not in the allow list.", null);
                return;
            }
        }
        o32 o32Var = (o32) this.c.get();
        if (o32Var == null) {
            f01.a("Ad should be associated with an ad view before calling performClickForCustomGesture()", null, null, 6);
            return;
        }
        g83 g83Var = this.n;
        ks3 ks3Var = this.o;
        k32 k32Var = this.l;
        p32 p32Var = (p32) o32Var;
        FrameLayout frameLayoutC = p32Var.c();
        Map mapB = p32Var.b();
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = ImageView.ScaleType.CENTER_INSIDE;
        }
        g32 g32VarA = f32.a(g83Var, ks3Var, k32Var, frameLayoutC, mapB, scaleTypeE);
        String strA = a(view, p32Var.b());
        JsonObject jsonObjectA = this.l.a(strA, this.E, this.D);
        if (zA) {
            JsonObject jsonObject2 = this.g;
            k32 k32Var2 = this.l;
            Point point = this.E;
            Point point2 = this.D;
            k32Var2.getClass();
            try {
                JsonObject jsonObject3 = new JsonObject();
                if (point != null) {
                    jsonObject3.addProperty("x", Integer.valueOf(point.x));
                    jsonObject3.addProperty("y", Integer.valueOf(point.y));
                }
                JsonObject jsonObject4 = new JsonObject();
                if (point2 != null) {
                    jsonObject4.addProperty("x", Integer.valueOf(point2.x));
                    jsonObject4.addProperty("y", Integer.valueOf(point2.y));
                }
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.add("start_point", jsonObject3);
                jsonObject5.add("end_point", jsonObject4);
                jsonObject5.addProperty("duration_ms", Integer.valueOf(i));
                jsonObject = jsonObject5;
            } catch (Exception e) {
                f01.a("Error occurred while grabbing custom click gesture signals.", e);
            }
            jsonObject2.add("custom_click_gesture_signal", jsonObject);
        }
        a(this, p32Var.c(), g32VarA, strA, jsonObjectA, true, 16);
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout frameLayout, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        this.l.getClass();
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        int[] iArr = new int[2];
        if (frameLayout != null) {
            frameLayout.getLocationOnScreen(iArr);
        }
        this.D = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
        this.p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.G = jCurrentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.F = jCurrentTimeMillis;
            this.E = this.D;
        }
        MotionEvent inputEvent = MotionEvent.obtain(motionEvent);
        Point point = this.D;
        inputEvent.setLocation(point.x, point.y);
        rb rbVar = this.j;
        Intrinsics.checkNotNull(inputEvent);
        rbVar.getClass();
        Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
        rbVar.g().a(inputEvent);
        inputEvent.recycle();
    }

    @Override // ads_mobile_sdk.j12
    public final void a(WeakReference nativeAdViewContainer, FrameLayout frameLayout, LinkedHashMap assetViews, View.OnTouchListener touchListener, View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(touchListener, "touchListener");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "<set-?>");
        this.c = nativeAdViewContainer;
        this.D = new Point();
        this.E = new Point();
        if (frameLayout != null) {
            BuildersKt__Builders_commonKt.launch$default(this.i, null, null, new av0(this, frameLayout, nativeAdViewContainer, null), 3, null);
        }
        if (frameLayout != null) {
            frameLayout.setOnTouchListener(touchListener);
            frameLayout.setClickable(true);
            frameLayout.setOnClickListener(clickListener);
        }
        Iterator it = assetViews.entrySet().iterator();
        while (it.hasNext()) {
            View view = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
            if (view != null) {
                view.setOnTouchListener(touchListener);
                view.setClickable(true);
                view.setOnClickListener(clickListener);
            }
        }
    }

    @Override // ads_mobile_sdk.j12
    public final void a(FrameLayout frameLayout, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        WeakReference weakReference = new WeakReference(null);
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.c = weakReference;
        WeakReference weakReference2 = new WeakReference(null);
        Intrinsics.checkNotNullParameter(weakReference2, "<set-?>");
        this.d = weakReference2;
        this.D = new Point();
        this.E = new Point();
    }
}
