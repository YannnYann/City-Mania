package com.ironsource;

import com.ironsource.E0;
import com.ironsource.InterfaceC3709lb;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.mb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3727mb extends Ca implements InterfaceC3530bc {
    private final UUID d;
    private final C3691kb e;
    private Yb f;
    private String g;
    private C3729md h;
    private InterfaceC3763ob i;
    private AdapterNativeAdData j;
    private AdapterNativeAdViewBinder k;

    public /* synthetic */ C3727mb(UUID uuid, C3691kb c3691kb, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? C3962z7.a.a() : uuid, c3691kb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3727mb c3727mb) {
        c3727mb.a().f().a(new C3733n(IronSource.a.NATIVE_AD, c3727mb.d, c3727mb.b()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3727mb c3727mb) {
        IronLog.API.info(String.valueOf(c3727mb));
        try {
            Yb yb = c3727mb.f;
            if (yb == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
                yb = null;
            }
            yb.n();
            c3727mb.i = null;
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.API.error("destroyNativeAd()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3727mb c3727mb) {
        Yb yb = null;
        if (c3727mb.c()) {
            IronLog.INTERNAL.warning(C3770p0.a(c3727mb.a(), "Native ad load already called", (String) null, 2, (Object) null));
            return;
        }
        c3727mb.a(true);
        if (c3727mb.d()) {
            Yb yb2 = c3727mb.f;
            if (yb2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            } else {
                yb = yb2;
            }
            yb.o();
        }
    }

    @InterfaceC3930xb
    private final Yb e() {
        this.h = a().c(this.g);
        UUID uuid = this.d;
        String strB = b();
        C3729md c3729md = this.h;
        if (c3729md == null) {
            Intrinsics.throwUninitializedPropertyAccessException("placement");
            c3729md = null;
        }
        C3657ic c3657ic = new C3657ic(uuid, strB, c3729md);
        a(c3657ic);
        return new Yb(this, a(), c3657ic);
    }

    @Override // com.ironsource.Ca
    public boolean d() {
        this.f = e();
        return true;
    }

    public final void f() {
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.b(this.f$0);
            }
        });
    }

    public final UUID g() {
        return this.d;
    }

    public final String h() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getAdvertiser();
        }
        return null;
    }

    public final String i() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getBody();
        }
        return null;
    }

    public final String j() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getCallToAction();
        }
        return null;
    }

    public final InterfaceC3709lb.a k() {
        NativeAdDataInterface.Image icon;
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData == null || (icon = adapterNativeAdData.getIcon()) == null) {
            return null;
        }
        return new InterfaceC3709lb.a(icon.getDrawable(), icon.getUri());
    }

    public final AdapterNativeAdViewBinder l() {
        return this.k;
    }

    public final String m() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getTitle();
        }
        return null;
    }

    public final void n() {
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3530bc
    public void onNativeAdLoadFailed(IronSourceError ironSourceError) {
        String string = this.d.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        final LevelPlayAdError levelPlayAdError = new LevelPlayAdError(ironSourceError, string, b());
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.a(this.f$0, levelPlayAdError);
            }
        });
    }

    public final void a(final InterfaceC3763ob interfaceC3763ob) {
        a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.a(this.f$0, interfaceC3763ob);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3727mb(UUID adId, C3691kb nativeAd) {
        super(new C3770p0(IronSource.a.NATIVE_AD, E0.b.MEDIATION));
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.d = adId;
        this.e = nativeAd;
        this.g = "";
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.a(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3727mb c3727mb, InterfaceC3763ob interfaceC3763ob) {
        c3727mb.i = interfaceC3763ob;
    }

    @Override // com.ironsource.InterfaceC3530bc
    public void a(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.info(String.valueOf(this));
        Vb vb = new Vb();
        Yb yb = this.f;
        if (yb == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            yb = null;
        }
        yb.a(vb);
        this.j = vb.a();
        this.k = vb.b();
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.b(this.f$0, adInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3727mb c3727mb, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3763ob interfaceC3763ob = c3727mb.i;
        if (interfaceC3763ob != null) {
            interfaceC3763ob.b(c3727mb.e, levelPlayAdInfo);
        }
    }

    @Override // com.ironsource.InterfaceC3530bc
    public void b(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.a(this.f$0, adInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3727mb c3727mb, LevelPlayAdError levelPlayAdError) {
        InterfaceC3763ob interfaceC3763ob = c3727mb.i;
        if (interfaceC3763ob != null) {
            interfaceC3763ob.a(c3727mb.e, levelPlayAdError);
        }
    }

    public final void b(final String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3727mb.a(this.f$0, placementName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3727mb c3727mb, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3763ob interfaceC3763ob = c3727mb.i;
        if (interfaceC3763ob != null) {
            interfaceC3763ob.c(c3727mb.e, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3727mb c3727mb, String str) {
        c3727mb.g = str;
    }
}
