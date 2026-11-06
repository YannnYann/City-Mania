###### Class ads_mobile_sdk.dt1 (ads_mobile_sdk.dt1)
.class public final Lads_mobile_sdk/dt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ua;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lads_mobile_sdk/oy3;

.field public final c:Lads_mobile_sdk/x9;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lads_mobile_sdk/oy3;Lads_mobile_sdk/x9;Z)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lads_mobile_sdk/dt1;->b:Lads_mobile_sdk/oy3;

    .line 6
    iput-object p3, p0, Lads_mobile_sdk/dt1;->c:Lads_mobile_sdk/x9;

    .line 7
    iput-boolean p4, p0, Lads_mobile_sdk/dt1;->d:Z

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 332
    :cond_4
    invoke-static {}, Lads_mobile_sdk/bi;->v()Lads_mobile_sdk/ai;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/ph;->f:Lads_mobile_sdk/ph;

    .line 333
    invoke-virtual {v0, v1}, Lads_mobile_sdk/ai;->a(Lads_mobile_sdk/ph;)Lads_mobile_sdk/ai;

    move-result-object v0

    .line 334
    invoke-static {p0}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object p0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/ai;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/ai;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/bi;

    .line 336
    invoke-virtual {p0}, Lads_mobile_sdk/f;->c()[B

    move-result-object p0

    const/16 v0, 0xb

    .line 337
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 12

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "close"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lads_mobile_sdk/dt1;->c:Lads_mobile_sdk/x9;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v7, v3, v0

    .line 103
    check-cast v2, Lads_mobile_sdk/y9;

    .line 104
    iget-object v0, v2, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    .line 105
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/st1;

    const/16 v6, 0xbb9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 107
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_42
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception v0

    goto :goto_4b

    :catch_42
    move-exception v0

    .line 109
    :try_start_43
    new-instance v1, Lads_mobile_sdk/ly3;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v1

    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_40

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/MotionEvent;)V
    .registers 12

    monitor-enter p0

    .line 111
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lads_mobile_sdk/dt1;->b:Lads_mobile_sdk/oy3;

    check-cast v2, Lads_mobile_sdk/tn0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v3, "t"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "aid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v3, "evt"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "he"

    const-class v4, Ljava/util/Map;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 120
    iget-object v3, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lads_mobile_sdk/dt1;->c:Lads_mobile_sdk/x9;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 123
    check-cast p1, Lads_mobile_sdk/y9;

    .line 124
    iget-object p1, p1, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    .line 125
    move-object v4, p1

    check-cast v4, Lads_mobile_sdk/st1;

    const/16 v5, 0xbbb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 126
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 127
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_69
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    monitor-exit p0

    return-void

    :catchall_66
    move-exception v0

    move-object p1, v0

    goto :goto_73

    :catch_69
    move-exception v0

    move-object p1, v0

    .line 129
    :try_start_6b
    new-instance v0, Lads_mobile_sdk/ly3;

    const/16 v1, 0x7d5

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v0

    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_66

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;)[B
    .registers 9

    monitor-enter p0

    .line 339
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    const/4 v2, 0x0

    .line 341
    :try_start_6
    iget-object v3, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    .line 342
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "xss"

    const-class v5, Ljava/util/Map;

    const-class v6, Ljava/util/Map;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 343
    iget-object v4, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_2a
    .catchall {:try_start_6 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object p1

    :catchall_28
    move-exception p1

    goto :goto_39

    :catch_2a
    move-exception p1

    .line 348
    :try_start_2b
    iget-object v3, p0, Lads_mobile_sdk/dt1;->c:Lads_mobile_sdk/x9;

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0x7d7

    .line 350
    invoke-virtual {v3, v0, v4, v5, p1}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    monitor-exit p0

    return-object v2

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_28

    throw p1
.end method

.method public final declared-synchronized b()I
    .registers 5

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lcs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 188
    :try_start_23
    new-instance v1, Lads_mobile_sdk/ly3;

    const/16 v2, 0x7d6

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v1

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_20

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 5

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lads_mobile_sdk/dt1;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 89
    :try_start_23
    new-instance v1, Lads_mobile_sdk/ly3;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v1

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_20

    throw v0
.end method
