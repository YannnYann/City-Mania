package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.ListenableFuture;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzwx implements AsyncCallable {
    final /* synthetic */ zzws zza;
    final /* synthetic */ AsyncCallable zzb;

    public zzwx(zzws zzwsVar, AsyncCallable asyncCallable) {
        this.zza = zzwsVar;
        this.zzb = asyncCallable;
    }

    @Override // com.google.common.util.concurrent.AsyncCallable
    public final ListenableFuture call() {
        zzws zzwsVar = this.zza;
        Intrinsics.checkNotNull(zzwsVar);
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVarZzc = zzvy.zzc(zzwqVarZzd, zzwsVar);
        try {
            ListenableFuture listenableFutureCall = this.zzb.call();
            zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
            Intrinsics.checkNotNullExpressionValue(listenableFutureCall, "wrapInTrace(...)");
            return listenableFutureCall;
        } finally {
        }
    }

    public final String toString() {
        AsyncCallable asyncCallable = this.zzb;
        StringBuilder sb = new StringBuilder(asyncCallable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(asyncCallable);
        sb.append(C3522b4.j.e);
        return sb.toString();
    }
}
