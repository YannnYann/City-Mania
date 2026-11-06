package io.bidmachine.rendering.ad.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.internal.C4248e;
import io.bidmachine.rendering.internal.H;
import io.bidmachine.rendering.internal.I;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.p;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.AdParams;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.Border;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.WatermarkParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.view.SdkWatermarkView;
import io.bidmachine.rendering.view.WatermarkView;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.Tag;
import io.bidmachine.util.UiUtils;
import io.bidmachine.util.UiUtilsKt;
import io.bidmachine.util.ViewShowState;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.util.ViewUtilsKt;
import io.bidmachine.util.cache.MediaFileCacheManager;
import io.bidmachine.util.viewabilityhandler.ViewabilityHandler;
import io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityRule;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt___StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class AdView extends FrameLayout {
    public final AdParams a;
    public final Tag b;
    public final ViewShowState c;
    public final FrameLayout d;
    public final WatermarkView e;
    public final SdkWatermarkView f;
    public final io.bidmachine.rendering.internal.state.a g;
    public final io.bidmachine.rendering.internal.controller.a h;
    public final io.bidmachine.rendering.internal.view.d i;
    public final ViewabilityHandler j;
    public final H k;
    public final C4248e l;
    public final List m;
    public AdViewListener n;
    public boolean o;
    public boolean p;
    public WeakReference q;

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MediaFileCacheManager invoke() {
            Function0<MediaFileCacheManager> mediaFileCacheManagerProvider = Rendering.getMediaFileCacheManagerProvider();
            if (mediaFileCacheManagerProvider != null) {
                return mediaFileCacheManagerProvider.invoke();
            }
            return null;
        }
    }

    public static final class b implements io.bidmachine.rendering.internal.controller.c {
        public final WeakReference a;

        public b(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            this.a = new WeakReference(adView);
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(io.bidmachine.rendering.internal.controller.a adController, Error error) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.onAdCommitVisibleFailed$bidmachine_android_sdk_bb_3_8_0(error);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void b(io.bidmachine.rendering.internal.controller.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.i();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void c(io.bidmachine.rendering.internal.controller.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.h();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void d(io.bidmachine.rendering.internal.controller.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.onAdCommitVisible$bidmachine_android_sdk_bb_3_8_0();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void e() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void f() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.l();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void g() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b(new Error("Ad loading timeout after display"));
                adView.a();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(io.bidmachine.rendering.internal.controller.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.e();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void b(io.bidmachine.rendering.internal.controller.a adController, Error error) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.c(error);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void c(io.bidmachine.rendering.internal.view.f placeholderView) {
            Intrinsics.checkNotNullParameter(placeholderView, "placeholderView");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b(placeholderView);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void d() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(io.bidmachine.rendering.internal.controller.e adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(adPhaseController);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void b(io.bidmachine.rendering.internal.view.f placeholderView) {
            Intrinsics.checkNotNullParameter(placeholderView, "placeholderView");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(placeholderView);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void c() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(io.bidmachine.rendering.internal.controller.e eVar, Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.d(error);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void b() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.r();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(io.bidmachine.rendering.internal.view.f placeholderView) {
            Intrinsics.checkNotNullParameter(placeholderView, "placeholderView");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.d(placeholderView);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void b(AnimationParams animationParams, Function0 callback) {
            Function0 function0;
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                function0 = callback;
                AdView.collapse$default(adView, animationParams, function0, false, 4, null);
                unit = Unit.INSTANCE;
            } else {
                function0 = callback;
                unit = null;
            }
            if (unit == null) {
                function0.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(SystemComponent systemComponent, ClickData clickData) {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(systemComponent, clickData);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b(privacySheetParams);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(brokenCreativeEvent);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a(AnimationParams animationParams, Function0 callback) {
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(animationParams, callback);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                callback.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.c
        public void a() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.r();
            }
        }
    }

    public final class c extends View {
        public final /* synthetic */ AdView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AdView adView, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
            this.a = adView;
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.a.k();
        }
    }

    public static final class d implements ViewabilityHandlerListener {
        public final WeakReference a;

        public d(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            this.a = new WeakReference(adView);
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityChanged(boolean z) {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.b(z);
            }
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityError(ActionEvent actionEvent, Error error) {
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.a(actionEvent, error);
            }
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityEvent(ActionEvent actionEvent) {
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.onViewabilityEvent$bidmachine_android_sdk_bb_3_8_0(actionEvent);
            }
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityTracked() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                adView.n();
            }
        }
    }

    public static final class f extends Lambda implements Function1 {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, String str2, String str3) {
            super(1);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a(int i) {
            if (i == 0) {
                return "";
            }
            if (i < this.a.length() + this.b.length() + this.c.length()) {
                return StringsKt___StringsKt.reversed(StringsKt___StringsKt.take(StringsKt___StringsKt.reversed(this.a).toString(), Math.min(i, this.a.length()))).toString();
            }
            return this.b + this.c + this.a;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return a(((Number) obj).intValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AdView(Context context, AdParams adParams) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adParams, "adParams");
        this.a = adParams;
        Tag tag = new Tag("AdView");
        this.b = tag;
        this.c = new ViewShowState();
        FrameLayout frameLayout = new FrameLayout(context);
        this.d = frameLayout;
        WatermarkView watermarkView = new WatermarkView(context);
        this.e = watermarkView;
        SdkWatermarkView sdkWatermarkView = new SdkWatermarkView(context);
        sdkWatermarkView.setVisibility(8);
        this.f = sdkWatermarkView;
        this.j = new ViewabilityHandler(adParams.getViewabilityTrackerParams(), adParams.getVisibilityParams(), new d(this));
        this.l = new C4248e(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0);
        this.m = new CopyOnWriteArrayList();
        addView(new c(this, context));
        addView(frameLayout, ViewUtils.createMatchParentParams());
        addView(sdkWatermarkView, ViewUtils.createMatchParentParams());
        addView(watermarkView, ViewUtils.createMatchParentParams());
        j jVarA = j.i.a();
        io.bidmachine.rendering.internal.state.d dVar = new io.bidmachine.rendering.internal.state.d(tag.toString(), jVarA);
        this.g = dVar;
        io.bidmachine.rendering.internal.state.b bVarV = dVar.v();
        this.h = new io.bidmachine.rendering.internal.controller.b(context, adParams, new b(this));
        io.bidmachine.rendering.internal.view.d dVar2 = new io.bidmachine.rendering.internal.view.d(context);
        this.i = dVar2;
        addView(dVar2, ViewUtils.createMatchParentParams());
        dVar2.a();
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        Background background = adParams.getBackground();
        this.k = background != null ? I.a(background, applicationContext, new io.bidmachine.rendering.internal.repository.a(a.a, bVarV, jVarA)) : null;
        a(adParams.getWatermarkParams());
        this.o = false;
        setBackgroundColor(-16777216);
    }

    public static /* synthetic */ void collapse$default(AdView adView, AnimationParams animationParams, Function0 function0, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        adView.collapse(animationParams, function0, z);
    }

    public static final void e(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdFinished(this$0);
        }
    }

    public static final void f(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdLoaded(this$0);
        }
    }

    public final void a(WatermarkParams watermarkParams) {
        if (watermarkParams == null) {
            this.f.setVisibility(8);
            return;
        }
        Duration.Companion companion = Duration.Companion;
        String strValueOf = String.valueOf(Duration.m2883getInWholeSecondsimpl(DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS)));
        SdkWatermarkView sdkWatermarkView = this.f;
        sdkWatermarkView.setVisibility(0);
        sdkWatermarkView.setLocation(watermarkParams.getLocation());
        sdkWatermarkView.setBaseColor(watermarkParams.getBaseColor());
        sdkWatermarkView.setPayloadProvider(createPayloadProvider$bidmachine_android_sdk_bb_3_8_0(strValueOf, watermarkParams.getPayload()));
    }

    public final void attachActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.q = new WeakReference(activity);
    }

    public final void b(boolean z) {
        if (z) {
            a(this, false, 1, null);
        } else {
            m();
        }
    }

    public final void c(Error error) {
        a(error);
    }

    public final void closeActivity() {
        UiUtilsKt.finishActivityWithoutAnimationSafely(getAttachedActivity());
        detachActivity();
    }

    public final void collapse(AnimationParams animationParams, Function0<Unit> function0, boolean z) {
        this.l.a(this, animationParams, p.a(new e(z, function0)));
    }

    public final Function1<Integer, String> createPayloadProvider$bidmachine_android_sdk_bb_3_8_0(String timestamp, String payload) {
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        Intrinsics.checkNotNullParameter(payload, "payload");
        return new f(payload, timestamp, ":");
    }

    public final void d(Error error) {
        t.a(this.b, "onPreparingForShowFail - %s", error);
        b(new Error("No phase loaded"));
    }

    public final void destroy() {
        t.b(this.b, "destroy", new Object[0]);
        if (this.g.d() && !this.g.b()) {
            onAdCommitVisibleFailed$bidmachine_android_sdk_bb_3_8_0(new Error("Ad closed before the content commit visible"));
        }
        this.m.clear();
        this.l.a();
        H h = this.k;
        if (h != null) {
            h.a();
        }
        this.n = null;
        this.c.clear();
        this.h.destroy();
        this.j.destroy();
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda8
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                AdView.a(this.f$0);
            }
        });
        this.g.destroy();
        closeActivity();
    }

    public final void detachActivity() {
        WeakReference weakReference = this.q;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.q = null;
    }

    public final void g() {
        if (this.g.a(true)) {
            t.b(this.b, "notifyAdLoaded", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.f(this.f$0);
                }
            });
        }
    }

    public final AdViewListener getAdViewListener() {
        return this.n;
    }

    public final Activity getAttachedActivity() {
        WeakReference weakReference = this.q;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public final Orientation getRequiredOrientation() {
        return this.h.g();
    }

    public final void h() {
        if (this.g.m()) {
            t.b(this.b, "notifyAdShown", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.g(this.f$0);
                }
            });
        }
    }

    public final void i() {
        g();
    }

    public final boolean isCompleted() {
        return this.g.isCompleted();
    }

    public final boolean isDestroyed() {
        return this.g.l();
    }

    public final void j() {
        if (this.g.k()) {
            if (this.j.isViewabilityTracked()) {
                n();
            }
            if (this.j.isViewable()) {
                a(this, false, 1, null);
            }
        }
        this.j.start(this);
    }

    public final void k() {
        t.b(this.b, "onDetachedFromWindow", new Object[0]);
        this.o = false;
        o();
    }

    public final void l() {
        t.b(this.b, "onPreparingForShowStarted", new Object[0]);
    }

    public final void load() {
        AdView adView;
        if (this.g.a()) {
            H h = this.k;
            if (h != null) {
                adView = this;
                H.a(h, (Object) this.b, (View) adView, (Integer) null, (Border) null, false, (H.a) null, 60, (Object) null);
            } else {
                adView = this;
            }
            adView.h.a();
        }
    }

    public final void m() {
        t.b(this.b, "onViewOutOfScreen", new Object[0]);
        o();
    }

    public final void n() {
        t.b(this.b, "onViewabilityShown", new Object[0]);
        a(true);
    }

    public final void o() {
        if (!this.o || !ViewUtilsKt.isViewVisible(this)) {
            this.j.stop();
        }
        this.h.e();
        d();
    }

    public final void onAdCommitVisible$bidmachine_android_sdk_bb_3_8_0() {
        if (this.g.h()) {
            t.b(this.b, "notifyAdCommitVisible", new Object[0]);
            for (Pair pair : this.m) {
                a((ActionEvent) pair.getFirst(), (Error) pair.getSecond());
            }
            this.m.clear();
        }
    }

    public final void onAdCommitVisibleFailed$bidmachine_android_sdk_bb_3_8_0(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.g.h()) {
            t.a(this.b, "onAdCommitVisibleFailed - %s", error);
            this.m.clear();
            for (ViewabilityRule viewabilityRule : this.a.getViewabilityTrackerParams().getViewabilityRuleList()) {
                if (viewabilityRule.getActionEvent().isBillable()) {
                    a(viewabilityRule.getActionEvent(), error);
                }
            }
            b(error);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t.b(this.b, "onAttachedToWindow", new Object[0]);
        this.o = true;
        p();
    }

    public final void onExpanded() {
        q();
    }

    public final void onViewabilityEvent$bidmachine_android_sdk_bb_3_8_0(ActionEvent actionEvent) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        t.b(this.b, "onViewabilityEvent (%s)", actionEvent);
        if (a(actionEvent)) {
            a(this, actionEvent, null, 2, null);
        } else {
            this.m.add(TuplesKt.to(actionEvent, null));
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View changedView, int i) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, i);
        t.b(this.b, "onVisibilityChanged - %s", ViewUtils.visibilityToString(i));
        if (ViewUtils.isViewVisible(i)) {
            p();
        } else {
            o();
        }
    }

    public final void p() {
        if (this.o && ViewUtilsKt.isViewVisible(this)) {
            this.g.s();
            if (this.p) {
                j();
            } else {
                this.h.b();
            }
        }
    }

    public final void q() {
        if (this.g.r()) {
            this.h.f();
        }
    }

    public final void r() {
        this.i.c();
    }

    public final void setAdViewListener(AdViewListener adViewListener) {
        this.n = adViewListener;
    }

    public final void setWatermark(Drawable drawable) {
        this.e.setWatermark(drawable);
    }

    public final void showInActivity(Activity activity, AnimationParams animationParams, Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        closeActivity();
        attachActivity(activity);
        io.bidmachine.rendering.utils.UiUtilsKt.setupActivityOrientation(activity, getRequiredOrientation());
        UiUtilsKt.prepareFullscreen(activity);
        ViewUtilsKt.removeFromParent(this);
        io.bidmachine.rendering.utils.UiUtilsKt.applyInsets(activity, this, false);
        activity.setContentView(this, ViewUtils.createMatchParentParams());
        UiUtilsKt.applyFullscreen(activity);
        this.l.c(this, animationParams, function0);
    }

    @Override // android.view.View
    public String toString() {
        return this.b.toString();
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ boolean b;
        public final /* synthetic */ Function0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(boolean z, Function0 function0) {
            super(0);
            this.b = z;
            this.c = function0;
        }

        public final void a() {
            AdView.this.closeActivity();
            final AdView adView = AdView.this;
            final boolean z = this.b;
            final Function0 function0 = this.c;
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$e$$ExternalSyntheticLambda0
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    AdView.e.a(adView, z, function0);
                }
            });
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }

        public static final void a(AdView this$0, boolean z, Function0 function0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.c.restoreViewShowState(this$0);
            this$0.c(z);
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    public static final void c(io.bidmachine.rendering.internal.view.f placeholderView) {
        Intrinsics.checkNotNullParameter(placeholderView, "$placeholderView");
        ViewUtilsKt.removeFromParent(placeholderView);
    }

    public final void e() {
        if (this.g.p()) {
            t.b(this.b, "notifyAdExpired", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.d(this.f$0);
                }
            });
        }
    }

    public final void f() {
        if (this.g.o()) {
            t.b(this.b, "notifyAdFinished", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.e(this.f$0);
                }
            });
        }
    }

    public final void c(boolean z) {
        if (this.g.q() || z) {
            this.h.d();
        }
    }

    public final void b(PrivacySheetParams privacySheetParams) {
        t.b(this.b, "onOpenPrivacySheet", new Object[0]);
        a(privacySheetParams);
    }

    public final void d(final io.bidmachine.rendering.internal.view.f fVar) {
        t.b(this.b, "showPlaceholder (%s)", fVar);
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda1
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                AdView.a(this.f$0, fVar);
            }
        });
    }

    public final void b(final io.bidmachine.rendering.internal.view.f fVar) {
        t.b(this.b, "removePlaceholder (%s)", fVar);
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda5
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                AdView.c(fVar);
            }
        });
    }

    public final void d() {
        if (this.g.b(false)) {
            t.b(this.b, "notifyAdDisappeared", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.c(this.f$0);
                }
            });
        }
    }

    public static final void g(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdShown(this$0);
        }
    }

    public final void c() {
        if (this.g.b(true)) {
            t.b(this.b, "notifyAdAppeared", new Object[0]);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.b(this.f$0);
                }
            });
        }
    }

    public final void b() {
        this.i.a();
    }

    public final void b(final Error error) {
        if (this.g.f()) {
            t.a(this.b, "notifyAdFailToShow - %s", error);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.b(this.f$0, error);
                }
            });
        }
    }

    public static final void a(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.d.removeAllViews();
        this$0.removeAllViews();
    }

    public static final void d(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdExpired(this$0);
        }
    }

    public static final void c(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdDisappeared(this$0);
        }
    }

    public final void a(final io.bidmachine.rendering.internal.controller.e eVar) {
        t.b(this.b, "onPreparingForShowComplete", new Object[0]);
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda2
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                AdView.a(eVar, this);
            }
        });
    }

    public static final void a(io.bidmachine.rendering.internal.controller.e adPhaseController, AdView this$0) {
        Intrinsics.checkNotNullParameter(adPhaseController, "$adPhaseController");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        adPhaseController.a(this$0, this$0.d);
        this$0.p = true;
        this$0.b();
        this$0.p();
    }

    public static final void b(AdView this$0, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdFailToShow(this$0, error);
        }
    }

    public static final void b(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdAppeared(this$0);
        }
    }

    public static /* synthetic */ void a(AdView adView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        adView.a(z);
    }

    public final void a(boolean z) {
        AdView adView;
        t.b(this.b, "onViewOnScreen (isViewability - %s)", Boolean.valueOf(z));
        H h = this.k;
        if (h != null) {
            adView = this;
            H.a(h, (Object) this.b, (View) adView, (Integer) null, (Border) null, false, new H.a(0L, null, 3, null), 12, (Object) null);
        } else {
            adView = this;
        }
        adView.h.b();
        adView.h.a(z);
        c();
    }

    public final boolean a(ActionEvent actionEvent) {
        return this.g.b() || !actionEvent.isBillable();
    }

    public final void a(final AnimationParams animationParams, final Function0 function0) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda15
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                AdView.a(this.f$0, animationParams, function0);
            }
        });
    }

    public static final void a(AdView this$0, AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        this$0.c.saveViewShowState(this$0);
        ExpandActivityKt.startExpandActivity(this$0, animationParams, callback);
    }

    public final void a() {
        this.g.n();
        f();
    }

    public static final void a(AdView this$0, io.bidmachine.rendering.internal.view.f placeholderView) {
        io.bidmachine.rendering.internal.view.f fVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(placeholderView, "$placeholderView");
        if (ViewUtilsKt.contains(this$0, placeholderView)) {
            fVar = placeholderView;
        } else {
            fVar = placeholderView;
            ViewUtilsKt.addViewSafely$default(this$0, fVar, 0, ViewUtils.createMatchParentParams(), 2, null);
        }
        ViewUtilsKt.showViewSafely(fVar);
        fVar.bringToFront();
        fVar.d();
    }

    public final void a(io.bidmachine.rendering.internal.view.f fVar) {
        t.b(this.b, "hidePlaceholder (%s)", fVar);
        ViewUtilsKt.hideViewSafely(fVar);
    }

    public final void a(final Error error) {
        if (this.g.a(false)) {
            t.a(this.b, "notifyAdFailToLoad - %s", error);
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    AdView.a(this.f$0, error);
                }
            });
        }
    }

    public static final void a(AdView this$0, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdFailToLoad(this$0, error);
        }
    }

    public final void a(final SystemComponent systemComponent, final ClickData clickData) {
        this.g.e();
        t.b(this.b, "notifyAdClicked", new Object[0]);
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                AdView.a(this.f$0, systemComponent, clickData);
            }
        });
    }

    public static final void a(AdView this$0, SystemComponent systemComponent, ClickData clickData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onAdClicked(this$0, systemComponent, clickData);
        }
    }

    public final void a(final PrivacySheetParams privacySheetParams) {
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                AdView.a(this.f$0, privacySheetParams);
            }
        });
    }

    public static final void a(AdView this$0, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(privacySheetParams, "$privacySheetParams");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onOpenPrivacySheet(this$0, privacySheetParams);
        }
    }

    public final void a(final BrokenCreativeEvent brokenCreativeEvent) {
        if (this.g.l()) {
            return;
        }
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                AdView.a(this.f$0, brokenCreativeEvent);
            }
        });
    }

    public static final void a(AdView this$0, BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "$brokenCreativeEvent");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onBrokenCreativeEvent(this$0, brokenCreativeEvent);
        }
    }

    public static /* synthetic */ void a(AdView adView, ActionEvent actionEvent, Error error, int i, Object obj) {
        if ((i & 2) != 0) {
            error = null;
        }
        adView.a(actionEvent, error);
    }

    public final void a(final ActionEvent actionEvent, final Error error) {
        if (this.g.l()) {
            return;
        }
        if (error != null) {
            t.a(this.b, "notifyViewabilityEvent - %s, error - %s", actionEvent, error);
        } else {
            t.b(this.b, "notifyViewabilityEvent - %s", actionEvent);
        }
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.view.AdView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                AdView.a(this.f$0, actionEvent, error);
            }
        });
    }

    public static final void a(AdView this$0, ActionEvent actionEvent, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(actionEvent, "$actionEvent");
        AdViewListener adViewListener = this$0.n;
        if (adViewListener != null) {
            adViewListener.onViewabilityEvent(this$0, actionEvent, error);
        }
    }
}
