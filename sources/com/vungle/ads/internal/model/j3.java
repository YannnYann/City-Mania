package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final class j3 {
    public static final i3 Companion = new i3();
    public final String a;
    public final boolean b;
    public final String c;

    public /* synthetic */ j3(int i, String str, boolean z, String str2) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, h3.a.getDescriptor());
        }
        this.a = str;
        if ((i & 2) == 0) {
            this.b = false;
        } else {
            this.b = z;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = str2;
        }
    }

    public static final void a(j3 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.a);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b) {
            output.encodeBooleanElement(serialDesc, 1, self.b);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.c == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.c);
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final boolean d() {
        return Intrinsics.areEqual(this.c, "appopen");
    }

    public final boolean e() {
        return Intrinsics.areEqual(this.c, "banner");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j3)) {
            return false;
        }
        j3 j3Var = (j3) obj;
        return Intrinsics.areEqual(this.a, j3Var.a) && this.b == j3Var.b && Intrinsics.areEqual(this.c, j3Var.c);
    }

    public final boolean f() {
        return Intrinsics.areEqual(this.c, "in_line");
    }

    public final boolean g() {
        return Intrinsics.areEqual(this.c, "interstitial");
    }

    public final boolean h() {
        return Intrinsics.areEqual(this.c, "mrec");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        boolean z = this.b;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        String str = this.c;
        return i + (str == null ? 0 : str.hashCode());
    }

    public final boolean i() {
        return Intrinsics.areEqual(this.c, "native");
    }

    public final boolean j() {
        return Intrinsics.areEqual(this.c, "rewarded");
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Placement(referenceId=");
        sbA.append(this.a);
        sbA.append(", headerBidding=");
        sbA.append(this.b);
        sbA.append(", type=");
        sbA.append(this.c);
        sbA.append(')');
        return sbA.toString();
    }

    public j3(String referenceId, String str, boolean z) {
        Intrinsics.checkNotNullParameter(referenceId, "referenceId");
        this.a = referenceId;
        this.b = z;
        this.c = str;
    }

    public final boolean a() {
        return this.b;
    }

    public /* synthetic */ j3(String str) {
        this(str, null, false);
    }
}
