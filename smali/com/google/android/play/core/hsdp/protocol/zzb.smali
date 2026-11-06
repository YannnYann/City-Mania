###### Class com.google.android.play.core.hsdp.protocol.zzb (com.google.android.play.core.hsdp.protocol.zzb)
.class public abstract Lcom/google/android/play/core/hsdp/protocol/zzb;
.super Lcom/google/android/gms/internal/playcore_hsdp/zzb;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/protocol/zzc;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/protocol/zzc;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.play.core.hsdp.protocol.IHpoaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/play/core/hsdp/protocol/zzc;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/play/core/hsdp/protocol/zzc;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/play/core/hsdp/protocol/zza;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/protocol/zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
