package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: com.ironsource.q4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3796q4 {
    private final Throwable a;
    private final String b;
    private final boolean c;

    public C3796q4(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.a = throwable;
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = throwable.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        sb.append(throwable.toString());
        sb.append(System.lineSeparator());
        boolean z = false;
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append(stackTraceElement.toString());
            sb.append(";" + System.lineSeparator());
            String string = stackTraceElement.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String strE = C3813r4.d().e();
            Intrinsics.checkNotNullExpressionValue(strE, "getKeyword(...)");
            if (StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) strE, false, 2, (Object) null)) {
                z = true;
            }
        }
        Throwable cause = this.a.getCause();
        if (cause != null) {
            sb.append("--CAUSE");
            sb.append(System.lineSeparator());
            sb.append(cause.toString());
            sb.append(System.lineSeparator());
            StackTraceElement[] stackTrace2 = cause.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace2, "getStackTrace(...)");
            for (StackTraceElement stackTraceElement2 : stackTrace2) {
                sb.append(stackTraceElement2.toString());
                sb.append(";" + System.lineSeparator());
                String string2 = stackTraceElement2.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                String strE2 = C3813r4.d().e();
                Intrinsics.checkNotNullExpressionValue(strE2, "getKeyword(...)");
                if (StringsKt__StringsKt.contains$default((CharSequence) string2, (CharSequence) strE2, false, 2, (Object) null)) {
                    z = true;
                }
            }
        }
        String string3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        this.b = string3;
        this.c = z;
    }

    public final Throwable a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final Throwable c() {
        return this.a;
    }

    public final boolean d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3796q4) && Intrinsics.areEqual(this.a, ((C3796q4) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "CrashReportWrapper(throwable=" + this.a + ")";
    }

    public final C3796q4 a(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new C3796q4(throwable);
    }

    public static /* synthetic */ C3796q4 a(C3796q4 c3796q4, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = c3796q4.a;
        }
        return c3796q4.a(th);
    }
}
