###### Class com.google.android.gms.internal.playcore_hsdp.zzi (com.google.android.gms.internal.playcore_hsdp.zzi)
.class final Lcom/google/android/gms/internal/playcore_hsdp/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/playcore_hsdp/zzg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/playcore_hsdp/zzk;

.field private volatile zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

.field private zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/playcore_hsdp/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzk;

    iput-object p1, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzc:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzk;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzc:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzb:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    goto :goto_1c

    .line 3
    :cond_1a
    monitor-exit v0

    goto :goto_1e

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    throw v1

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;->zzc:Ljava/lang/Object;

    return-object v0
.end method
