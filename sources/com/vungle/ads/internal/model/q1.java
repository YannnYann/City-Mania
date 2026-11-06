package com.vungle.ads.internal.model;

import com.vungle.ads.internal.protos.Sdk;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final class q1 {
    public static final p1 Companion = new p1();
    public final List a;
    public u0 b;
    public final String c;
    public final Long d;
    public final String e;
    public final String f;
    public final String g;
    public final d1 h;

    public /* synthetic */ q1(int i, List list, u0 u0Var, String str, Long l, String str2, String str3, String str4, d1 d1Var) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = list;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = u0Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = str;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = l;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = str2;
        }
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = str3;
        }
        if ((i & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) {
            this.h = null;
        } else {
            this.h = d1Var;
        }
    }

    public static final void a(q1 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, new ArrayListSerializer(StringSerializer.INSTANCE), self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, s0.a, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, LongSerializer.INSTANCE, self.d);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.e != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.e);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.f != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.f);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.g != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.g);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 7) && self.h == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 7, b1.a, self.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        return Intrinsics.areEqual(this.a, q1Var.a) && Intrinsics.areEqual(this.b, q1Var.b) && Intrinsics.areEqual(this.c, q1Var.c) && Intrinsics.areEqual(this.d, q1Var.d) && Intrinsics.areEqual(this.e, q1Var.e) && Intrinsics.areEqual(this.f, q1Var.f) && Intrinsics.areEqual(this.g, q1Var.g) && Intrinsics.areEqual(this.h, q1Var.h);
    }

    public final int hashCode() {
        List list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        u0 u0Var = this.b;
        int iHashCode2 = (iHashCode + (u0Var == null ? 0 : u0Var.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.d;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        d1 d1Var = this.h;
        return iHashCode7 + (d1Var != null ? d1Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("RequestParam(placements=");
        sbA.append(this.a);
        sbA.append(", adSize=");
        sbA.append(this.b);
        sbA.append(", mediationName=");
        sbA.append(this.c);
        sbA.append(", adStartTime=");
        sbA.append(this.d);
        sbA.append(", advAppId=");
        sbA.append(this.e);
        sbA.append(", placementReferenceId=");
        sbA.append(this.f);
        sbA.append(", user=");
        sbA.append(this.g);
        sbA.append(", csb=");
        sbA.append(this.h);
        sbA.append(')');
        return sbA.toString();
    }

    public q1(List list, u0 u0Var, String str, Long l, String str2, String str3, String str4, d1 d1Var) {
        this.a = list;
        this.b = u0Var;
        this.c = str;
        this.d = l;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = d1Var;
    }

    public final List a() {
        return this.a;
    }

    public final void a(u0 u0Var) {
        this.b = u0Var;
    }

    public /* synthetic */ q1(List list, String str, Long l, String str2, String str3, String str4, d1 d1Var, int i) {
        this((i & 1) != 0 ? null : list, (u0) null, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : d1Var);
    }
}
