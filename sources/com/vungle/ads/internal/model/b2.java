package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class b2 {
    public static final a2 Companion = new a2();
    public final Long a;
    public final Integer b;

    public /* synthetic */ b2(int i, Long l, Integer num) {
        this.a = (i & 1) == 0 ? 1000L : l;
        if ((i & 2) == 0) {
            this.b = 3;
        } else {
            this.b = num;
        }
    }

    public static final void a(b2 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Integer num;
        Long l;
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || (l = self.a) == null || l.longValue() != 1000) {
            output.encodeNullableSerializableElement(serialDesc, 0, LongSerializer.INSTANCE, self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || (num = self.b) == null || num.intValue() != 3) {
            output.encodeNullableSerializableElement(serialDesc, 1, IntSerializer.INSTANCE, self.b);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b2)) {
            return false;
        }
        b2 b2Var = (b2) obj;
        return Intrinsics.areEqual(this.a, b2Var.a) && Intrinsics.areEqual(this.b, b2Var.b);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Integer num = this.b;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("CleverCache(diskSize=");
        sbA.append(this.a);
        sbA.append(", diskPercentage=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
