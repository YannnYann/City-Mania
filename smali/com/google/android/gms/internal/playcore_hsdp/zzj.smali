###### Class com.google.android.gms.internal.playcore_hsdp.zzj (com.google.android.gms.internal.playcore_hsdp.zzj)
.class public final Lcom/google/android/gms/internal/playcore_hsdp/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzh;

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/playcore_hsdp/zzh;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/playcore_hsdp/zzh;-><init>(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)V

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/playcore_hsdp/zzi;-><init>(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)V

    return-object v0

    :cond_19
    return-object p0
.end method
