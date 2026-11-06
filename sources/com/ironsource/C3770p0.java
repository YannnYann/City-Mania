package com.ironsource;

import com.ironsource.E0;
import com.ironsource.If;
import com.ironsource.InterfaceC3961z6;
import com.ironsource.Za;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3770p0 extends C3948yb {
    private final IronSource.a a;
    private final If.b b;
    private final E5 c;
    private final M8 d;
    private final long e;

    /* JADX INFO: renamed from: com.ironsource.p0$a */
    public static final class a {
        public static final a a = new a();

        private a() {
        }

        public static final C3770p0 a(IronSource.a adFormat, E0.b level) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            Intrinsics.checkNotNullParameter(level, "level");
            return new C3770p0(adFormat, level);
        }
    }

    public C3770p0(IronSource.a adFormat, E0.b level) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        this.d = Pb.w.d().f();
        this.e = TimeUnit.HOURS.toMillis(1L);
        this.a = adFormat;
        this.c = new E5(adFormat, level, null, null, 12, null);
        If.b bVarB = If.b(adFormat);
        Intrinsics.checkNotNullExpressionValue(bVarB, "createLogFactory(...)");
        this.b = bVarB;
    }

    public static /* synthetic */ String a(C3770p0 c3770p0, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLogMessage");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return c3770p0.a(str, str2);
    }

    public final String b(String str) {
        return a(this, str, (String) null, 2, (Object) null);
    }

    public final com.ironsource.lifecycle.b c() {
        com.ironsource.lifecycle.b bVarD = com.ironsource.lifecycle.b.d();
        Intrinsics.checkNotNullExpressionValue(bVarD, "getInstance(...)");
        return bVarD;
    }

    public final String d() {
        return a(this, (String) null, (String) null, 3, (Object) null);
    }

    public final IronSource.a e() {
        return this.a;
    }

    public final E5 f() {
        return this.c;
    }

    public final int g() {
        return Pb.w.d().s().a(this.a);
    }

    public final String a(String str, String str2) {
        String strA = this.b.a(str, str2);
        Intrinsics.checkNotNullExpressionValue(strA, "createLogMessage(...)");
        return strA;
    }

    @InterfaceC3930xb
    public final InterfaceC3961z6.a b(LevelPlay.AdFormat adFormat, String adUnitId) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3468ab c3468abA = this.d.a();
        if (c3468abA != null) {
            return c3468abA.b(adFormat, adUnitId);
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final C3729md c(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        C3468ab c3468abA = this.d.a();
        if (c3468abA == null) {
            throw new IllegalStateException("Error getting sdk configurations");
        }
        C3729md c3729mdC = c3468abA.c(LevelPlay.AdFormat.NATIVE_AD, placementName);
        if (c3729mdC != null) {
            return c3729mdC;
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final Za.a d(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3468ab c3468abA = this.d.a();
        if (c3468abA != null) {
            return c3468abA.a(adUnitId);
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final C3729md a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        C3468ab c3468abA = this.d.a();
        if (c3468abA != null) {
            C3729md c3729mdC = c3468abA.c(LevelPlay.AdFormat.BANNER, placementName);
            if (c3729mdC != null) {
                return c3729mdC;
            }
            throw new IllegalStateException("Error getting placement");
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        C3468ab c3468abA = this.d.a();
        return c3468abA != null ? c3468abA.b(adFormat) : this.e;
    }

    public final C3729md a(LevelPlay.AdFormat adFormat, String str) {
        C3468ab c3468abA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        if (str == null || (c3468abA = this.d.a()) == null) {
            return null;
        }
        return c3468abA.c(adFormat, str);
    }

    public C3770p0(C3770p0 adTools, E0.b level) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(level, "level");
        this.d = Pb.w.d().f();
        this.e = TimeUnit.HOURS.toMillis(1L);
        IronSource.a aVar = adTools.a;
        this.a = aVar;
        this.b = adTools.b;
        this.c = new E5(aVar, level, adTools.c.c(), null, 8, null);
    }

    public final void a(Map<String, Object> data, ISBannerSize size) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(size, "size");
        com.ironsource.mediationsdk.j.a(data, size);
    }

    public final ISBannerSize a(LevelPlayAdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        return new C3716m0().b(adSize);
    }
}
