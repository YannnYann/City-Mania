package com.unity3d.ads.core.utils;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: CoroutineTimer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface CoroutineTimer {
    Job start(long j, long j2, Function0<Unit> function0);
}
