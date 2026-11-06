package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3841se {
    public static final a c = new a(null);
    public static final int d = 2070;
    public static final int e = 2080;
    public static final int f = 2090;
    public static final int g = 2100;
    public static final int h = 2110;
    private final int a;
    private final String b;

    /* JADX INFO: renamed from: com.ironsource.se$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C3841se(int i, String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a = i;
        this.b = errorMessage;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3841se)) {
            return false;
        }
        C3841se c3841se = (C3841se) obj;
        return this.a == c3841se.a && Intrinsics.areEqual(this.b, c3841se.b);
    }

    public int hashCode() {
        return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
    }

    public String toString() {
        return "SdkError(errorCode=" + this.a + ", errorMessage=" + this.b + ")";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C3841se(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        int errorCode = error.getErrorCode();
        String errorMessage = error.getErrorMessage();
        Intrinsics.checkNotNullExpressionValue(errorMessage, "getErrorMessage(...)");
        this(errorCode, errorMessage);
    }

    public final C3841se a(int i, String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        return new C3841se(i, errorMessage);
    }

    public static /* synthetic */ C3841se a(C3841se c3841se, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = c3841se.a;
        }
        if ((i2 & 2) != 0) {
            str = c3841se.b;
        }
        return c3841se.a(i, str);
    }
}
