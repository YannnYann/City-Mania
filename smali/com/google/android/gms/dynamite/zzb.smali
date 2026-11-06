###### Class com.google.android.gms.dynamite.zzb (com.google.android.gms.dynamite.zzb)
.class public final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# static fields
.field public static zza:Ljava/lang/ClassLoader;

.field public static zzb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static declared-synchronized zza()Ljava/lang/ClassLoader;
    .registers 13

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    if-nez v1, :cond_e9

    const-string v1, "Failed to get thread context classloader "

    sget-object v2, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-nez v2, :cond_b6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    const-string v4, "Failed to enumerate thread/threadgroup "

    if-nez v2, :cond_21

    move-object v2, v3

    goto/16 :goto_ad

    .line 20
    :cond_21
    const-class v5, Ljava/lang/Void;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b2

    .line 2
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v6

    new-array v7, v6, [Ljava/lang/ThreadGroup;

    .line 3
    invoke-virtual {v2, v7}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v8, 0x0

    move v9, v8

    :goto_2f
    if-ge v9, v6, :cond_48

    .line 4
    aget-object v10, v7, v9

    const-string v11, "dynamiteLoader"

    .line 5
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_49

    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :catchall_43
    move-exception v1

    goto/16 :goto_b4

    :catch_46
    move-exception v2

    goto :goto_87

    :cond_48
    move-object v10, v3

    :goto_49
    if-nez v10, :cond_52

    new-instance v10, Ljava/lang/ThreadGroup;

    const-string v6, "dynamiteLoader"

    .line 6
    invoke-direct {v10, v2, v6}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 7
    :cond_52
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    new-array v6, v2, [Ljava/lang/Thread;

    .line 8
    invoke-virtual {v10, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_5b
    if-ge v8, v2, :cond_6f

    .line 9
    aget-object v7, v6, v8

    const-string v9, "GmsDynamite"

    .line 10
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_69} :catch_46
    .catchall {:try_start_24 .. :try_end_69} :catchall_43

    if-eqz v9, :cond_6c

    goto :goto_70

    :cond_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    :cond_6f
    move-object v7, v3

    :goto_70
    if-nez v7, :cond_ab

    :try_start_72
    new-instance v2, Lcom/google/android/gms/dynamite/zza;

    const-string v6, "GmsDynamite"

    .line 11
    invoke-direct {v2, v10, v6}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_79} :catch_84
    .catchall {:try_start_72 .. :try_end_79} :catchall_43

    .line 12
    :try_start_79
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_7f} :catch_81
    .catchall {:try_start_79 .. :try_end_7f} :catchall_43

    move-object v7, v2

    goto :goto_ab

    :catch_81
    move-exception v6

    move-object v7, v2

    goto :goto_89

    :catch_84
    move-exception v2

    move-object v6, v2

    goto :goto_89

    :goto_87
    move-object v6, v2

    move-object v7, v3

    .line 21
    :goto_89
    :try_start_89
    const-string v2, "DynamiteLoaderV2CL"

    .line 14
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x27

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_ab
    :goto_ab
    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_89 .. :try_end_ac} :catchall_43

    move-object v2, v7

    .line 1
    :goto_ad
    :try_start_ad
    sput-object v2, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_b2

    if-nez v2, :cond_b6

    goto :goto_e4

    :catchall_b2
    move-exception v1

    goto :goto_ed

    .line 16
    :goto_b4
    :try_start_b4
    monitor-exit v5
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_43

    :try_start_b5
    throw v1

    .line 17
    :cond_b6
    monitor-enter v2
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_b2

    :try_start_b7
    sget-object v4, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3
    :try_end_bd
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_bd} :catch_c0
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_be

    goto :goto_e3

    :catchall_be
    move-exception v1

    goto :goto_e7

    :catch_c0
    move-exception v4

    .line 15
    :try_start_c1
    const-string v5, "DynamiteLoaderV2CL"

    .line 19
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_e3
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_c1 .. :try_end_e4} :catchall_be

    .line 1
    :goto_e4
    :try_start_e4
    sput-object v3, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_e6
    .catchall {:try_start_e4 .. :try_end_e6} :catchall_b2

    goto :goto_e9

    .line 21
    :goto_e7
    :try_start_e7
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_be

    :try_start_e8
    throw v1

    .line 1
    :cond_e9
    :goto_e9
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_b2

    monitor-exit v0

    return-object v1

    :goto_ed
    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_b2

    throw v1
.end method
