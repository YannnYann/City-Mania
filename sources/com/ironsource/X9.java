package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class X9 {
    private final String a;
    private final String b;

    public X9(String advId, String advIdType) {
        Intrinsics.checkNotNullParameter(advId, "advId");
        Intrinsics.checkNotNullParameter(advIdType, "advIdType");
        this.a = advId;
        this.b = advIdType;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X9)) {
            return false;
        }
        X9 x9 = (X9) obj;
        return Intrinsics.areEqual(this.a, x9.a) && Intrinsics.areEqual(this.b, x9.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "IronSourceAdvId(advId=" + this.a + ", advIdType=" + this.b + ")";
    }

    public final X9 a(String advId, String advIdType) {
        Intrinsics.checkNotNullParameter(advId, "advId");
        Intrinsics.checkNotNullParameter(advIdType, "advIdType");
        return new X9(advId, advIdType);
    }

    public static /* synthetic */ X9 a(X9 x9, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = x9.a;
        }
        if ((i & 2) != 0) {
            str2 = x9.b;
        }
        return x9.a(str, str2);
    }
}
