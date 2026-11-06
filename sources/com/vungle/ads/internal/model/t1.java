package com.vungle.ads.internal.model;

import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.fpd.FirstPartyData$$serializer;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class t1 {
    public static final s1 Companion = new s1();
    public h1 a;
    public x0 b;
    public a1 c;
    public FirstPartyData d;
    public k1 e;

    public /* synthetic */ t1(int i, h1 h1Var, x0 x0Var, a1 a1Var, FirstPartyData firstPartyData, k1 k1Var) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = h1Var;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = x0Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = a1Var;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = firstPartyData;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = k1Var;
        }
    }

    public static final void a(t1 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, f1.a, self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, v0.a, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, y0.a, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, FirstPartyData$$serializer.INSTANCE, self.d);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && self.e == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 4, i1.a, self.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t1)) {
            return false;
        }
        t1 t1Var = (t1) obj;
        return Intrinsics.areEqual(this.a, t1Var.a) && Intrinsics.areEqual(this.b, t1Var.b) && Intrinsics.areEqual(this.c, t1Var.c) && Intrinsics.areEqual(this.d, t1Var.d) && Intrinsics.areEqual(this.e, t1Var.e);
    }

    public final int hashCode() {
        h1 h1Var = this.a;
        int iHashCode = (h1Var == null ? 0 : h1Var.hashCode()) * 31;
        x0 x0Var = this.b;
        int iHashCode2 = (iHashCode + (x0Var == null ? 0 : x0Var.a.hashCode())) * 31;
        a1 a1Var = this.c;
        int iHashCode3 = (iHashCode2 + (a1Var == null ? 0 : a1Var.hashCode())) * 31;
        FirstPartyData firstPartyData = this.d;
        int iHashCode4 = (iHashCode3 + (firstPartyData == null ? 0 : firstPartyData.hashCode())) * 31;
        k1 k1Var = this.e;
        return iHashCode4 + (k1Var != null ? k1Var.a.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("User(gdpr=");
        sbA.append(this.a);
        sbA.append(", ccpa=");
        sbA.append(this.b);
        sbA.append(", coppa=");
        sbA.append(this.c);
        sbA.append(", fpd=");
        sbA.append(this.d);
        sbA.append(", iab=");
        sbA.append(this.e);
        sbA.append(')');
        return sbA.toString();
    }

    public t1(h1 h1Var, x0 x0Var, a1 a1Var, FirstPartyData firstPartyData, k1 k1Var) {
        this.a = h1Var;
        this.b = x0Var;
        this.c = a1Var;
        this.d = firstPartyData;
        this.e = k1Var;
    }
}
