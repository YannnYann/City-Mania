package com.unity3d.ads.core.extensions;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.TimeMark;

/* JADX INFO: compiled from: TimeExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TimeExtensionsKt {
    public static final double elapsedMillis(TimeMark timeMark) {
        Intrinsics.checkNotNullParameter(timeMark, "<this>");
        return Duration.m2900toDoubleimpl(timeMark.mo2920elapsedNowUwyO8pc(), DurationUnit.MILLISECONDS);
    }
}
