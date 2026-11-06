###### Class com.ironsource.adqualitysdk.sdk.i.C0330 (com.ironsource.adqualitysdk.sdk.i.ډ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ډ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ه;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-boolean v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﾒ:Z

    if-eqz v3, :cond_f4

    .line 2
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 3
    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 4
    iget-object v7, v2, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﾇ:Landroid/content/Context;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ږ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ډ;)V

    monitor-enter v5

    .line 5
    :try_start_14
    iget-object v3, v5, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_d2

    if-eqz v3, :cond_1e

    monitor-exit v5

    return-void

    .line 8
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭴ()Z

    move-result v3

    .line 9
    sput-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮉ:Z

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭸ()Z

    move-result v3

    .line 11
    sput-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﱡ:Z

    .line 12
    iget-boolean v3, v5, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ:Z

    if-nez v3, :cond_e8

    .line 13
    const-string v3, "lC2SqqFiYbCsGoeU\n"

    const-string v4, "1UnD38AOCMQ=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VyNushSJW65XI26yFIlW6ghhLcxW0QTgHy4C+2jRF+8Tejq/\n"

    const-string v8, "eg5DnzmkdoM=\n"

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "YMiHeMSLJlxtyId4xIsm\n"

    const-string v8, "QOWqVemmC3E=\n"

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v3, v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ব;

    invoke-direct {v3, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ব;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 24
    new-instance v9, Lcom/ironsource/adqualitysdk/sdk/i/গ;

    invoke-direct {v9, v5, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/গ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ږ;Landroid/content/Context;)V

    .line 36
    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ()Z

    move-result v2

    if-eqz v2, :cond_d4

    move-object v6, v7

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 38
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ō;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ō;-><init>()V

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ƈ;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ƈ;-><init>()V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/Ȳ;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ȳ;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    aput-object v2, v8, v0

    aput-object v3, v8, v1

    const/4 v2, 0x2

    aput-object v4, v8, v2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    new-instance v8, Ljava/util/ArrayList;

    .line 41
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾇ:Ljava/util/List;

    .line 42
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ad

    goto :goto_e5

    .line 46
    :cond_ad
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    .line 47
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c0

    goto :goto_c6

    :cond_c0
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/গ;)V

    move-object v9, v4

    .line 49
    :goto_c6
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;

    move-object v8, v2

    move-object v7, v6

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_e5

    :catchall_d2
    move-exception v0

    goto :goto_f2

    :cond_d4
    move-object v6, v7

    .line 50
    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/Ť;

    invoke-direct {v8}, Lcom/ironsource/adqualitysdk/sdk/i/Ť;-><init>()V

    move-object v7, v6

    .line 51
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 52
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 53
    :goto_e5
    iput-boolean v1, v5, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ:Z

    goto :goto_f0

    .line 55
    :cond_e8
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ঌ;

    invoke-direct {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ঌ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ږ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_f0
    .catchall {:try_start_1e .. :try_end_f0} :catchall_d2

    :goto_f0
    monitor-exit v5

    return-void

    .line 56
    :goto_f2
    monitor-exit v5

    throw v0

    :cond_f4
    return-void
.end method
