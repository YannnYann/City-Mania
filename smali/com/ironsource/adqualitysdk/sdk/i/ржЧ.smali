###### Class com.ironsource.adqualitysdk.sdk.i.C0381 (com.ironsource.adqualitysdk.sdk.i.গ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/গ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ｋ:Landroid/content/Context;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ږ;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/গ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/গ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/গ;->ｋ:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 10

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ঢ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ঢ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/গ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/গ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/গ;->ｋ:Landroid/content/Context;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_d
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_81

    monitor-exit v0

    if-nez v2, :cond_29

    .line 10
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ڹ;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ڹ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V

    .line 20
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﻛ()I

    move-result v3

    int-to-long v3, v3

    .line 21
    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V

    .line 34
    :cond_29
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ｋ:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ｋ:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3f

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5e
    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    .line 42
    invoke-static {v7}, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ғ;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 43
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 46
    :cond_74
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 47
    :cond_78
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    invoke-direct {v2, v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    :catchall_81
    move-exception v1

    .line 76
    monitor-exit v0

    throw v1
.end method
