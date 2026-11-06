package io.bidmachine.analytics.internal.g;

import java.util.Map;
import java.util.UUID;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4117d {
    public static final a g = new a(null);
    private final String a;
    private final String b;
    private final String c;
    private final long d;
    private final Map e;
    private final h f;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.d$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C4117d(String str, String str2, String str3, long j, Map map, h hVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = map;
        this.f = hVar;
    }

    public final C4117d a(String str, String str2, String str3, long j, Map map, h hVar) {
        return new C4117d(str, str2, str3, j, map, hVar);
    }

    public final h b() {
        return this.f;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4117d)) {
            return false;
        }
        C4117d c4117d = (C4117d) obj;
        return Intrinsics.areEqual(this.a, c4117d.a) && Intrinsics.areEqual(this.b, c4117d.b) && Intrinsics.areEqual(this.c, c4117d.c) && this.d == c4117d.d && Intrinsics.areEqual(this.e, c4117d.e) && Intrinsics.areEqual(this.f, c4117d.f);
    }

    public final long f() {
        return this.d;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + Long.hashCode(this.d)) * 31) + this.e.hashCode()) * 31;
        h hVar = this.f;
        return iHashCode + (hVar == null ? 0 : hVar.hashCode());
    }

    public String toString() {
        return "MonitorRecord(id=" + this.a + ", name=" + this.b + ", sessionId=" + this.c + ", timestamp=" + this.d + ", data=" + this.e + ", error=" + this.f + ')';
    }

    public static /* synthetic */ C4117d a(C4117d c4117d, String str, String str2, String str3, long j, Map map, h hVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c4117d.a;
        }
        if ((i & 2) != 0) {
            str2 = c4117d.b;
        }
        if ((i & 4) != 0) {
            str3 = c4117d.c;
        }
        if ((i & 8) != 0) {
            j = c4117d.d;
        }
        if ((i & 16) != 0) {
            map = c4117d.e;
        }
        if ((i & 32) != 0) {
            hVar = c4117d.f;
        }
        long j2 = j;
        String str4 = str3;
        return c4117d.a(str, str2, str4, j2, map, hVar);
    }

    public final Map a() {
        return this.e;
    }

    public /* synthetic */ C4117d(String str, String str2, String str3, long j, Map map, h hVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, str2, str3, j, (i & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 32) != 0 ? null : hVar);
    }
}
