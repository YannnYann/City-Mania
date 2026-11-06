package com.vungle.ads.internal.model;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final class c3 {
    public static final y2 Companion = new y2();
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public int f;
    public int g;
    public String h;
    public String i;
    public Integer j;
    public b3 k;

    public /* synthetic */ c3(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, String str6, String str7, Integer num, b3 b3Var) {
        if (119 != (i & Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE)) {
            PluginExceptionsKt.throwMissingFieldException(i, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, x2.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.e = str5;
        this.f = i2;
        this.g = i3;
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) {
            this.h = null;
        } else {
            this.h = str6;
        }
        if ((i & 256) == 0) {
            this.i = null;
        } else {
            this.i = str7;
        }
        if ((i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) == 0) {
            this.j = null;
        } else {
            this.j = num;
        }
        if ((i & 1024) == 0) {
            this.k = null;
        } else {
            this.k = b3Var;
        }
    }

    public static c3 a(c3 c3Var) {
        String make = c3Var.a;
        String model = c3Var.b;
        String osv = c3Var.c;
        String str = c3Var.d;
        String os = c3Var.e;
        int i = c3Var.f;
        int i2 = c3Var.g;
        String str2 = c3Var.h;
        String str3 = c3Var.i;
        Integer num = c3Var.j;
        b3 b3Var = c3Var.k;
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os, "os");
        return new c3(make, model, osv, str, os, i, i2, str2, str3, num, b3Var);
    }

    public final void b(int i) {
        this.f = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c3)) {
            return false;
        }
        c3 c3Var = (c3) obj;
        return Intrinsics.areEqual(this.a, c3Var.a) && Intrinsics.areEqual(this.b, c3Var.b) && Intrinsics.areEqual(this.c, c3Var.c) && Intrinsics.areEqual(this.d, c3Var.d) && Intrinsics.areEqual(this.e, c3Var.e) && this.f == c3Var.f && this.g == c3Var.g && Intrinsics.areEqual(this.h, c3Var.h) && Intrinsics.areEqual(this.i, c3Var.i) && Intrinsics.areEqual(this.j, c3Var.j) && Intrinsics.areEqual(this.k, c3Var.k);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        String str = this.d;
        int iHashCode2 = (Integer.hashCode(this.g) + ((Integer.hashCode(this.f) + ((this.e.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31;
        String str2 = this.h;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.i;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.j;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        b3 b3Var = this.k;
        return iHashCode5 + (b3Var != null ? b3Var.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceNode(make=" + this.a + ", model=" + this.b + ", osv=" + this.c + ", carrier=" + this.d + ", os=" + this.e + ", w=" + this.f + ", h=" + this.g + ", ua=" + this.h + ", ifa=" + this.i + ", lmt=" + this.j + ", ext=" + this.k + ')';
    }

    public c3(String make, String model, String osv, String str, String os, int i, int i2, String str2, String str3, Integer num, b3 b3Var) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os, "os");
        this.a = make;
        this.b = model;
        this.c = osv;
        this.d = str;
        this.e = os;
        this.f = i;
        this.g = i2;
        this.h = str2;
        this.i = str3;
        this.j = num;
        this.k = b3Var;
    }

    public static final void a(c3 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.a);
        output.encodeStringElement(serialDesc, 1, self.b);
        output.encodeStringElement(serialDesc, 2, self.c);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.d != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.d);
        }
        output.encodeStringElement(serialDesc, 4, self.e);
        output.encodeIntElement(serialDesc, 5, self.f);
        output.encodeIntElement(serialDesc, 6, self.g);
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.h != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.h);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.i != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.i);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.j != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, IntSerializer.INSTANCE, self.j);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 10) && self.k == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 10, z2.a, self.k);
    }

    public final void b(String str) {
        this.h = str;
    }

    public final void a(int i) {
        this.g = i;
    }

    public final void a(String str) {
        this.i = str;
    }

    public final void a(Integer num) {
        this.j = num;
    }

    public final void a(b3 b3Var) {
        this.k = b3Var;
    }

    public /* synthetic */ c3(String str, String str2, String str3, String str4, String str5, int i, int i2, String str6) {
        this(str, str2, str3, str4, str5, i, i2, str6, null, null, null);
    }
}
