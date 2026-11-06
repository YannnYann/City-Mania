package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class p3 {
    public static final o3 Companion = new o3();
    public final c3 a;
    public final t1 b;
    public final n1 c;
    public final m3 d;
    public final int e;

    public /* synthetic */ p3(int i, c3 c3Var, t1 t1Var, n1 n1Var, m3 m3Var, int i2) {
        if (17 != (i & 17)) {
            PluginExceptionsKt.throwMissingFieldException(i, 17, n3.a.getDescriptor());
        }
        this.a = c3Var;
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = t1Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = n1Var;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = m3Var;
        }
        this.e = i2;
    }

    public static final void a(p3 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, x2.a, self.a);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, r1.a, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, l1.a, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, k3.a, self.d);
        }
        output.encodeIntElement(serialDesc, 4, self.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p3)) {
            return false;
        }
        p3 p3Var = (p3) obj;
        return Intrinsics.areEqual(this.a, p3Var.a) && Intrinsics.areEqual(this.b, p3Var.b) && Intrinsics.areEqual(this.c, p3Var.c) && Intrinsics.areEqual(this.d, p3Var.d) && this.e == p3Var.e;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        t1 t1Var = this.b;
        int iHashCode2 = (iHashCode + (t1Var == null ? 0 : t1Var.hashCode())) * 31;
        n1 n1Var = this.c;
        int iHashCode3 = (iHashCode2 + (n1Var == null ? 0 : n1Var.hashCode())) * 31;
        m3 m3Var = this.d;
        return Integer.hashCode(this.e) + ((iHashCode3 + (m3Var != null ? m3Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("RtbToken(device=");
        sbA.append(this.a);
        sbA.append(", user=");
        sbA.append(this.b);
        sbA.append(", ext=");
        sbA.append(this.c);
        sbA.append(", request=");
        sbA.append(this.d);
        sbA.append(", ordinalView=");
        sbA.append(this.e);
        sbA.append(')');
        return sbA.toString();
    }

    public p3(c3 device, t1 t1Var, n1 n1Var, m3 m3Var, int i) {
        Intrinsics.checkNotNullParameter(device, "device");
        this.a = device;
        this.b = t1Var;
        this.c = n1Var;
        this.d = m3Var;
        this.e = i;
    }
}
