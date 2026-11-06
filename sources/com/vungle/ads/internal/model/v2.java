package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class v2 {
    public static final u2 Companion = new u2();
    public final l2 a;
    public final p2 b;

    public /* synthetic */ v2(int i, l2 l2Var, p2 p2Var) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = l2Var;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = p2Var;
        }
    }

    public static final void a(v2 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, j2.a, self.a);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.b == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, m2.a, self.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v2)) {
            return false;
        }
        v2 v2Var = (v2) obj;
        return Intrinsics.areEqual(this.a, v2Var.a) && Intrinsics.areEqual(this.b, v2Var.b);
    }

    public final int hashCode() {
        l2 l2Var = this.a;
        int iHashCode = (l2Var == null ? 0 : l2Var.hashCode()) * 31;
        p2 p2Var = this.b;
        return iHashCode + (p2Var != null ? p2Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("UserPrivacy(gdpr=");
        sbA.append(this.a);
        sbA.append(", iab=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
