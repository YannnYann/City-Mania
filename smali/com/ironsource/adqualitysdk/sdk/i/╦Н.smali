###### Class com.ironsource.adqualitysdk.sdk.i.C0164 (com.ironsource.adqualitysdk.sdk.i.ˍ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ˍ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ˍ;


# instance fields
.field public final ｋ:Landroid/os/Handler;

.field public ﾇ:Ljava/util/HashMap;

.field public final ﾒ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "lqBvSf+OszKHrG5D+KSCP5Kq\n"

    const-string v1, "4s8aKpfK1kY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "uLIj\n"

    const-string v1, "2cZPci7+/WM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ctY=\n"

    const-string v1, "ALrWr54DEcQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "wR/M\n"

    const-string v1, "r3CiNJ6ZH14=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ:Ljava/util/HashMap;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ｋ:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized ｋ()Lcom/ironsource/adqualitysdk/sdk/i/ˍ;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ˍ;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ˍ;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 4
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ˍ;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final declared-synchronized ｋ(Landroid/app/Activity;)Z
    .registers 3

    monitor-enter p0

    .line 5
    :try_start_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final declared-synchronized ﾇ()Ljava/util/HashMap;
    .registers 3

    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final declared-synchronized ﾇ(Landroid/app/Activity;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final declared-synchronized ﾒ(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/ˑ;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_39

    .line 1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object p1

    :catchall_21
    move-exception p1

    goto :goto_47

    .line 5
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾒ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_21

    monitor-exit p0

    return-object p1

    .line 9
    :cond_39
    :try_start_39
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱟ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_21

    monitor-exit p0

    return-object p1

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_21

    throw p1
.end method

.method public final declared-synchronized ﾒ()Ljava/util/Map;
    .registers 6

    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ:Ljava/util/HashMap;

    if-nez v0, :cond_4b

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ:Ljava/util/HashMap;

    .line 12
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 13
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    if-eqz v0, :cond_25

    .line 14
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 15
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮉ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_26

    .line 17
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮐ:Lorg/json/JSONObject;

    goto :goto_26

    :catchall_23
    move-exception v0

    goto :goto_4f

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_26
    if-eqz v1, :cond_4b

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 20
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ˑ;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ˑ;

    move-result-object v4

    .line 23
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 24
    :cond_49
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ:Ljava/util/HashMap;

    .line 32
    :cond_4b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˍ;->ﾇ:Ljava/util/HashMap;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_23

    monitor-exit p0

    return-object v0

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_23

    throw v0
.end method
