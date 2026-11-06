package io.bidmachine.iab.vast.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.iab.vast.VastActivityListener;
import io.bidmachine.iab.vast.VastLog;
import io.bidmachine.iab.vast.VastPlaybackListener;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VastRequestManager;
import io.bidmachine.iab.vast.VastViewListener;
import io.bidmachine.rendering.internal.AdActivity;
import io.bidmachine.util.UiUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class VastActivity extends AdActivity {
    public static final Map h = new ConcurrentHashMap();
    public static final Map i = new ConcurrentHashMap();
    public static WeakReference j;
    public static WeakReference k;
    public static WeakReference l;
    public VastRequest b;
    public VastView c;
    public VastActivityListener d;
    public boolean f;
    public boolean g;
    public final VastViewListener a = new b();
    public boolean e = false;

    public static class Builder {
        public VastRequest a;
        public VastActivityListener b;
        public VastView c;
        public VastPlaybackListener d;
        public VastAdMeasurer e;
        public MraidAdMeasurer f;

        public Intent a(Context context) {
            Intent intent = new Intent(context, (Class<?>) VastActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            return intent;
        }

        public IabError display(Context context) {
            VastRequest vastRequest = this.a;
            if (vastRequest == null) {
                VastLog.e("VastActivity", "VastRequest is null", new Object[0]);
                return IabError.internal("VastRequest is null");
            }
            try {
                VastRequestManager.store(vastRequest);
                Intent intentA = a(context);
                intentA.putExtra("vast_request_id", this.a.getId());
                VastActivityListener vastActivityListener = this.b;
                if (vastActivityListener != null) {
                    VastActivity.b(this.a, vastActivityListener);
                }
                VastView vastView = this.c;
                if (vastView != null) {
                    VastActivity.b(this.a, vastView);
                }
                if (this.d != null) {
                    WeakReference unused = VastActivity.j = new WeakReference(this.d);
                } else {
                    WeakReference unused2 = VastActivity.j = null;
                }
                if (this.e != null) {
                    WeakReference unused3 = VastActivity.k = new WeakReference(this.e);
                } else {
                    WeakReference unused4 = VastActivity.k = null;
                }
                if (this.f != null) {
                    WeakReference unused5 = VastActivity.l = new WeakReference(this.f);
                } else {
                    WeakReference unused6 = VastActivity.l = null;
                }
                context.startActivity(intentA);
                return null;
            } catch (Throwable th) {
                VastLog.e("VastActivity", th);
                VastActivity.f(this.a);
                VastActivity.g(this.a);
                WeakReference unused7 = VastActivity.j = null;
                WeakReference unused8 = VastActivity.k = null;
                WeakReference unused9 = VastActivity.l = null;
                return IabError.throwable("Exception during displaying VastActivity", th);
            }
        }

        public Builder setAdMeasurer(VastAdMeasurer vastAdMeasurer) {
            this.e = vastAdMeasurer;
            return this;
        }

        public Builder setListener(VastActivityListener listener) {
            this.b = listener;
            return this;
        }

        public Builder setPlaybackListener(VastPlaybackListener vastPlaybackListener) {
            this.d = vastPlaybackListener;
            return this;
        }

        public Builder setPostBannerAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
            this.f = mraidAdMeasurer;
            return this;
        }

        public Builder setRequest(VastRequest vastRequest) {
            this.a = vastRequest;
            return this;
        }

        public Builder setVastView(VastView vastView) {
            this.c = vastView;
            return this;
        }
    }

    public class b implements VastViewListener {
        public b() {
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onClick(VastView vastView, VastRequest vastRequest, IabClickCallback iabClickCallback, String str) {
            if (VastActivity.this.d != null) {
                VastActivity.this.d.onVastClick(VastActivity.this, vastRequest, iabClickCallback, str);
            }
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onComplete(VastView vastView, VastRequest vastRequest) {
            if (VastActivity.this.d != null) {
                VastActivity.this.d.onVastComplete(VastActivity.this, vastRequest);
            }
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onFinish(VastView vastView, VastRequest vastRequest, boolean z) {
            VastActivity.this.a(vastRequest, z);
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onOrientationRequested(VastView vastView, VastRequest vastRequest, int i) {
            int forceOrientation = vastRequest.getForceOrientation();
            if (forceOrientation > -1) {
                i = forceOrientation;
            }
            VastActivity.this.a(i);
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onShowFailed(VastView vastView, VastRequest vastRequest, IabError iabError) {
            VastActivity.this.a(vastRequest, iabError);
        }

        @Override // io.bidmachine.iab.vast.VastViewListener
        public void onShown(VastView vastView, VastRequest vastRequest) {
            if (VastActivity.this.d != null) {
                VastActivity.this.d.onVastShown(VastActivity.this, vastRequest);
            }
        }
    }

    public static VastActivityListener d(VastRequest vastRequest) {
        WeakReference weakReference = (WeakReference) h.get(vastRequest.getId());
        if (weakReference != null && weakReference.get() != null) {
            return (VastActivityListener) weakReference.get();
        }
        f(vastRequest);
        return null;
    }

    public static VastView e(VastRequest vastRequest) {
        WeakReference weakReference = (WeakReference) i.get(vastRequest.getId());
        if (weakReference != null && weakReference.get() != null) {
            return (VastView) weakReference.get();
        }
        g(vastRequest);
        return null;
    }

    public static void f(VastRequest vastRequest) {
        h.remove(vastRequest.getId());
    }

    public static void g(VastRequest vastRequest) {
        i.remove(vastRequest.getId());
    }

    @Override // io.bidmachine.rendering.internal.AdActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Integer numC;
        super.onCreate(bundle);
        this.b = VastRequestManager.get(getIntent().getStringExtra("vast_request_id"));
        if (bundle != null && bundle.getBoolean("isFinishedPerformed")) {
            finish();
            return;
        }
        VastRequest vastRequest = this.b;
        if (vastRequest == null) {
            a((VastRequest) null, IabError.internal("VastRequest is null"));
            a((VastRequest) null, false);
            return;
        }
        if (bundle == null && (numC = c(vastRequest)) != null) {
            a(numC.intValue());
            try {
                if ((getPackageManager().getActivityInfo(getComponentName(), 65536).configChanges & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) {
                    return;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.d = d(this.b);
        VastView vastViewE = e(this.b);
        this.c = vastViewE;
        if (vastViewE == null) {
            this.e = true;
            this.c = new VastView(this);
        }
        this.c.setId(1);
        this.c.setListener(this.a);
        WeakReference weakReference = j;
        if (weakReference != null) {
            this.c.setPlaybackListener((VastPlaybackListener) weakReference.get());
        }
        WeakReference weakReference2 = k;
        if (weakReference2 != null) {
            this.c.setAdMeasurer((VastAdMeasurer) weakReference2.get());
        }
        WeakReference weakReference3 = l;
        if (weakReference3 != null) {
            this.c.setPostBannerAdMeasurer((MraidAdMeasurer) weakReference3.get());
        }
        if (bundle != null && bundle.getBoolean("isLoadPerformed")) {
            a(this.c);
            return;
        }
        this.f = true;
        if (this.c.display(this.b, Boolean.TRUE)) {
            a(this.c);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        VastRequest vastRequest;
        VastView vastView;
        super.onDestroy();
        if (isChangingConfigurations() || (vastRequest = this.b) == null) {
            return;
        }
        VastView vastView2 = this.c;
        a(vastRequest, vastView2 != null && vastView2.isFinished());
        if (this.e && (vastView = this.c) != null) {
            vastView.destroy();
        }
        f(this.b);
        g(this.b);
        j = null;
        k = null;
        l = null;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isLoadPerformed", this.f);
        bundle.putBoolean("isFinishedPerformed", this.g);
    }

    public final Integer c(VastRequest vastRequest) {
        int forceOrientation = vastRequest.getForceOrientation();
        if (forceOrientation > -1) {
            return Integer.valueOf(forceOrientation);
        }
        int preferredVideoOrientation = vastRequest.getPreferredVideoOrientation();
        if (preferredVideoOrientation == 0 || preferredVideoOrientation == getResources().getConfiguration().orientation) {
            return null;
        }
        return Integer.valueOf(preferredVideoOrientation);
    }

    public static void b(VastRequest vastRequest, VastActivityListener vastActivityListener) {
        h.put(vastRequest.getId(), new WeakReference(vastActivityListener));
    }

    public static void b(VastRequest vastRequest, VastView vastView) {
        i.put(vastRequest.getId(), new WeakReference(vastView));
    }

    public final void a(VastView vastView) {
        UiUtils.prepareFullscreen(this);
        Utils.removeFromParent(vastView);
        setContentView(vastView);
        UiUtils.applyFullscreen(this);
        Utils.applyWindowInsets(this);
    }

    @Override // io.bidmachine.rendering.internal.AdActivity
    public void a() {
        VastView vastView = this.c;
        if (vastView != null) {
            vastView.handleBackPress();
        }
    }

    public final void a(int i2) {
        setRequestedOrientation(i2 == 1 ? 7 : i2 == 2 ? 6 : 4);
    }

    public final void a(VastRequest vastRequest, IabError iabError) {
        VastActivityListener vastActivityListener = this.d;
        if (vastActivityListener != null) {
            vastActivityListener.onVastShowFailed(vastRequest, iabError);
        }
    }

    public final void a(VastRequest vastRequest, boolean z) {
        VastActivityListener vastActivityListener = this.d;
        if (vastActivityListener != null && !this.g) {
            vastActivityListener.onVastDismiss(this, vastRequest, z);
        }
        this.g = true;
        try {
            getWindow().clearFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        } catch (Exception e) {
            VastLog.e("VastActivity", e.getMessage(), new Object[0]);
        }
        if (vastRequest != null) {
            a(vastRequest.getRequestedOrientation());
        }
        UiUtils.finishActivityWithoutAnimation(this);
    }
}
