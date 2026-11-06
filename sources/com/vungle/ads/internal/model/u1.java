package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class u1 {
    public static final e1 Companion = new e1();
    public final c3 a;
    public final m0 b;
    public final t1 c;
    public n1 d;
    public q1 e;

    public /* synthetic */ u1(int i, c3 c3Var, m0 m0Var, t1 t1Var, n1 n1Var, q1 q1Var) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, r0.a.getDescriptor());
        }
        this.a = c3Var;
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = m0Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = t1Var;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = n1Var;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = q1Var;
        }
    }

    public static final void a(u1 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, x2.a, self.a);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, k0.a, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, r1.a, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, l1.a, self.d);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && self.e == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 4, o1.a, self.e);
    }

    public final n1 b() {
        return this.d;
    }

    public final q1 c() {
        return this.e;
    }

    public final t1 d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u1)) {
            return false;
        }
        u1 u1Var = (u1) obj;
        return Intrinsics.areEqual(this.a, u1Var.a) && Intrinsics.areEqual(this.b, u1Var.b) && Intrinsics.areEqual(this.c, u1Var.c) && Intrinsics.areEqual(this.d, u1Var.d) && Intrinsics.areEqual(this.e, u1Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        m0 m0Var = this.b;
        int iHashCode2 = (iHashCode + (m0Var == null ? 0 : m0Var.hashCode())) * 31;
        t1 t1Var = this.c;
        int iHashCode3 = (iHashCode2 + (t1Var == null ? 0 : t1Var.hashCode())) * 31;
        n1 n1Var = this.d;
        int iHashCode4 = (iHashCode3 + (n1Var == null ? 0 : n1Var.hashCode())) * 31;
        q1 q1Var = this.e;
        return iHashCode4 + (q1Var != null ? q1Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("CommonRequestBody(device=");
        sbA.append(this.a);
        sbA.append(", app=");
        sbA.append(this.b);
        sbA.append(", user=");
        sbA.append(this.c);
        sbA.append(", ext=");
        sbA.append(this.d);
        sbA.append(", request=");
        sbA.append(this.e);
        sbA.append(')');
        return sbA.toString();
    }

    public u1(c3 device, m0 m0Var, t1 t1Var, n1 n1Var, q1 q1Var) {
        Intrinsics.checkNotNullParameter(device, "device");
        this.a = device;
        this.b = m0Var;
        this.c = t1Var;
        this.d = n1Var;
        this.e = q1Var;
    }

    public final c3 a() {
        return this.a;
    }

    public final void a(n1 n1Var) {
        this.d = n1Var;
    }

    public final void a(q1 q1Var) {
        this.e = q1Var;
    }

    public /* synthetic */ u1(c3 c3Var, m0 m0Var, t1 t1Var) {
        this(c3Var, m0Var, t1Var, null, null);
    }
}
