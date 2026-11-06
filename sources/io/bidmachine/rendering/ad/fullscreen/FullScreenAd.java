package io.bidmachine.rendering.ad.fullscreen;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.ad.view.AdViewListener;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.internal.state.c;
import io.bidmachine.rendering.model.AdParams;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.UiUtils;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class FullScreenAd {
    public final io.bidmachine.rendering.internal.state.a a;
    public final AdView b;
    public FullScreenAdListener c;

    public final class a implements AdViewListener {
        public a() {
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdAppeared(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.b();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdClicked(AdView adView, SystemComponent systemComponent, ClickData clickData) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.a(systemComponent, clickData);
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdDisappeared(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.c();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdExpired(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.d();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdFailToLoad(AdView adView, Error error) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(error, "error");
            FullScreenAd.this.a(error);
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdFailToShow(AdView adView, Error error) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(error, "error");
            FullScreenAd.this.notifyAdFailToShow(error);
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdFinished(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.processAdClosed();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdLoaded(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.f();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onAdShown(AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            FullScreenAd.this.g();
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onBrokenCreativeEvent(AdView adView, BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            FullScreenAd.this.a(brokenCreativeEvent);
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onOpenPrivacySheet(AdView adView, PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            FullScreenAd.this.a(privacySheetParams);
        }

        @Override // io.bidmachine.rendering.ad.AdListener
        public void onViewabilityEvent(AdView adView, ActionEvent actionEvent, Error error) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            FullScreenAd.this.a(actionEvent, error);
        }
    }

    public FullScreenAd(Context context, AdParams adParams) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adParams, "adParams");
        this.a = new c("FullScreenAd");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.b = new AdView(applicationContext, adParams);
    }

    public static final void b(FullScreenAd this$0, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdFailToShow(this$0, error);
        }
    }

    public static final void d(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdFinished(this$0);
        }
    }

    public static final void e(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdLoaded(this$0);
        }
    }

    public final void a() {
        this.b.closeActivity();
    }

    public final void c() {
        if (this.a.b(false)) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda0
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.b(this.f$0);
                }
            });
        }
    }

    public final void destroy() {
        this.a.destroy();
        this.b.destroy();
    }

    public final void f() {
        if (this.a.a(true)) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda6
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.e(this.f$0);
                }
            });
        }
    }

    public final void g() {
        if (this.a.m()) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda4
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.f(this.f$0);
                }
            });
        }
    }

    public final boolean isCompleted() {
        return this.b.isCompleted();
    }

    public final boolean isDestroyed() {
        return this.b.isDestroyed();
    }

    public final boolean isFinished() {
        return this.a.i();
    }

    public final boolean isLoaded() {
        return this.a.c();
    }

    public final void load() {
        if (this.a.a()) {
            this.b.setAdViewListener(new a());
            this.b.load();
        }
    }

    public final void notifyAdFailToShow(final Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda1
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                FullScreenAd.b(this.f$0, error);
            }
        });
    }

    public final void processAdClosed() {
        a();
        c();
        e();
    }

    public final void setFullScreenAdListener(FullScreenAdListener fullScreenAdListener) {
        this.c = fullScreenAdListener;
    }

    public final void setWatermark(Drawable drawable) {
        this.b.setWatermark(drawable);
    }

    public final void show(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isLoaded()) {
            FullScreenActivityKt.startActivity(this, context);
        } else {
            notifyAdFailToShow(new Error("FullScreenAd not loaded"));
        }
    }

    public final void showInActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.showInActivity(activity, null, null);
    }

    public final void a(final Error error) {
        if (this.a.a(false)) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda9
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.a(this.f$0, error);
                }
            });
        }
    }

    public final void b() {
        if (this.a.b(true)) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda5
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.a(this.f$0);
                }
            });
        }
    }

    public final void d() {
        if (this.a.p()) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda8
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.c(this.f$0);
                }
            });
        }
    }

    public final void e() {
        if (this.a.o()) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda2
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    FullScreenAd.d(this.f$0);
                }
            });
        }
    }

    public static final void c(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdExpired(this$0);
        }
    }

    public static final void f(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdShown(this$0);
        }
    }

    public static final void a(FullScreenAd this$0, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdFailToLoad(this$0, error);
        }
    }

    public static final void b(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdDisappeared(this$0);
        }
    }

    public final void a(final SystemComponent systemComponent, final ClickData clickData) {
        this.a.e();
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda10
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                FullScreenAd.a(this.f$0, systemComponent, clickData);
            }
        });
    }

    public static final void a(FullScreenAd this$0, SystemComponent systemComponent, ClickData clickData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdClicked(this$0, systemComponent, clickData);
        }
    }

    public static final void a(FullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onAdAppeared(this$0);
        }
    }

    public final void a(final PrivacySheetParams privacySheetParams) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda11
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                FullScreenAd.a(this.f$0, privacySheetParams);
            }
        });
    }

    public static final void a(FullScreenAd this$0, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(privacySheetParams, "$privacySheetParams");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onOpenPrivacySheet(this$0, privacySheetParams);
        }
    }

    public final void a(final BrokenCreativeEvent brokenCreativeEvent) {
        if (this.a.l()) {
            return;
        }
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda7
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                FullScreenAd.a(this.f$0, brokenCreativeEvent);
            }
        });
    }

    public static final void a(FullScreenAd this$0, BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "$brokenCreativeEvent");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onBrokenCreativeEvent(this$0, brokenCreativeEvent);
        }
    }

    public final void a(final ActionEvent actionEvent, final Error error) {
        if (this.a.l()) {
            return;
        }
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.ad.fullscreen.FullScreenAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FullScreenAd.a(this.f$0, actionEvent, error);
            }
        });
    }

    public static final void a(FullScreenAd this$0, ActionEvent actionEvent, Error error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(actionEvent, "$actionEvent");
        FullScreenAdListener fullScreenAdListener = this$0.c;
        if (fullScreenAdListener != null) {
            fullScreenAdListener.onViewabilityEvent(this$0, actionEvent, error);
        }
    }
}
