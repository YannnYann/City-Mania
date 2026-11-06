package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import java.util.HashMap;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"TikTok.UnpropagatedTraceOnStartActivity"})
public final class zzxa {
    static {
        Math.abs(new Random().nextInt());
        new HashMap();
    }

    public static final Runnable zza(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        return new zzwz(new Ref$ObjectRef(), zzvy.zzb(false), runnable);
    }

    public static final AsyncCallable zzb(AsyncCallable asyncCallable) {
        Intrinsics.checkNotNullParameter(asyncCallable, "asyncCallable");
        return new zzwx(zzvy.zzb(false), asyncCallable);
    }

    public static final AsyncFunction zzc(AsyncFunction asyncFunction) {
        Intrinsics.checkNotNullParameter(asyncFunction, "asyncFunction");
        return new zzwy(zzvy.zzb(false), asyncFunction);
    }
}
