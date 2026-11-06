###### Class com.google.android.gms.ads.identifier.zze (com.google.android.gms.ads.identifier.zze)
.class public final Lcom/google/android/gms/ads/identifier/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-identifier@@18.3.0"


# direct methods
.method public static final zza(Ljava/lang/String;)V
    .registers 11

    .line 1
    const-string v0, "HttpUrlPinger"

    const-string v1, " from pinging URL: "

    const-string v2, "Received non-success response code "

    const-string v3, "Error while pinging URL: "

    const-string v4, ". "

    const-string v5, "Error while parsing ping URL: "

    const/16 v6, 0x107

    :try_start_e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads_identifier/zzk;->zza(I)V

    .line 2
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    sget v7, Lcom/google/android/gms/internal/ads_identifier/zzh;->zzb:I

    .line 4
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 3
    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_1e} :catch_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1e} :catch_5c
    .catchall {:try_start_e .. :try_end_1e} :catchall_cd

    .line 5
    :try_start_1e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_2a

    const/16 v8, 0x12c

    if-lt v7, v8, :cond_55

    .line 6
    :cond_2a
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x36

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_62

    .line 7
    :cond_55
    :try_start_55
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_58} :catch_60
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_5c
    .catchall {:try_start_55 .. :try_end_58} :catchall_cd

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzk;->zzb()V

    return-void

    :catch_5c
    move-exception v1

    goto :goto_67

    :catch_5e
    move-exception v1

    goto :goto_67

    :catch_60
    move-exception v1

    goto :goto_9a

    :catchall_62
    move-exception v1

    .line 7
    :try_start_63
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 8
    throw v1
    :try_end_67
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_63 .. :try_end_67} :catch_60
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_67} :catch_5c
    .catchall {:try_start_63 .. :try_end_67} :catchall_cd

    .line 9
    :goto_67
    :try_start_67
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_67 .. :try_end_96} :catchall_cd

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzk;->zzb()V

    return-void

    .line 11
    :goto_9a
    :try_start_9a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_9a .. :try_end_c9} :catchall_cd

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzk;->zzb()V

    return-void

    :catchall_cd
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzk;->zzb()V

    .line 12
    throw p0
.end method
