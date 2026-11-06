package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.w9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3910w9 {
    private final String a;
    private final int b;
    private final String c;

    public C3910w9() {
        this(null, 0, null, 7, null);
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.c;
    }

    public final String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3910w9)) {
            return false;
        }
        C3910w9 c3910w9 = (C3910w9) obj;
        return Intrinsics.areEqual(this.a, c3910w9.a) && this.b == c3910w9.b && Intrinsics.areEqual(this.c, c3910w9.c);
    }

    public final int f() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31;
        String str = this.c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "InstanceInformation(instanceId=" + this.a + ", instanceType=" + this.b + ", dynamicDemandSourceId=" + this.c + ")";
    }

    public C3910w9(String instanceId, int i, String str) {
        Intrinsics.checkNotNullParameter(instanceId, "instanceId");
        this.a = instanceId;
        this.b = i;
        this.c = str;
    }

    public final C3910w9 a(String instanceId, int i, String str) {
        Intrinsics.checkNotNullParameter(instanceId, "instanceId");
        return new C3910w9(instanceId, i, str);
    }

    public static /* synthetic */ C3910w9 a(C3910w9 c3910w9, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = c3910w9.a;
        }
        if ((i2 & 2) != 0) {
            i = c3910w9.b;
        }
        if ((i2 & 4) != 0) {
            str2 = c3910w9.c;
        }
        return c3910w9.a(str, i, str2);
    }

    public /* synthetic */ C3910w9(String str, int i, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? "" : str2);
    }
}
