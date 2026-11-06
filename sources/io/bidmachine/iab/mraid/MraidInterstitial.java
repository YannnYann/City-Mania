package io.bidmachine.iab.mraid;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.util.UiUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class MraidInterstitial {
    public static final AtomicInteger k = new AtomicInteger(0);
    public static final /* synthetic */ boolean l = true;
    public MraidView d;
    public MraidInterstitialListener e;
    public final int id = k.getAndIncrement();
    public final AtomicBoolean b = new AtomicBoolean(false);
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public boolean i = true;
    public boolean j = false;
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final MraidViewListener c = new b();

    public class Builder {
        public final MraidView.Builder a = new MraidView.Builder(MraidPlacementType.INTERSTITIAL);

        public Builder() {
        }

        public MraidInterstitial build(Context context) {
            this.a.setListener(MraidInterstitial.this.c);
            MraidInterstitial.this.d = this.a.build(context);
            return MraidInterstitial.this;
        }

        public Builder forceUseNativeCloseButton(boolean forceUseNativeCloseButton) {
            this.a.forceUseNativeCloseButton(forceUseNativeCloseButton);
            return this;
        }

        public Builder setAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
            this.a.setAdMeasurer(mraidAdMeasurer);
            return this;
        }

        public Builder setAutoViewabilityCheck(boolean isAutoViewabilityCheck) {
            this.a.setAutoViewabilityCheck(isAutoViewabilityCheck);
            return this;
        }

        public Builder setBaseUrl(String baseUrl) {
            this.a.setBaseUrl(baseUrl);
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            this.a.setCacheControl(cacheControl);
            return this;
        }

        public Builder setCloseStyle(IabElementStyle closeStyle) {
            this.a.setCloseStyle(closeStyle);
            return this;
        }

        public Builder setCloseTime(float closeTime) {
            this.a.setCloseTimeSec(closeTime);
            return this;
        }

        public Builder setCountDownStyle(IabElementStyle countDownStyle) {
            this.a.setCountDownStyle(countDownStyle);
            return this;
        }

        public Builder setDurationSec(float durationSec) {
            this.a.setDurationSec(durationSec);
            return this;
        }

        public Builder setEngagedClickParams(EngagedClickParams engagedClickParams) {
            this.a.setEngagedClickParams(engagedClickParams);
            return this;
        }

        public Builder setIsTag(boolean isTag) {
            this.a.setIsTag(isTag);
            return this;
        }

        public Builder setListener(MraidInterstitialListener listener) {
            MraidInterstitial.this.e = listener;
            return this;
        }

        public Builder setLoadingStyle(IabElementStyle loadingStyle) {
            this.a.setLoadingStyle(loadingStyle);
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float placeholderTimeoutSec) {
            this.a.setPlaceholderTimeoutSec(placeholderTimeoutSec);
            return this;
        }

        public Builder setProductLink(String productLink) {
            this.a.setProductLink(productLink);
            return this;
        }

        public Builder setProgressStyle(IabElementStyle progressStyle) {
            this.a.setProgressStyle(progressStyle);
            return this;
        }

        public Builder setR1(boolean r1) {
            this.a.setR1(r1);
            return this;
        }

        public Builder setR2(boolean r2) {
            this.a.setR2(r2);
            return this;
        }
    }

    public class b implements MraidViewListener {
        public b() {
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onCalendarEvent(MraidView mraidView, String str, IabClickCallback iabClickCallback) {
            MraidLog.d("MraidInterstitial", "ViewListener - onCalendarEvent (%s)", str);
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onCalendarEvent(MraidInterstitial.this, str, iabClickCallback);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onClose(MraidView mraidView) {
            MraidLog.d("MraidInterstitial", "ViewListener - onClose", new Object[0]);
            MraidInterstitial.this.b.set(true);
            MraidInterstitial.this.a();
            MraidInterstitial.this.b();
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onExpand(MraidView mraidView) {
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onExpired(MraidView mraidView, IabError iabError) {
            MraidLog.d("MraidInterstitial", "ViewListener - onExpired (%s)", iabError);
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onExpired(MraidInterstitial.this, iabError);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onLoadFailed(MraidView mraidView, IabError iabError) {
            MraidLog.d("MraidInterstitial", "ViewListener - onLoadFailed (%s)", iabError);
            MraidInterstitial.this.a();
            MraidInterstitial.this.a(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onLoaded(MraidView mraidView) {
            MraidLog.d("MraidInterstitial", "ViewListener - onLoaded", new Object[0]);
            MraidInterstitial.this.c();
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onOpenPrivacySheet(MraidView mraidView, PrivacySheetParams privacySheetParams) {
            MraidLog.d("MraidInterstitial", "ViewListener - onOpenPrivacySheet (%s)", privacySheetParams.toString());
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onOpenPrivacySheet(MraidInterstitial.this, privacySheetParams);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onOpenUrl(MraidView mraidView, String str, IabClickCallback iabClickCallback) {
            MraidLog.d("MraidInterstitial", "ViewListener - onOpenBrowser (%s)", str);
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onOpenUrl(MraidInterstitial.this, str, iabClickCallback);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onPlayVideo(MraidView mraidView, String str) {
            MraidLog.d("MraidInterstitial", "ViewListener - onPlayVideo (%s)", str);
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onPlayVideo(MraidInterstitial.this, str);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onShowFailed(MraidView mraidView, IabError iabError) {
            MraidLog.d("MraidInterstitial", "ViewListener - onShowFailed (%s)", iabError);
            MraidInterstitial.this.a();
            MraidInterstitial.this.b(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onShown(MraidView mraidView) {
            MraidLog.d("MraidInterstitial", "ViewListener - onShown", new Object[0]);
            MraidInterstitial.this.d();
        }

        @Override // io.bidmachine.iab.mraid.MraidViewListener
        public void onStorePicture(MraidView mraidView, String str, IabClickCallback iabClickCallback) {
            MraidLog.d("MraidInterstitial", "ViewListener - onCalendarEvent (%s)", str);
            if (MraidInterstitial.this.e != null) {
                MraidInterstitial.this.e.onStorePicture(MraidInterstitial.this, str, iabClickCallback);
            }
        }
    }

    public static Builder newBuilder() {
        return new MraidInterstitial().new Builder();
    }

    public boolean canBeClosed() {
        MraidView mraidView = this.d;
        return mraidView == null || mraidView.canBeClosed() || isReceivedError();
    }

    public void d() {
        this.a.set(true);
        MraidInterstitialListener mraidInterstitialListener = this.e;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onShown(this);
        }
    }

    public void destroy() {
        MraidLog.d("MraidInterstitial", "destroy", new Object[0]);
        this.f = false;
        this.e = null;
        MraidView mraidView = this.d;
        if (mraidView != null) {
            mraidView.destroy();
            this.d = null;
        }
    }

    public void dispatchClose() {
        if (this.d == null || !canBeClosed()) {
            return;
        }
        this.d.f();
    }

    public boolean isClosed() {
        return this.g;
    }

    public boolean isCompleted() {
        return this.b.get();
    }

    public boolean isReady() {
        return this.f && this.d != null;
    }

    public boolean isReceivedError() {
        return this.h;
    }

    public boolean isShown() {
        return this.a.get();
    }

    public void load(String data) {
        MraidView mraidView = this.d;
        if (mraidView == null) {
            throw new IllegalStateException("MraidView not created (mraidView == null)");
        }
        mraidView.load(data);
    }

    public Context peekContext() {
        MraidView mraidView = this.d;
        if (mraidView == null) {
            return null;
        }
        return mraidView.peekContext();
    }

    public void show(Context context, MraidType mraidType) {
        MraidActivity.show(context, this, mraidType);
    }

    public void showInView(ViewGroup parent, boolean destroyOnClose) {
        a(null, parent, false, destroyOnClose);
    }

    public void b(IabError iabError) {
        this.f = false;
        this.h = true;
        c(iabError);
    }

    public void c() {
        this.f = true;
        MraidInterstitialListener mraidInterstitialListener = this.e;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onLoaded(this);
        }
    }

    public void a(Activity activity, boolean z) {
        a(activity, (ViewGroup) activity.findViewById(R.id.content), true, z);
    }

    public void a(Activity activity, ViewGroup viewGroup, boolean z, boolean z2) {
        if (!isReady()) {
            if (activity != null && z) {
                UiUtils.finishActivityWithoutAnimation(activity);
            }
            c(IabError.incorrectState("Interstitial is not ready"));
            MraidLog.w("MraidInterstitial", "Show failed: interstitial is not ready", new Object[0]);
            return;
        }
        if (!l && this.d == null) {
            throw new AssertionError();
        }
        this.i = z2;
        this.j = z;
        Utils.removeFromParent(this.d);
        viewGroup.addView(this.d, new ViewGroup.LayoutParams(-1, -1));
        this.d.show(activity);
    }

    public void b() {
        if (isClosed()) {
            return;
        }
        this.g = true;
        MraidInterstitialListener mraidInterstitialListener = this.e;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onClose(this);
        }
        if (this.i) {
            destroy();
        }
    }

    public void c(IabError iabError) {
        MraidInterstitialListener mraidInterstitialListener = this.e;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onShowFailed(this, iabError);
        }
    }

    public final void a() {
        MraidView mraidView;
        Activity activityPeekActivity;
        if (!this.j || (mraidView = this.d) == null || (activityPeekActivity = mraidView.peekActivity()) == null) {
            return;
        }
        UiUtils.finishActivityWithoutAnimation(activityPeekActivity);
    }

    public void a(IabError iabError) {
        this.f = false;
        this.h = true;
        MraidInterstitialListener mraidInterstitialListener = this.e;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onLoadFailed(this, iabError);
        }
    }
}
