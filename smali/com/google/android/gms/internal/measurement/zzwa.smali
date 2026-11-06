###### Class com.google.android.gms.internal.measurement.zzwa (com.google.android.gms.internal.measurement.zzwa)
.class final Lcom/google/android/gms/internal/measurement/zzwa;
.super Lcom/google/android/gms/internal/measurement/zzwb;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzwb;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;
    .registers 12

    .line 1
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzwk;->zza:Lcom/google/android/gms/internal/measurement/zzwl;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v6

    .line 4
    iget-object p2, v6, Lcom/google/android/gms/internal/measurement/zzwq;->zzb:Lcom/google/android/gms/internal/measurement/zzws;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_17

    .line 6
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    const/4 p2, 0x1

    move-object v0, v2

    goto :goto_19

    :cond_17
    move-object v0, p2

    move p2, v1

    :goto_19
    if-nez v0, :cond_46

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvz;->zza()Lcom/google/android/gms/internal/measurement/zzvz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvz;->zzc()Ljava/util/UUID;

    move-result-object v1

    move-object v0, v2

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzcL(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzwd;->zza:Lcom/google/android/gms/internal/measurement/zzvq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zza()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3c

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzwe;

    invoke-direct {v7, v1, v0}, Lcom/google/android/gms/internal/measurement/zzwe;-><init>(Ljava/util/UUID;Ljava/lang/Exception;)V

    .line 12
    invoke-interface {v3, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwf;

    move-object v8, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzwf;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;Ljava/lang/Exception;ZZLcom/google/android/gms/internal/measurement/zzwq;)V

    goto :goto_5f

    :cond_46
    move-object v3, p1

    move-object v8, v6

    .line 17
    instance-of p1, v0, Lcom/google/android/gms/internal/measurement/zzvs;

    if-eqz p1, :cond_53

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvs;

    invoke-interface {v0, v3, v4, v1, v8}, Lcom/google/android/gms/internal/measurement/zzvs;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;ZLcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    goto :goto_5f

    :cond_53
    move-object v1, v3

    const-string v3, ""

    move-object v5, v4

    const/4 v4, 0x0

    .line 15
    const-string v2, ""

    move-object v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzws;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzwl;Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    .line 16
    :goto_5f
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzwi;

    .line 17
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzwi;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Z)V

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzwe (com.google.android.gms.internal.measurement.zzwe)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzwe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwu;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzwu;->zza()V

    return-void
.end method
