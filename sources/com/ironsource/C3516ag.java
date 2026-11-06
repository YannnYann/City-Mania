package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3516ag {
    private String a;

    /* JADX WARN: Multi-variable type inference failed */
    public C3516ag() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3516ag) && Intrinsics.areEqual(this.a, ((C3516ag) obj).a);
    }

    public int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "TestSuiteSettings(controllerUrl=" + this.a + ")";
    }

    public C3516ag(String str) {
        this.a = str;
    }

    public final C3516ag a(String str) {
        return new C3516ag(str);
    }

    public final void b(String str) {
        this.a = str;
    }

    public /* synthetic */ C3516ag(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public static /* synthetic */ C3516ag a(C3516ag c3516ag, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3516ag.a;
        }
        return c3516ag.a(str);
    }
}
