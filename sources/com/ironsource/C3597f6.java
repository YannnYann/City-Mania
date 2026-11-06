package com.ironsource;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.f6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3597f6 implements Rc {
    private InterfaceC3615g6 a;
    private WeakReference<InterfaceC3633h6> b = new WeakReference<>(null);

    /* JADX INFO: renamed from: com.ironsource.f6$a */
    public static final class a {
        public static final a a = new a();
        public static final String b = "impressions";

        private a() {
        }
    }

    public final void a(InterfaceC3615g6 loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        this.a = loadListener;
    }

    @Override // com.ironsource.Rc
    public void onInterstitialAdRewarded(String str, int i) {
        InterfaceC3633h6 interfaceC3633h6 = this.b.get();
        if (interfaceC3633h6 != null) {
            interfaceC3633h6.onAdInstanceDidReward(str, i);
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialClick() {
        InterfaceC3633h6 interfaceC3633h6 = this.b.get();
        if (interfaceC3633h6 != null) {
            interfaceC3633h6.onAdInstanceDidClick();
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialClose() {
        InterfaceC3633h6 interfaceC3633h6 = this.b.get();
        if (interfaceC3633h6 != null) {
            interfaceC3633h6.onAdInstanceDidDismiss();
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialEventNotificationReceived(String str, JSONObject jSONObject) {
        InterfaceC3633h6 interfaceC3633h6;
        if (!Intrinsics.areEqual(str, "impressions") || (interfaceC3633h6 = this.b.get()) == null) {
            return;
        }
        interfaceC3633h6.onAdInstanceDidBecomeVisible();
    }

    @Override // com.ironsource.Rc
    public void onInterstitialInitFailed(String str) {
    }

    @Override // com.ironsource.Rc
    public void onInterstitialInitSuccess() {
    }

    @Override // com.ironsource.Rc
    public void onInterstitialLoadFailed(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        InterfaceC3615g6 interfaceC3615g6 = this.a;
        if (interfaceC3615g6 != null) {
            interfaceC3615g6.a(description);
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialLoadSuccess(R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        InterfaceC3615g6 interfaceC3615g6 = this.a;
        if (interfaceC3615g6 != null) {
            interfaceC3615g6.a(adInstance);
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialOpen() {
        InterfaceC3633h6 interfaceC3633h6 = this.b.get();
        if (interfaceC3633h6 != null) {
            interfaceC3633h6.onAdInstanceDidShow();
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialShowFailed(String str) {
        InterfaceC3633h6 interfaceC3633h6 = this.b.get();
        if (interfaceC3633h6 != null) {
            interfaceC3633h6.a(str);
        }
    }

    @Override // com.ironsource.Rc
    public void onInterstitialShowSuccess() {
    }

    public final void a(InterfaceC3633h6 showListener) {
        Intrinsics.checkNotNullParameter(showListener, "showListener");
        this.b = new WeakReference<>(showListener);
    }
}
