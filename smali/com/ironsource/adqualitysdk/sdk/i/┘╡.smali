###### Class com.ironsource.adqualitysdk.sdk.i.C0324 (com.ironsource.adqualitysdk.sdk.i.ٵ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ٵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ףּ:Ljava/lang/String;

.field public static final ﭖ:Ljava/lang/String;


# instance fields
.field public final ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

.field public final ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

.field public final ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/จ;

.field public final ﮌ:Ljava/lang/String;

.field public volatile ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

.field public ﱟ:Ljava/util/HashMap;

.field public ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

.field public final ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;

.field public final ﻏ:Ljava/util/HashMap;

.field public final ﻐ:Ljava/util/HashMap;

.field public final ﻛ:Ljava/util/ArrayList;

.field public volatile ｋ:Ljava/util/ArrayList;

.field public ﾇ:Z

.field public final ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "xcKRuQDAro/04J65BMS/kg==\n"

    const-string v1, "hq3/12Wj2uA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string v0, "L0HXuc5XzQ==\n"

    const-string v1, "ag+W+4ISibU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ףּ:Ljava/lang/String;

    const-string v0, "4dmKNUAxw6Q=\n"

    const-string v1, "pZDZdAJ9huA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ь;Lcom/ironsource/adqualitysdk/sdk/i/จ;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻛ:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻏ:Ljava/util/HashMap;

    .line 9
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱟ:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

    .line 25
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    .line 26
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ:Landroid/os/Handler;

    .line 27
    invoke-direct {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;-><init>(Landroid/os/Handler;Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    .line 28
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ:Ljava/lang/ref/WeakReference;

    .line 29
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/শ;

    invoke-direct {p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/শ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V

    .line 30
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻛ:Ljava/util/HashSet;

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮌ:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 34
    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/จ;

    return-void
.end method

.method public static ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/HashMap;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻏ:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/List;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public static ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻛ:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/HashMap;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;)Lorg/json/JSONObject;
    .registers 10

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 13
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    :try_start_e
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖭ:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_27

    :catch_14
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 18
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string p0, "CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n"

    const-string v0, "TaIYRTgTeW8=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 20
    :goto_27
    :try_start_27
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖸ:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 22
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻐ:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_44

    :catch_31
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 25
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string p0, "NI4MxXL5uOgUnQrDbr77+R6SEM9jrbToUYob2HOwtPRRlg3Fbg==\n"

    const-string p1, "cfx+qgDZ25o=\n"

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 26
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    :goto_44
    return-object v1
.end method

.method public static ﾒ(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .registers 6

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    .line 149
    :cond_31
    const-string p0, "+1KdVg==\n"

    const-string v2, "jSHzJfrqZrk=\n"

    invoke-static {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    if-nez v0, :cond_a

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ()Z

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/จ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/จ;->adQualitySdkInitSuccess()V

    goto :goto_33

    :catchall_1e
    move-exception v0

    goto :goto_35

    .line 9
    :cond_20
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->CONNECTOR_LOAD_TIMEOUT:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    const-string v2, "8K5yqHZOdBLdtT25agBtEsykcqd2QX4S2uEhvnpDfwTNpyendVk=\n"

    const-string v3, "vsFSyxkgGnc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/จ;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/จ;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_1e

    :goto_33
    monitor-exit p0

    return-void

    .line 10
    :goto_35
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized ﺙ()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final declared-synchronized ﻏ()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    .line 4
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 5
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/र;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/र;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    if-eqz v0, :cond_23

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ӌ;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ӌ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_28

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_21

    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    throw v0
.end method

.method public final declared-synchronized ﻐ()Z
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﬤ()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﺙ()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :catchall_13
    move-exception v0

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    return v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_13

    throw v0
.end method

.method public final declared-synchronized ﻛ()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final ｋ()Lorg/json/JSONObject;
    .registers 8

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1} :catch_9

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    :try_start_3
    monitor-exit p0

    .line 6
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    move-object v4, v0

    goto :goto_f

    :catchall_c
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_f} :catch_9

    .line 8
    :goto_f
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string v0, "1RMxhoo1ecn0CC2O2HZ3w/4EIJ2XZzjb9RMwgJd7aw==\n"

    const-string v2, "kGFD6fgVGK0=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    .line 9
    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized ﾇ()Ljava/util/HashMap;
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻏ:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;
    .registers 2

    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/จ;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final ﾒ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v0, p5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_c

    move-object v8, v4

    goto :goto_17

    .line 78
    :cond_c
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 79
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;

    invoke-direct {v6, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    move-object v8, v6

    .line 80
    :goto_17
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﾇ()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v5

    check-cast v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 83
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ύ:Lcom/ironsource/adqualitysdk/sdk/i/م;

    .line 84
    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/م;->ﾇ()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 85
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v5

    check-cast v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 86
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ύ:Lcom/ironsource/adqualitysdk/sdk/i/م;

    .line 87
    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/ғ;->ﾇ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/م;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_48

    :goto_46
    move-object v9, v4

    goto :goto_8a

    .line 91
    :cond_48
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VvUmJIg3J95H6Wc=\n"

    const-string v9, "NZpISu1UU7E=\n"

    invoke-static {v7, v9}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/ғ;->ﾇ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 93
    :cond_69
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HNJS9Iah0TgNzhM=\n"

    const-string v7, "f708muPCpVc=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/ғ;->ﾇ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :goto_8a
    if-eqz v9, :cond_160

    .line 94
    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/ғ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v0

    .line 96
    monitor-enter p0

    .line 97
    :try_start_95
    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ:Ljava/util/HashMap;
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_15d

    monitor-exit p0

    .line 98
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_9d
    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖭ:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_a2} :catch_a3

    goto :goto_b5

    :catch_a3
    move-exception v0

    move-object v13, v0

    .line 102
    sget-object v10, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string v0, "CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n"

    const-string v7, "TaIYRTgTeW8=\n"

    invoke-static {v0, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    .line 103
    invoke-static/range {v10 .. v15}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 104
    :goto_b5
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_c6

    .line 107
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 108
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;

    invoke-direct {v6, v0, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/צ;)V

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 109
    :cond_c6
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {v9}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ()Ljava/lang/String;

    move-result-object v5

    const-string v6, "yw==\n"

    const-string v7, "5Nfc4POVeY0=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GQ==\n"

    const-string v10, "N9KS+cTCU2o=\n"

    invoke-static {v7, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    invoke-virtual {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    const/4 v2, 0x1

    .line 113
    :cond_f0
    iget-object v10, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐴ;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object v5, v4

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ᐴ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;ZLjava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;)V

    move-object v4, v5

    invoke-virtual {v10, v9, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)Ljava/lang/String;

    move-result-object v3

    .line 130
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐯ;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ᐯ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;)V

    .line 131
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->טּ()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 132
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ｋ()I

    move-result v2

    :goto_122
    int-to-long v2, v2

    goto :goto_159

    .line 134
    :cond_124
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-static {v9}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yw==\n"

    const-string v5, "5Nfc4POVeY0=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GQ==\n"

    const-string v6, "N9KS+cTCU2o=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 137
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    invoke-virtual {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_150

    const-wide/16 v2, 0x0

    goto :goto_159

    .line 138
    :cond_150
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ｋ()I

    move-result v2

    goto :goto_122

    .line 139
    :goto_159
    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V

    return-void

    :catchall_15d
    move-exception v0

    .line 140
    monitor-exit p0

    throw v0

    .line 141
    :cond_160
    invoke-static {v8}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method

.method public final ﾒ(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V
    .registers 13

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 28
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 29
    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_37

    .line 30
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 31
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ғ;->ｋ()Ljava/lang/String;

    move-result-object v0

    :goto_35
    move-object v3, v0

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    goto :goto_35

    :goto_39
    if-eqz v3, :cond_69

    .line 32
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_49

    .line 33
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    .line 34
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    invoke-direct {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ח;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_49
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/LinkedHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 65
    monitor-enter p0

    .line 66
    :try_start_56
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result p1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_65

    monitor-exit p0

    if-nez p1, :cond_64

    .line 67
    invoke-virtual {p0, v4, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V

    :cond_64
    return-void

    :catchall_65
    move-exception v0

    move-object p1, v0

    .line 69
    monitor-exit p0

    throw p1

    :cond_69
    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .line 70
    invoke-virtual {p0, v4, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V

    return-void

    :cond_71
    move-object v2, p0

    move-object v8, p3

    .line 73
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒬ;

    invoke-direct {p1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ᒬ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    .line 150
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_70

    .line 151
    :cond_9
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1a

    .line 154
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 156
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾇ()Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ףּ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ⅼ;

    invoke-direct {v4, v2, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ⅼ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 167
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ᵏ;

    invoke-direct {v4, v2, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵏ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 174
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴷ;

    invoke-direct {v4, v2, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᴷ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;Ljava/util/List;)V

    .line 175
    :try_start_67
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴊ;

    invoke-direct {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᴊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/אּ;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_32

    goto :goto_32

    :cond_70
    :goto_70
    return-void
.end method

.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_e

    .line 75
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 76
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;

    invoke-direct {v2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ԅ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/צ;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_e
    if-eqz p2, :cond_1c

    .line 77
    :try_start_10
    const-string p1, "8Gii\n"

    const-string v0, "lAvRnZ3r2Ks=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-void
.end method

.method public final ﾒ(Ljava/lang/String;)Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱟ:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱟ:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮌ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾒ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
