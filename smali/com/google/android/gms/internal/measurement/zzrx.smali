###### Class com.google.android.gms.internal.measurement.zzrx (com.google.android.gms.internal.measurement.zzrx)
.class public final Lcom/google/android/gms/internal/measurement/zzrx;
.super Lcom/google/android/gms/internal/measurement/zzsy;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzsx;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrw;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsy;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzc:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrw;->zzc()Lcom/google/android/gms/internal/measurement/zzsh;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>(Lcom/google/android/gms/internal/measurement/zzsh;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzb:Lcom/google/android/gms/internal/measurement/zzsx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrw;->zzb()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrw;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzrw;-><init>(Landroid/content/Context;[B)V

    return-object v0
.end method

.method private final zzh(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzi()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsg;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsg;

    const-string v1, "Android backend cannot perform remote operations without a remote backend"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsg;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzb:Lcom/google/android/gms/internal/measurement/zzsx;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "android"

    return-object v0
.end method

.method public final zzd(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsc;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsl;->zzb(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p1

    return-object p1

    .line 5
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrx;->zzi()V

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zze(Landroid/net/Uri;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsc;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 5
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrx;->zzi()V

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzf(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsx;->zzg(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsb;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsb;-><init>([B)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsb;->zza(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsb;->zzb()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 1
    :cond_18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Operation across authorities is not allowed."

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(Landroid/net/Uri;)Ljava/io/File;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_18e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_176

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16e

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_196

    goto :goto_81

    .line 24
    :sswitch_45
    const-string v4, "directboot-files"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v2

    goto :goto_82

    :sswitch_4f
    const-string v4, "directboot-cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v9

    goto :goto_82

    :sswitch_59
    const-string v4, "managed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v6

    goto :goto_82

    :sswitch_63
    const-string v4, "files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v8

    goto :goto_82

    :sswitch_6d
    const-string v4, "cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v7

    goto :goto_82

    :sswitch_77
    const-string v4, "external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v5

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v3, -0x1

    :goto_82
    if-eqz v3, :cond_118

    if-eq v3, v9, :cond_10f

    if-eq v3, v8, :cond_10a

    if-eq v3, v7, :cond_105

    if-eq v3, v6, :cond_a5

    if-ne v3, v5, :cond_95

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto/16 :goto_120

    .line 42
    :cond_95
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Path must start with a valid logical location: %s"

    .line 41
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_a5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v3, "managed"

    new-instance v4, Ljava/io/File;

    .line 11
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v7, :cond_103

    .line 13
    :try_start_b6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    const-string v3, "shared"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    goto :goto_ec

    :catch_c9
    move-exception p1

    goto :goto_fd

    :cond_cb
    const/16 v3, 0x3a

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d5

    move v5, v9

    goto :goto_d6

    :cond_d5
    move v5, v2

    :goto_d6
    const-string v6, "Malformed account"

    new-array v7, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzsq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v9

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/accounts/Account;

    .line 18
    invoke-direct {v3, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_eb} :catch_c9

    move-object p1, v3

    .line 13
    :goto_ec
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    .line 20
    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    goto :goto_103

    .line 19
    :cond_f5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "AccountManager cannot be null"

    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :goto_fd
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_103
    :goto_103
    move-object p1, v4

    goto :goto_120

    .line 22
    :cond_105
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    goto :goto_120

    .line 23
    :cond_10a
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_120

    .line 24
    :cond_10f
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    goto :goto_120

    .line 27
    :cond_118
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 9
    :goto_120
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzky;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16d

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzc:Ljava/lang/Object;

    monitor-enter p1

    :try_start_13c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    if-nez v1, :cond_155

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    goto :goto_155

    :catchall_153
    move-exception v0

    goto :goto_16b

    :cond_155
    :goto_155
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    .line 34
    monitor-exit p1
    :try_end_158
    .catchall {:try_start_13c .. :try_end_158} :catchall_153

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_163

    goto :goto_16d

    :cond_163
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsg;

    const-string v0, "Cannot access credential-protected data from direct boot"

    .line 38
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsg;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :goto_16b
    :try_start_16b
    monitor-exit p1
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_153

    throw v0

    :cond_16d
    :goto_16d
    return-object v2

    .line 43
    :cond_16e
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Did not expect uri to have query"

    .line 42
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_176
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Path must start with a valid logical location: %s"

    .line 5
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_186
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Scheme must be \'android\'"

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_18e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "operation is not permitted in other authorities."

    .line 43
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_196
    .sparse-switch
        -0x6c869c35 -> :sswitch_77
        0x5a0af82 -> :sswitch_6d
        0x5ceba77 -> :sswitch_63
        0x31c90f9f -> :sswitch_59
        0x3aec0d90 -> :sswitch_4f
        0x3b1a1885 -> :sswitch_45
    .end sparse-switch
.end method
