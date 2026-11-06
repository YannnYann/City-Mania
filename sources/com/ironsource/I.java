package com.ironsource;

import com.ironsource.C3809r0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class I {
    private C3809r0.a a;

    public I(C3809r0.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        this.a = performance;
    }

    public final C3809r0.a a() {
        return this.a;
    }

    public final C3809r0.a b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof I) && this.a == ((I) obj).a;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "AdInstancePerformance(performance=" + this.a + ")";
    }

    public final I a(C3809r0.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        return new I(performance);
    }

    public final void b(C3809r0.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.a = aVar;
    }

    public static /* synthetic */ I a(I i, C3809r0.a aVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            aVar = i.a;
        }
        return i.a(aVar);
    }
}
