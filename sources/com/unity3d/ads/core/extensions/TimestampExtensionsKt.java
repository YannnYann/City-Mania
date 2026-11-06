package com.unity3d.ads.core.extensions;

import com.google.protobuf.Timestamp;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimestampExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TimestampExtensionsKt {
    public static final Timestamp fromMillis(long j) {
        long j2 = 1000;
        Timestamp timestampBuild = Timestamp.newBuilder().setSeconds(j / j2).setNanos((int) ((j % j2) * ((long) 1000000))).build();
        Intrinsics.checkNotNullExpressionValue(timestampBuild, "build(...)");
        return timestampBuild;
    }

    public static final long duration(long j) {
        return System.nanoTime() - j;
    }
}
