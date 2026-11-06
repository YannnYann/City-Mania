package com.ironsource;

import android.app.Activity;
import com.ironsource.C3871u6;
import com.ironsource.InterfaceC3961z6;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class N6 implements InterfaceC3961z6, C3871u6.b, C3871u6.a {
    private final C3770p0 a;
    private final InterfaceC3961z6.a b;
    private final InterfaceC3889v6 c;
    private final InterfaceC3925x6 d;
    private final InterfaceC3943y6 e;
    private C3871u6 f;

    public N6(C3770p0 adTools, InterfaceC3961z6.a config, InterfaceC3889v6 fullscreenAdUnitFactory, InterfaceC3925x6 fullscreenAdUnitListener, InterfaceC3943y6 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adTools;
        this.b = config;
        this.c = fullscreenAdUnitFactory;
        this.d = fullscreenAdUnitListener;
        this.e = listener;
    }

    public final C3770p0 a() {
        return this.a;
    }

    public final InterfaceC3961z6.a b() {
        return this.b;
    }

    @Override // com.ironsource.C3871u6.b
    public void c(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.InterfaceC3961z6
    public void loadAd() {
        C3871u6 c3871u6A = this.c.a(true, this.d);
        c3871u6A.a(this);
        this.f = c3871u6A;
    }

    @Override // com.ironsource.InterfaceC3961z6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3871u6 c3871u6 = this.f;
        if (c3871u6 != null) {
            c3871u6.a(activity, this);
        }
    }

    @Override // com.ironsource.C3871u6.b
    public void b(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(adInfo);
    }

    @Override // com.ironsource.C3871u6.b
    public void a(C3871u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f = null;
        this.e.a();
    }

    @Override // com.ironsource.C3871u6.b
    public void b(C3871u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.b(ironSourceError);
    }

    @Override // com.ironsource.C3871u6.a
    public void a(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.a(adInfo);
    }

    @Override // com.ironsource.C3871u6.a
    public void a(C3871u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.c(ironSourceError);
    }
}
