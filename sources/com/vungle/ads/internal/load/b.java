package com.vungle.ads.internal.load;

import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleCSBData;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.model.q0;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Serializable {
    public final j3 a;
    public final q0 b;
    public final VungleAdSize c;
    public final VungleCSBData d;
    public final String e;

    public /* synthetic */ b(j3 j3Var, q0 q0Var, VungleAdSize vungleAdSize) {
        this(j3Var, q0Var, vungleAdSize, null, null);
    }

    public final q0 a() {
        return this.b;
    }

    public final VungleCSBData b() {
        return this.d;
    }

    public final String c() {
        return this.e;
    }

    public final j3 d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(b.class, obj.getClass())) {
            b bVar = (b) obj;
            if (!Intrinsics.areEqual(this.a.b(), bVar.a.b()) || !Intrinsics.areEqual(this.c, bVar.c) || !Intrinsics.areEqual(this.e, bVar.e)) {
                return false;
            }
            q0 q0Var = this.b;
            if (q0Var != null) {
                if (!Intrinsics.areEqual(q0Var, bVar.b)) {
                    return false;
                }
            } else if (bVar.b != null) {
                return false;
            }
            VungleCSBData vungleCSBData = this.d;
            VungleCSBData vungleCSBData2 = bVar.d;
            if (vungleCSBData != null) {
                return Intrinsics.areEqual(vungleCSBData, vungleCSBData2);
            }
            if (vungleCSBData2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.a.hashCode() * 31;
        VungleAdSize vungleAdSize = this.c;
        int iHashCode2 = (iHashCode + (vungleAdSize != null ? vungleAdSize.hashCode() : 0)) * 31;
        q0 q0Var = this.b;
        int iHashCode3 = (iHashCode2 + (q0Var != null ? q0Var.hashCode() : 0)) * 31;
        VungleCSBData vungleCSBData = this.d;
        int iHashCode4 = (iHashCode3 + (vungleCSBData != null ? vungleCSBData.hashCode() : 0)) * 31;
        String str = this.e;
        return iHashCode4 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("AdRequest{placementId='");
        sbA.append(this.a.a);
        sbA.append("', adMarkup=");
        sbA.append(this.b);
        sbA.append(", requestAdSize=");
        sbA.append(this.c);
        sbA.append(", csbData=");
        sbA.append(this.d);
        sbA.append(", mediationPartnerName='");
        sbA.append(this.e);
        sbA.append("'}");
        return sbA.toString();
    }

    public b(j3 placement, q0 q0Var, VungleAdSize vungleAdSize, VungleCSBData vungleCSBData, String str) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.a = placement;
        this.b = q0Var;
        this.c = vungleAdSize;
        this.d = vungleCSBData;
        this.e = str;
    }
}
