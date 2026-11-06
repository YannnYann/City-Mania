package com.ironsource;

import android.app.Activity;
import com.ironsource.C3871u6;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class G6 implements InterfaceC3961z6, C3871u6.b, C3871u6.a {
    public static final a f = new a(null);
    public static final String g = "Fullscreen ProgressiveOnShown Strategy";
    private final C3770p0 a;
    private final InterfaceC3889v6 b;
    private final InterfaceC3925x6 c;
    private final InterfaceC3943y6 d;
    private M6 e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public G6(C3770p0 adTools, InterfaceC3889v6 factory, InterfaceC3925x6 fullscreenAdUnitListener, InterfaceC3943y6 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adTools;
        this.b = factory;
        this.c = fullscreenAdUnitListener;
        this.d = listener;
        this.e = new H6(this, null, false, 4, null);
    }

    public final C3770p0 a() {
        return this.a;
    }

    public final InterfaceC3889v6 b() {
        return this.b;
    }

    public final InterfaceC3925x6 c() {
        return this.c;
    }

    public final InterfaceC3943y6 d() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3961z6
    public void loadAd() {
        this.e.loadAd();
    }

    @Override // com.ironsource.InterfaceC3961z6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.e.a(activity);
    }

    @Override // com.ironsource.C3871u6.b
    public void b(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.c(adInfo);
    }

    @Override // com.ironsource.C3871u6.b
    public void c(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(adInfo);
    }

    public final void a(M6 state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.e = state;
    }

    @Override // com.ironsource.C3871u6.b
    public void b(C3871u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.b(ironSourceError);
    }

    public final void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.a.f().h().f("Fullscreen ProgressiveOnShown Strategy - " + message);
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

    @Override // com.ironsource.C3871u6.b
    public void a(C3871u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.a();
    }
}
