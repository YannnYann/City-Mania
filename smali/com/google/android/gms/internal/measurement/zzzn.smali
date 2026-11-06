###### Class com.google.android.gms.internal.measurement.zzzn (com.google.android.gms.internal.measurement.zzzn)
.class final Lcom/google/android/gms/internal/measurement/zzzn;
.super Lcom/google/android/gms/internal/measurement/zzzq;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzzp;

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzm;[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzb:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzd()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zze()Ljava/util/Map;

    move-result-object p2

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzf()Lcom/google/android/gms/internal/measurement/zzzp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzc:Lcom/google/android/gms/internal/measurement/zzzp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzg()Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzd:Lcom/google/android/gms/internal/measurement/zzzo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzp;

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzp;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzc:Lcom/google/android/gms/internal/measurement/zzzp;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzp;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzo;

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zzd:Lcom/google/android/gms/internal/measurement/zzzo;

    if-nez v0, :cond_13

    goto :goto_1f

    .line 5
    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzn;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1f
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzzq;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_2d
    return-void
.end method
