###### Class ads_mobile_sdk.ny3 (ads_mobile_sdk.ny3)
.class public final Lads_mobile_sdk/ny3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/HashMap;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/oy3;

.field public final c:Lads_mobile_sdk/x9;

.field public final d:Lads_mobile_sdk/jy3;

.field public final e:Z

.field public f:Lads_mobile_sdk/dt1;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lads_mobile_sdk/ny3;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/oy3;Lads_mobile_sdk/x9;Lads_mobile_sdk/jy3;Z)V
    .registers 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/ny3;->g:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lads_mobile_sdk/ny3;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lads_mobile_sdk/ny3;->b:Lads_mobile_sdk/oy3;

    .line 64
    iput-object p3, p0, Lads_mobile_sdk/ny3;->c:Lads_mobile_sdk/x9;

    .line 65
    iput-object p4, p0, Lads_mobile_sdk/ny3;->d:Lads_mobile_sdk/jy3;

    .line 66
    iput-boolean p5, p0, Lads_mobile_sdk/ny3;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/dt1;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ny3;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ny3;->f:Lads_mobile_sdk/dt1;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final a(Lads_mobile_sdk/uu2;)Lads_mobile_sdk/dt1;
    .registers 11

    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p1, Lads_mobile_sdk/uu2;->a:Lads_mobile_sdk/jv2;

    if-eqz v0, :cond_dd

    .line 166
    invoke-virtual {v0}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-object v1, Lads_mobile_sdk/ny3;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_30

    if-eqz v2, :cond_15

    .line 168
    monitor-exit p0

    goto :goto_5c

    :cond_15
    const/16 v2, 0x7ea

    .line 174
    :try_start_17
    iget-object v3, p0, Lads_mobile_sdk/ny3;->d:Lads_mobile_sdk/jy3;

    .line 175
    iget-object v4, p1, Lads_mobile_sdk/uu2;->b:Ljava/io/File;

    .line 176
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lads_mobile_sdk/jy3;->a(Ljava/io/File;)Z

    move-result v3
    :try_end_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_22} :catch_d5
    .catchall {:try_start_17 .. :try_end_22} :catchall_30

    if-eqz v3, :cond_cd

    .line 177
    :try_start_24
    iget-object v2, p1, Lads_mobile_sdk/uu2;->c:Ljava/io/File;

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_3c

    :catchall_30
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e7

    :catch_34
    move-exception v0

    :goto_35
    move-object p1, v0

    goto/16 :goto_c5

    :catch_38
    move-exception v0

    goto :goto_35

    :catch_3a
    move-exception v0

    goto :goto_35

    .line 181
    :cond_3c
    :goto_3c
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 182
    iget-object v4, p1, Lads_mobile_sdk/uu2;->b:Ljava/io/File;

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lads_mobile_sdk/ny3;->a:Landroid/content/Context;

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v6, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 187
    const-string v2, "com.google.ccc.abuse.droidguard.DroidGuard"

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_58} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_58} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_58} :catch_34
    .catchall {:try_start_24 .. :try_end_58} :catchall_30

    .line 192
    :try_start_58
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_30

    monitor-exit p0

    .line 193
    :goto_5c
    :try_start_5c
    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/String;

    const-class v5, [B

    const-class v6, Ljava/lang/Object;

    const-class v7, Landroid/os/Bundle;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Class;

    move-result-object v0

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lads_mobile_sdk/ny3;->a:Landroid/content/Context;

    const-string v2, "msa-r"

    .line 199
    invoke-virtual {p1}, Lads_mobile_sdk/uu2;->a()[B

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x2

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8b} :catch_bb

    .line 204
    new-instance v0, Lads_mobile_sdk/dt1;

    iget-object v1, p0, Lads_mobile_sdk/ny3;->b:Lads_mobile_sdk/oy3;

    iget-object v2, p0, Lads_mobile_sdk/ny3;->c:Lads_mobile_sdk/x9;

    iget-boolean v3, p0, Lads_mobile_sdk/ny3;->e:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lads_mobile_sdk/dt1;-><init>(Ljava/lang/Object;Lads_mobile_sdk/oy3;Lads_mobile_sdk/x9;Z)V

    .line 205
    invoke-virtual {v0}, Lads_mobile_sdk/dt1;->c()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 209
    invoke-virtual {v0}, Lads_mobile_sdk/dt1;->b()I

    move-result p1

    if-nez p1, :cond_a3

    return-object v0

    .line 211
    :cond_a3
    new-instance v0, Lads_mobile_sdk/ly3;

    .line 212
    const-string v1, "ci: "

    invoke-static {v1, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xfa1

    .line 380
    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/String;)V

    throw v0

    .line 381
    :cond_b1
    new-instance p1, Lads_mobile_sdk/ly3;

    const/16 v0, 0xfa0

    const-string v1, "init failed"

    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_bb
    move-exception v0

    move-object p1, v0

    .line 382
    new-instance v0, Lads_mobile_sdk/ly3;

    const/16 v1, 0x7d4

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v0

    .line 383
    :goto_c5
    :try_start_c5
    new-instance v0, Lads_mobile_sdk/ly3;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v0
    :try_end_cd
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_30

    .line 384
    :cond_cd
    :try_start_cd
    new-instance p1, Lads_mobile_sdk/ly3;

    const-string v0, "VM did not pass signature verification"

    invoke-direct {p1, v2, v0}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_d5
    .catch Ljava/security/GeneralSecurityException; {:try_start_cd .. :try_end_d5} :catch_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_30

    :catch_d5
    move-exception v0

    move-object p1, v0

    .line 389
    :try_start_d7
    new-instance v0, Lads_mobile_sdk/ly3;

    invoke-direct {v0, v2, p1}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/Exception;)V

    throw v0

    .line 390
    :cond_dd
    new-instance p1, Lads_mobile_sdk/ly3;

    const-string v0, "mc"

    const/16 v1, 0xfaa

    invoke-direct {p1, v1, v0}, Lads_mobile_sdk/ly3;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_e7
    .catchall {:try_start_d7 .. :try_end_e7} :catchall_30

    :goto_e7
    monitor-exit p0

    throw p1
.end method

.method public final a(Lads_mobile_sdk/dt1;)V
    .registers 8

    .line 570
    iget-object v0, p0, Lads_mobile_sdk/ny3;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ny3;->f:Lads_mobile_sdk/dt1;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    if-eqz v1, :cond_17

    .line 574
    :try_start_7
    invoke-virtual {v1}, Lads_mobile_sdk/dt1;->a()V
    :try_end_a
    .catch Lads_mobile_sdk/ly3; {:try_start_7 .. :try_end_a} :catch_d
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_17

    :catchall_b
    move-exception p1

    goto :goto_1b

    :catch_d
    move-exception v1

    .line 576
    :try_start_e
    iget-object v2, p0, Lads_mobile_sdk/ny3;->c:Lads_mobile_sdk/x9;

    .line 577
    iget v3, v1, Lads_mobile_sdk/ly3;->a:I

    const-wide/16 v4, -0x1

    .line 578
    invoke-virtual {v2, v3, v4, v5, v1}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 581
    :cond_17
    :goto_17
    iput-object p1, p0, Lads_mobile_sdk/ny3;->f:Lads_mobile_sdk/dt1;

    .line 582
    monitor-exit v0

    return-void

    .line 583
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    throw p1
.end method
