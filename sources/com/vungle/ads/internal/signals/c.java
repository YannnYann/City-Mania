package com.vungle.ads.internal.signals;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.PluginExceptionsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static final b Companion = new b();
    public final int a;
    public final String b;
    public long c;
    public List d;
    public long e;
    public int f;
    public List g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;

    public c(int i) {
        this.a = i;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        this.b = string;
        this.c = System.currentTimeMillis() / 1000;
        this.d = new ArrayList();
        this.g = new ArrayList();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(com.vungle.ads.internal.signals.c r7, kotlinx.serialization.encoding.CompositeEncoder r8, kotlinx.serialization.internal.PluginGeneratedSerialDescriptor r9) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.signals.c.a(com.vungle.ads.internal.signals.c, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.internal.PluginGeneratedSerialDescriptor):void");
    }

    public final List b() {
        return this.d;
    }

    public final List c() {
        return this.g;
    }

    public final void d(int i) {
        this.k = i;
    }

    public final void e(int i) {
        this.i = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.a == ((c) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("SessionData(sessionCount=");
        sbA.append(this.a);
        sbA.append(')');
        return sbA.toString();
    }

    public final void b(int i) {
        this.l = i;
    }

    public final void c(int i) {
        this.j = i;
    }

    public /* synthetic */ c(int i, int i2, String str, long j, List list, long j2, int i3, List list2, int i4, int i5, int i6, int i7, int i8) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, a.a.getDescriptor());
        }
        this.a = i2;
        if ((i & 2) == 0) {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            this.b = string;
        } else {
            this.b = str;
        }
        if ((i & 4) == 0) {
            this.c = System.currentTimeMillis() / 1000;
        } else {
            this.c = j;
        }
        if ((i & 8) == 0) {
            this.d = new ArrayList();
        } else {
            this.d = list;
        }
        if ((i & 16) == 0) {
            this.e = 0L;
        } else {
            this.e = j2;
        }
        if ((i & 32) == 0) {
            this.f = 0;
        } else {
            this.f = i3;
        }
        if ((i & 64) == 0) {
            this.g = new ArrayList();
        } else {
            this.g = list2;
        }
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) {
            this.h = 0;
        } else {
            this.h = i4;
        }
        if ((i & 256) == 0) {
            this.i = 0;
        } else {
            this.i = i5;
        }
        if ((i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) == 0) {
            this.j = 0;
        } else {
            this.j = i6;
        }
        if ((i & 1024) == 0) {
            this.k = 0;
        } else {
            this.k = i7;
        }
        if ((i & com.ironsource.mediationsdk.metadata.a.o) == 0) {
            this.l = 0;
        } else {
            this.l = i8;
        }
    }

    public final String a() {
        return this.b;
    }

    public final void a(ArrayList arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.g = arrayList;
    }

    public final void a(int i) {
        this.h = i;
    }
}
