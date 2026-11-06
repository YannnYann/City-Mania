###### Class com.ironsource.adqualitysdk.sdk.i.C0811 (com.ironsource.adqualitysdk.sdk.i.ぃ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ぃ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;)V
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    return-void

    .line 6
    :cond_c
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    .line 8
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;

    invoke-direct {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ｱ;)V

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 11
    :cond_2a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;

    :goto_35
    if-eqz v1, :cond_aa

    .line 15
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v3

    .line 18
    monitor-enter v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_bb

    .line 19
    :try_start_41
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    .line 20
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;->ﾒ:Lorg/json/JSONObject;
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_a7

    :try_start_45
    monitor-exit v1

    .line 21
    const-string v5, "JNSXnQ==\n"

    const-string v6, "VLjw8/jUoAQ=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ףּ:Ljava/lang/String;

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    if-eqz v4, :cond_63

    .line 23
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ﻏ()Ljava/util/HashMap;

    move-result-object v3

    .line 24
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;

    goto :goto_67

    .line 25
    :cond_63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_67
    if-eqz v3, :cond_86

    .line 26
    invoke-virtual {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾒ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_86

    .line 35
    :cond_70
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 36
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 37
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;

    invoke-direct {v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;Lcom/ironsource/adqualitysdk/sdk/i/ｱ;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a0

    .line 27
    :cond_86
    :goto_86
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﻛ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 28
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 29
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 30
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 31
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ(Ljava/lang/String;)V

    .line 33
    :cond_9d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_a0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;

    goto :goto_35

    :catchall_a7
    move-exception p1

    .line 41
    monitor-exit v1

    throw p1

    .line 42
    :cond_aa
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 44
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ァ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ァ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ぃ;)V

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ァ;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_ba} :catch_bb

    return-void

    .line 59
    :catch_bb
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    :cond_c0
    return-void
.end method
