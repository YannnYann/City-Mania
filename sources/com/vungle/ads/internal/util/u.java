package com.vungle.ads.internal.util;

import android.util.Log;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u {
    public static void b(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (v.a) {
            Intrinsics.checkNotNullParameter(message, "<this>");
            Log.e(tag, v.b.replace(message, "xxx.xxx.xxx.xxx"));
        }
    }

    public static void c(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (v.a) {
            Intrinsics.checkNotNullParameter(message, "<this>");
            Log.w(tag, v.b.replace(message, "xxx.xxx.xxx.xxx"));
        }
    }

    public static int a(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (!v.a) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(message, "<this>");
        return Log.d(tag, v.b.replace(message, "xxx.xxx.xxx.xxx"));
    }

    public static void a(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (v.a) {
            StringBuilder sb = new StringBuilder();
            Intrinsics.checkNotNullParameter(message, "<this>");
            sb.append(v.b.replace(message, "xxx.xxx.xxx.xxx"));
            sb.append("; error: ");
            sb.append(throwable.getLocalizedMessage());
            Log.e(tag, sb.toString());
        }
    }

    public static void a(String tag, Function0 message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (v.a) {
            String str = (String) message.invoke();
            Intrinsics.checkNotNullParameter(str, "<this>");
            Log.w(tag, v.b.replace(str, "xxx.xxx.xxx.xxx"));
        }
    }
}
