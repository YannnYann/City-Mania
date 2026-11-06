###### Class com.ironsource.adqualitysdk.sdk.i.C0937 (com.ironsource.adqualitysdk.sdk.i.ﺗ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/h0;

.field public final ﻏ:Ljava/util/ArrayList;

.field public final ﻐ:Landroid/content/Context;

.field public final ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 3
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    .line 4
    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵗ;

    .line 5
    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻐ:Landroid/content/Context;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻏ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ﻐ()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻏ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    .line 2
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;

    invoke-direct {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 5
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ヶ;

    invoke-direct {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ヶ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 7
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/乁;

    invoke-direct {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/乁;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 9
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v2

    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;

    monitor-enter v2

    .line 11
    :try_start_45
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    monitor-exit v2

    .line 12
    iput-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;

    goto :goto_51

    :catchall_4e
    move-exception v0

    monitor-exit v2

    throw v0

    .line 14
    :cond_51
    :goto_51
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    if-eqz v2, :cond_5a

    .line 15
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ()V

    .line 16
    iput-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 18
    :cond_5a
    iput-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    goto :goto_6

    .line 19
    :cond_5d
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻳ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻳ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method

.method public final declared-synchronized ﻛ()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﻐ()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_93

    const-string v1, "Wq+tYxNlAQ==\n"

    const-string v3, "H+HsIV8gRdA=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "JfjbswiBM5w=\n"

    const-string v3, "YbGI8krNdtg=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_93

    .line 7
    :cond_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﱡ:Ljava/lang/String;

    if-nez v3, :cond_90

    .line 10
    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﾒ:Lorg/json/JSONObject;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﮉ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 11
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 13
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_5d
    move-object v4, v2

    :cond_5e
    if-eqz v4, :cond_90

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᓘ;

    invoke-direct {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᓘ;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_75
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 26
    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_75

    .line 27
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_75

    .line 30
    :cond_8e
    iput-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﱡ:Ljava/lang/String;

    .line 33
    :cond_90
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﱡ:Ljava/lang/String;

    return-object v0

    :cond_93
    :goto_93
    return-object v2
.end method

.method public final declared-synchronized ﾇ()Ljava/util/ArrayList;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻏ:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻏ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    goto :goto_17

    .line 4
    :cond_10
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_e

    monitor-exit p0

    return-object v0

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_e

    throw v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;
    .registers 4

    if-eqz p1, :cond_1a

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﾇ()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ｋ:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 4
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;)V

    return-object v1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized ﾒ()V
    .registers 5

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﻐ()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾇ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 9
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    .line 10
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 11
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_11

    :catchall_2f
    move-exception v0

    goto :goto_33

    :cond_31
    monitor-exit p0

    return-void

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2f

    throw v0
.end method
