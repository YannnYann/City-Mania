package com.ironsource;

import android.app.Activity;
import com.ironsource.InterfaceC3680k0;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3704l6 implements InterfaceC3853t6 {
    private final C3547cb a;
    private final a b;
    private final LevelPlayAdInfo c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: renamed from: com.ironsource.l6$a */
    public static final class a {
        public static final a a = new a("Created", 0);
        public static final a b = new a("Closed", 1);
        public static final a c = new a("Expired", 2);
        public static final a d = new a("ShowFailed", 3);
        public static final a e = new a("LoadFailed", 4);
        private static final /* synthetic */ a[] f;
        private static final /* synthetic */ EnumEntries g;

        static {
            a[] aVarArrA = a();
            f = aVarArrA;
            g = EnumEntriesKt.enumEntries(aVarArrA);
        }

        private a(String str, int i) {
        }

        private static final /* synthetic */ a[] a() {
            return new a[]{a, b, c, d, e};
        }

        public static EnumEntries<a> b() {
            return g;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f.clone();
        }
    }

    public C3704l6(C3547cb adInternal, a status) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(status, "status");
        this.a = adInternal;
        this.b = status;
        String string = adInternal.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.c = new LevelPlayAdInfo(string, adInternal.h(), adInternal.d().toString(), null, null, null, null, 120, null);
    }

    private final boolean d() {
        if (this.a.h().length() == 0) {
            C3547cb c3547cb = this.a;
            String string = this.a.e().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            C3547cb.a(c3547cb, new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_NO_AD_UNIT_ID_SPECIFIED, "Ad unit ID should be specified"), 0L, 2, null);
            return false;
        }
        if (!this.a.f().a()) {
            C3547cb c3547cb2 = this.a;
            String string2 = this.a.e().toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            C3547cb.a(c3547cb2, new LevelPlayAdError(string2, this.a.h(), LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, "Load must be called after init success callback"), 0L, 2, null);
            return false;
        }
        C3468ab c3468abA = this.a.l().f().a();
        if (c3468abA != null && c3468abA.a(this.a.h(), this.a.d())) {
            return true;
        }
        C3547cb c3547cb3 = this.a;
        String string3 = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        C3547cb.a(c3547cb3, new LevelPlayAdError(string3, this.a.h(), LevelPlayAdError.ERROR_CODE_INVALID_AD_UNIT_ID, "Invalid ad unit id"), 0L, 2, null);
        return false;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String str2 = this.b == a.c ? "Show called on expired ad" : "Show called before load success";
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, str2), this.c);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public LevelPlayAdInfo b() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public InterfaceC3680k0 c() {
        return new InterfaceC3680k0.a(this.b == a.c ? "ad is invalid due to loading time" : "load ad was not called");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void loadAd() {
        if (d()) {
            this.a.o();
        }
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClicked() {
        this.a.b("onAdClicked on " + this.b + " state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClosed() {
        this.a.b("onAdClosed on " + this.b + " state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdDisplayed on " + this.b + " state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdInfoChanged on " + this.b + " state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on " + this.b + " state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on " + this.b + " state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdDisplayFailed on " + this.b + " state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a() {
        this.a.b("onAdExpired on " + this.b + " state");
    }

    public /* synthetic */ C3704l6(C3547cb c3547cb, a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3547cb, (i & 2) != 0 ? a.a : aVar);
    }
}
