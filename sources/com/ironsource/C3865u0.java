package com.ironsource;

import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3865u0 {
    private final AbstractC3792q0 a;
    private final LevelPlayAdInfo b;

    public C3865u0(AbstractC3792q0 adUnit, LevelPlayAdInfo levelPlayAdInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a = adUnit;
        this.b = levelPlayAdInfo;
    }

    public final AbstractC3792q0 a() {
        return this.a;
    }

    public final LevelPlayAdInfo b() {
        return this.b;
    }

    public final LevelPlayAdInfo c() {
        return this.b;
    }

    public final AbstractC3792q0 d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3865u0)) {
            return false;
        }
        C3865u0 c3865u0 = (C3865u0) obj;
        return Intrinsics.areEqual(this.a, c3865u0.a) && Intrinsics.areEqual(this.b, c3865u0.b);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        LevelPlayAdInfo levelPlayAdInfo = this.b;
        return iHashCode + (levelPlayAdInfo == null ? 0 : levelPlayAdInfo.hashCode());
    }

    public String toString() {
        return "AdUnitCallback(adUnit=" + this.a + ", adInfo=" + this.b + ")";
    }

    public /* synthetic */ C3865u0(AbstractC3792q0 abstractC3792q0, LevelPlayAdInfo levelPlayAdInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC3792q0, (i & 2) != 0 ? null : levelPlayAdInfo);
    }

    public final C3865u0 a(AbstractC3792q0 adUnit, LevelPlayAdInfo levelPlayAdInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return new C3865u0(adUnit, levelPlayAdInfo);
    }

    public static /* synthetic */ C3865u0 a(C3865u0 c3865u0, AbstractC3792q0 abstractC3792q0, LevelPlayAdInfo levelPlayAdInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            abstractC3792q0 = c3865u0.a;
        }
        if ((i & 2) != 0) {
            levelPlayAdInfo = c3865u0.b;
        }
        return c3865u0.a(abstractC3792q0, levelPlayAdInfo);
    }
}
