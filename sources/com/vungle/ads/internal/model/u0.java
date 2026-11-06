package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 {
    public static final t0 Companion = new t0();
    public final int a;
    public final int b;

    public u0(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static final void a(u0 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeIntElement(serialDesc, 0, self.a);
        output.encodeIntElement(serialDesc, 1, self.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u0)) {
            return false;
        }
        u0 u0Var = (u0) obj;
        return this.a == u0Var.a && this.b == u0Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("AdSizeParam(width=");
        sbA.append(this.a);
        sbA.append(", height=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }

    public /* synthetic */ u0(int i, int i2, int i3) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, s0.a.getDescriptor());
        }
        this.a = i2;
        this.b = i3;
    }
}
