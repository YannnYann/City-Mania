package com.ironsource;

import android.content.Context;
import com.ironsource.E0;
import com.ironsource.If;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: renamed from: com.ironsource.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3716m0 extends C3948yb {
    private final E5 a;
    private final If.b b;
    private final M8 c;

    public C3716m0() {
        IronSource.a aVar = IronSource.a.BANNER;
        this.a = new E5(aVar, E0.b.MEDIATION, null, null, 12, null);
        If.b bVarB = If.b(aVar);
        Intrinsics.checkNotNullExpressionValue(bVarB, "createLogFactory(...)");
        this.b = bVarB;
        this.c = Pb.w.d().f();
    }

    public static /* synthetic */ String a(C3716m0 c3716m0, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return c3716m0.a(str, str2);
    }

    private final Float d() {
        C3468ab c3468abA = this.c.a();
        Float fValueOf = c3468abA != null ? Float.valueOf(c3468abA.k()) : null;
        if (fValueOf != null) {
            return fValueOf;
        }
        this.a.h().f("MaxScreenSizePercentageForBannerHeight is null: Error getting sdk configurations");
        return null;
    }

    public final Integer b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float fD = d();
        if (fD != null) {
            return Integer.valueOf(MathKt__MathJVMKt.roundToInt(fD.floatValue() * C3578e5.a.a(context)));
        }
        return null;
    }

    public final List<LevelPlayAdSize> c() {
        C3468ab c3468abA = this.c.a();
        if (c3468abA != null) {
            return c3468abA.j();
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final String a(String str, String str2) {
        String strA = this.b.a(str, str2);
        Intrinsics.checkNotNullExpressionValue(strA, "createLogMessage(...)");
        return strA;
    }

    public final int a(int i) {
        return com.ironsource.mediationsdk.j.a(i);
    }

    private final ISBannerSize a(LevelPlayAdSize levelPlayAdSize) {
        LevelPlayAdSize fallbackAdSize$mediationsdk_release = levelPlayAdSize.getFallbackAdSize$mediationsdk_release();
        if (fallbackAdSize$mediationsdk_release == null) {
            fallbackAdSize$mediationsdk_release = LevelPlayAdSize.BANNER;
        }
        ISBannerSize iSBannerSizeB = b(fallbackAdSize$mediationsdk_release);
        iSBannerSizeB.setAdaptive(true);
        com.ironsource.mediationsdk.m.a.a(iSBannerSizeB, new Y7(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight()));
        return iSBannerSizeB;
    }

    private final ISBannerSize c(LevelPlayAdSize levelPlayAdSize) {
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.LARGE)) {
            return new ISBannerSize("LARGE", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
        }
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.MEDIUM_RECTANGLE)) {
            return new ISBannerSize("RECTANGLE", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
        }
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.LEADERBOARD)) {
            return new ISBannerSize("SMART", 0, 0);
        }
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.Companion.createCustomSize(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight()))) {
            return new ISBannerSize(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
        }
        return new ISBannerSize("BANNER", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
    }

    public final ISBannerSize b(LevelPlayAdSize size) {
        Intrinsics.checkNotNullParameter(size, "size");
        boolean zIsAdaptive = size.isAdaptive();
        if (zIsAdaptive) {
            return a(size);
        }
        if (!zIsAdaptive) {
            return c(size);
        }
        throw new NoWhenBranchMatchedException();
    }
}
