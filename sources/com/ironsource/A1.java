package com.ironsource;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class A1 {
    private final long a;
    private final int b;
    private final String c;
    private final int d;
    private final boolean e;
    private final String f;
    private final Function0<StackTraceElement[]> g;

    public A1(long j, int i, String description, int i2, boolean z, String processName, Function0<StackTraceElement[]> readMainThreadStack) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(readMainThreadStack, "readMainThreadStack");
        this.a = j;
        this.b = i;
        this.c = description;
        this.d = i2;
        this.e = z;
        this.f = processName;
        this.g = readMainThreadStack;
    }

    public final long a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final boolean e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public final String f() {
        return this.f;
    }

    public final Function0<StackTraceElement[]> g() {
        return this.g;
    }

    public final String h() {
        return this.c;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public final int i() {
        return this.b;
    }

    public final String j() {
        return this.f;
    }

    public final Function0<StackTraceElement[]> k() {
        return this.g;
    }

    public final int l() {
        return this.d;
    }

    public final long m() {
        return this.a;
    }

    public final boolean n() {
        return this.e;
    }

    public String toString() {
        return "AnrExitRecord(timestampMillis=" + this.a + ", importance=" + this.b + ", description=" + this.c + ", reason=" + this.d + ", isAnrReason=" + this.e + ", processName=" + this.f + ", readMainThreadStack=" + this.g + ")";
    }

    public final A1 a(long j, int i, String description, int i2, boolean z, String processName, Function0<StackTraceElement[]> readMainThreadStack) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(readMainThreadStack, "readMainThreadStack");
        return new A1(j, i, description, i2, z, processName, readMainThreadStack);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ A1 a(A1 a1, long j, int i, String str, int i2, boolean z, String str2, Function0 function0, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            j = a1.a;
        }
        long j2 = j;
        if ((i3 & 2) != 0) {
            i = a1.b;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            str = a1.c;
        }
        String str3 = str;
        if ((i3 & 8) != 0) {
            i2 = a1.d;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            z = a1.e;
        }
        return a1.a(j2, i4, str3, i5, z, (i3 & 32) != 0 ? a1.f : str2, (i3 & 64) != 0 ? a1.g : function0);
    }
}
