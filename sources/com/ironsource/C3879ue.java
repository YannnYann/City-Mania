package com.ironsource;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: com.ironsource.ue, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3879ue {
    public static final C3879ue a = new C3879ue();
    private static final String[] b = {"com.ironsource.", "com.unity3d.mediation.", "com.unity3d.ironsourceads.", "com.unity3d.sdk."};
    public static final int c = -1;
    private static final int d = 256;
    private static final int e = 15;
    private static final int f = 1000;
    private static final int g = 8;
    private static final String h = "|";

    private C3879ue() {
    }

    public static /* synthetic */ String a(C3879ue c3879ue, StackTraceElement[] stackTraceElementArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return c3879ue.a(stackTraceElementArr, i);
    }

    private final String c(StackTraceElement stackTraceElement) {
        return a(stackTraceElement) + ":" + stackTraceElement.getLineNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence d(StackTraceElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return a.a(it);
    }

    public final int b(StackTraceElement[] frames) {
        Intrinsics.checkNotNullParameter(frames, "frames");
        int iMin = Math.min(frames.length, 256);
        for (int i = 0; i < iMin; i++) {
            if (b(frames[i])) {
                return i;
            }
        }
        return -1;
    }

    public final String a(StackTraceElement[] frames, int i) {
        Intrinsics.checkNotNullParameter(frames, "frames");
        int iHashCode = CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.take(ArraysKt___ArraysKt.drop(frames, RangesKt___RangesKt.coerceAtLeast(i, 0)), 8), ";", null, null, 0, null, new Function1() { // from class: com.ironsource.ue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3879ue.d((StackTraceElement) obj);
            }
        }, 30, null).hashCode();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%08x", Arrays.copyOf(new Object[]{Integer.valueOf(iHashCode)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final boolean b(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        if (className == null) {
            return false;
        }
        for (String str : b) {
            if (StringsKt__StringsJVMKt.startsWith$default(className, str, false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public final String a(StackTraceElement frame) {
        Intrinsics.checkNotNullParameter(frame, "frame");
        return frame.getClassName() + "." + frame.getMethodName();
    }

    public final String a(StackTraceElement[] frames) {
        Intrinsics.checkNotNullParameter(frames, "frames");
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(frames.length, 15);
        int i = 0;
        for (int i2 = 0; i2 < iMin; i2++) {
            String strC = c(frames[i2]);
            if (sb.length() + (i == 0 ? 0 : 1) + strC.length() > 1000) {
                break;
            }
            if (i > 0) {
                sb.append(h);
            }
            sb.append(strC);
            i++;
        }
        int length = frames.length - i;
        if (length > 0) {
            sb.append(h);
            sb.append("+");
            sb.append(length);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
