package com.vungle.ads.internal;

import com.vungle.ads.internal.model.j3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 {
    public final com.vungle.ads.internal.model.i0 a;
    public final j3 b;
    public final com.vungle.ads.internal.presenter.z c;

    public u0(com.vungle.ads.internal.model.i0 adPayload, j3 placement, com.vungle.ads.internal.presenter.z zVar) {
        Intrinsics.checkNotNullParameter(adPayload, "adPayload");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.a = adPayload;
        this.b = placement;
        this.c = zVar;
    }

    public final com.vungle.ads.internal.model.i0 a() {
        return this.a;
    }

    public final j3 b() {
        return this.b;
    }

    public final com.vungle.ads.internal.presenter.z c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u0)) {
            return false;
        }
        u0 u0Var = (u0) obj;
        return Intrinsics.areEqual(this.a, u0Var.a) && Intrinsics.areEqual(this.b, u0Var.b) && Intrinsics.areEqual(this.c, u0Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        com.vungle.ads.internal.presenter.z zVar = this.c;
        return iHashCode + (zVar == null ? 0 : zVar.hashCode());
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("PendingData(adPayload=");
        sbA.append(this.a);
        sbA.append(", placement=");
        sbA.append(this.b);
        sbA.append(", presenterDelegate=");
        sbA.append(this.c);
        sbA.append(')');
        return sbA.toString();
    }
}
