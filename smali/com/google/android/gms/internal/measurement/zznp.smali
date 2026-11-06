###### Class com.google.android.gms.internal.measurement.zznp (com.google.android.gms.internal.measurement.zznp)
.class abstract Lcom/google/android/gms/internal/measurement/zznp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzom;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzph;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lcom/google/android/gms/internal/measurement/zzph;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Lcom/google/android/gms/internal/measurement/zzlk;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zza()Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaA(Lcom/google/android/gms/internal/measurement/zznw;Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznw;->zzf()I

    move-result p3

    const-string v0, ""

    const/4 v1, -0x1

    if-eq p3, v1, :cond_13

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznw;->zzg()Lcom/google/android/gms/internal/measurement/zzps;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzps;->zza()I

    move-result v2

    if-ge p3, v2, :cond_f2

    :cond_13
    monitor-enter p1

    .line 3
    :try_start_14
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznw;->zzf()I

    move-result p3

    const/4 v2, 0x0

    if-ne p3, v1, :cond_32

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzl()Z

    .line 5
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lcom/google/android/gms/internal/measurement/zzph;

    .line 6
    invoke-interface {v1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzph;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->zzc()Lcom/google/android/gms/internal/measurement/zzps;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zznw;->zzj(Lcom/google/android/gms/internal/measurement/zzps;)V

    goto :goto_33

    :catchall_2f
    move-exception p2

    goto/16 :goto_f7

    :cond_32
    move-object v0, v2

    :goto_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznw;->zzg()Lcom/google/android/gms/internal/measurement/zzps;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzps;->zza()I

    move-result v1

    if-ge p3, v1, :cond_f1

    const-string p3, ""

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzl()Z

    .line 10
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v3

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlf;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 14
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzle;

    const-string v5, "com.google.android.gms.measurement"

    .line 15
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zznp;->zza:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5, v2, v2, v6}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_69

    :cond_67
    :goto_67
    move-object v4, v2

    goto :goto_7f

    .line 27
    :cond_69
    const-string v5, "Invalid Phenotype flag value for flag "
    :try_end_6b
    .catchall {:try_start_14 .. :try_end_6b} :catchall_2f

    .line 17
    :try_start_6b
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6f} :catch_72
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_70
    .catchall {:try_start_6b .. :try_end_6f} :catchall_2f

    goto :goto_7f

    :catch_70
    move-exception v4

    goto :goto_73

    :catch_72
    move-exception v4

    .line 28
    :goto_73
    :try_start_73
    const-string v6, "FilePhenotypeFlags"

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zznp;->zza:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    :goto_7f
    if-nez v0, :cond_87

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lcom/google/android/gms/internal/measurement/zzph;

    .line 19
    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzph;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v0

    .line 20
    :cond_87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->zzb()Ljava/lang/String;

    move-result-object p3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_b9

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.vending"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    const-string v5, "com.google.android.gms.measurement#"

    .line 22
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-direct {v6, p2, p3}, Lcom/google/android/gms/internal/measurement/zzpn;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)V

    .line 24
    invoke-interface {v5, v6}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzpx;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)V

    :cond_b9
    const-string p2, "Invalid Phenotype flag value for flag "

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zznp;->zza:Ljava/lang/String;

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v0, p3, v5}, Lcom/google/android/gms/internal/measurement/zzpg;->zza(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p3
    :try_end_c2
    .catchall {:try_start_73 .. :try_end_c2} :catchall_2f

    if-nez p3, :cond_c5

    goto :goto_d8

    .line 27
    :cond_c5
    :try_start_c5
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c9
    .catch Ljava/lang/ClassCastException; {:try_start_c5 .. :try_end_c9} :catch_cc
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_2f

    goto :goto_d8

    :catch_ca
    move-exception p3

    goto :goto_cd

    :catch_cc
    move-exception p3

    .line 34
    :goto_cd
    :try_start_cd
    const-string v0, "FilePhenotypeFlags"

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zznp;->zza:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_d8
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p3, p2, :cond_e0

    goto :goto_e1

    :cond_e0
    move-object v4, v2

    :goto_e1
    if-nez v4, :cond_e7

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Ljava/lang/Object;

    move-result-object v4

    :cond_e7
    if-eqz v4, :cond_ef

    .line 31
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/measurement/zznw;->zzh(Ljava/lang/Object;)V

    .line 32
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zznw;->zzi(I)V

    .line 33
    :cond_ef
    monitor-exit p1

    return-object v4

    .line 34
    :cond_f1
    monitor-exit p1
    :try_end_f2
    .catchall {:try_start_cd .. :try_end_f2} :catchall_2f

    .line 35
    :cond_f2
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznw;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :goto_f7
    :try_start_f7
    monitor-exit p1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_2f

    throw p2
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/measurement/zzlk;)Ljava/lang/Object;
.end method

.method public abstract zzc(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.measurement.zzpn (com.google.android.gms.internal.measurement.zzpn)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzpn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlk;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzpp;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0xad

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Config package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot use FILE backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilePhenotypeFlags"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method
