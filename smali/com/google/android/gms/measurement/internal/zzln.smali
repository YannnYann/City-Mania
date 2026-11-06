###### Class com.google.android.gms.measurement.internal.zzln (com.google.android.gms.measurement.internal.zzln)
.class public final Lcom/google/android/gms/measurement/internal/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzlo;

.field public final zzb:Ljava/net/URL;

.field public final zzc:[B

.field public final zzd:Lcom/google/android/gms/measurement/internal/zzll;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlo;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzll;)V
    .registers 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzd:Lcom/google/android/gms/measurement/internal/zzll;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzln;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzaY()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzb:Ljava/net/URL;

    .line 2
    sget v5, Lcom/google/android/gms/internal/measurement/zzch;->zzb:I

    .line 3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_128

    .line 6
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 7
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const v5, 0xea60

    .line 9
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const v5, 0xee48

    .line 11
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_35} :catch_126
    .catchall {:try_start_9 .. :try_end_35} :catchall_124

    :try_start_35
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzf:Ljava/util/Map;

    if-eqz v6, :cond_63

    .line 14
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catchall_5d
    move-exception v1

    goto/16 :goto_11a

    :catch_60
    move-exception v1

    goto/16 :goto_121

    :cond_63
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:[B
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_65} :catch_60
    .catchall {:try_start_35 .. :try_end_65} :catchall_5d

    if-eqz v6, :cond_cf

    .line 16
    :try_start_67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    .line 17
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_81} :catch_bc
    .catchall {:try_start_67 .. :try_end_81} :catchall_5d

    :try_start_81
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "Uploading data. size"

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 29
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 31
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 32
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_ab} :catch_60
    .catchall {:try_start_81 .. :try_end_ab} :catchall_5d

    .line 33
    :try_start_ab
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_b4
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b2

    goto :goto_cf

    :catchall_b2
    move-exception v1

    goto :goto_b6

    :catch_b4
    move-exception v1

    goto :goto_b9

    :goto_b6
    move-object v6, v3

    goto/16 :goto_133

    :goto_b9
    move-object v6, v3

    goto/16 :goto_15b

    :catch_bc
    move-exception v1

    .line 50
    :try_start_bd
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v6, "Failed to gzip post request content"

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    throw v1

    .line 35
    :cond_cf
    :goto_cf
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_d3} :catch_60
    .catchall {:try_start_bd .. :try_end_d3} :catchall_5d

    .line 36
    :try_start_d3
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d7} :catch_11d
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_116

    .line 37
    :try_start_d7
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_102

    const/16 v8, 0x400

    :try_start_e2
    new-array v8, v8, [B

    .line 39
    :goto_e4
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_f0

    .line 40
    invoke-virtual {v6, v8, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e4

    :catchall_ee
    move-exception v2

    goto :goto_104

    .line 41
    :cond_f0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_f4
    .catchall {:try_start_e2 .. :try_end_f4} :catchall_ee

    .line 42
    :try_start_f4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_100
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_fe

    .line 48
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 49
    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzln;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_fe
    move-exception v2

    goto :goto_10a

    :catch_100
    move-exception v2

    goto :goto_110

    :catchall_102
    move-exception v2

    move-object v7, v3

    :goto_104
    if-eqz v7, :cond_109

    .line 42
    :try_start_106
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_109
    throw v2
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_10a} :catch_100
    .catchall {:try_start_106 .. :try_end_10a} :catchall_fe

    :goto_10a
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_133

    :goto_110
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_15b

    :catchall_116
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_11a
    move-object v5, v3

    :goto_11b
    move-object v6, v5

    goto :goto_133

    :catch_11d
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_121
    move-object v5, v3

    :goto_122
    move-object v6, v5

    goto :goto_15b

    :catchall_124
    move-exception v1

    goto :goto_130

    :catch_126
    move-exception v1

    goto :goto_158

    .line 4
    :cond_128
    :try_start_128
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 5
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_130} :catch_126
    .catchall {:try_start_128 .. :try_end_130} :catchall_124

    :goto_130
    move-object v4, v3

    move-object v5, v4

    goto :goto_11b

    :goto_133
    if-eqz v5, :cond_14f

    .line 44
    :try_start_135
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_14f

    :catch_139
    move-exception v5

    .line 47
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzln;->zze:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 47
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14f
    :goto_14f
    if-eqz v4, :cond_154

    .line 48
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 49
    :cond_154
    invoke-virtual {p0, v2, v3, v3, v6}, Lcom/google/android/gms/measurement/internal/zzln;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 50
    throw v1

    :goto_158
    move-object v4, v3

    move-object v5, v4

    goto :goto_122

    :goto_15b
    if-eqz v5, :cond_177

    .line 44
    :try_start_15d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_161

    goto :goto_177

    :catch_161
    move-exception v5

    .line 43
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzln;->zze:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 47
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_177
    :goto_177
    if-eqz v4, :cond_17c

    .line 48
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 49
    :cond_17c
    invoke-virtual {p0, v2, v1, v3, v6}, Lcom/google/android/gms/measurement/internal/zzln;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method

.method public final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzd:Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzln;->zze:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzll;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlm;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlm;-><init>(Lcom/google/android/gms/measurement/internal/zzln;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzlm (com.google.android.gms.measurement.internal.zzlm)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzln;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/Exception;

.field public final synthetic zzd:[B

.field public final synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzln;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzln;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzln;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzln;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
