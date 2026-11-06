package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 {
    public static final c1 Companion = new c1();
    public final double a;
    public final int b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public d1(double d, int i, boolean z, String parentAuctionId, String creativeId, String adUnitId, String str) {
        Intrinsics.checkNotNullParameter(parentAuctionId, "parentAuctionId");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        this.a = d;
        this.b = i;
        this.c = z;
        this.d = parentAuctionId;
        this.e = creativeId;
        this.f = adUnitId;
        this.g = str;
    }

    public static final void a(d1 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeDoubleElement(serialDesc, 0, self.a);
        output.encodeIntElement(serialDesc, 1, self.b);
        output.encodeBooleanElement(serialDesc, 2, self.c);
        output.encodeStringElement(serialDesc, 3, self.d);
        output.encodeStringElement(serialDesc, 4, self.e);
        output.encodeStringElement(serialDesc, 5, self.f);
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && self.g == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return Intrinsics.areEqual(Double.valueOf(this.a), Double.valueOf(d1Var.a)) && this.b == d1Var.b && this.c == d1Var.c && Intrinsics.areEqual(this.d, d1Var.d) && Intrinsics.areEqual(this.e, d1Var.e) && Intrinsics.areEqual(this.f, d1Var.f) && Intrinsics.areEqual(this.g, d1Var.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    public final int hashCode() {
        int iHashCode = (Integer.hashCode(this.b) + (Double.hashCode(this.a) * 31)) * 31;
        boolean z = this.c;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode2 = (this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((iHashCode + r0) * 31)) * 31)) * 31)) * 31;
        String str = this.g;
        return iHashCode2 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("CSBParam(bidfloor=");
        sbA.append(this.a);
        sbA.append(", phase=");
        sbA.append(this.b);
        sbA.append(", isVXWinner=");
        sbA.append(this.c);
        sbA.append(", parentAuctionId=");
        sbA.append(this.d);
        sbA.append(", creativeId=");
        sbA.append(this.e);
        sbA.append(", adUnitId=");
        sbA.append(this.f);
        sbA.append(", ext=");
        sbA.append(this.g);
        sbA.append(')');
        return sbA.toString();
    }

    public /* synthetic */ d1(int i, double d, int i2, boolean z, String str, String str2, String str3, String str4) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, b1.a.getDescriptor());
        }
        this.a = d;
        this.b = i2;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
        if ((i & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
    }
}
