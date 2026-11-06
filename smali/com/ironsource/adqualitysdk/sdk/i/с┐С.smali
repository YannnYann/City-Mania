###### Class com.ironsource.adqualitysdk.sdk.i.C0771 (com.ironsource.adqualitysdk.sdk.i.ῑ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ῑ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ί;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ί;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῑ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ί;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῑ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ί;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ὶ;Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῑ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ί;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ί;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_d
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ｋ:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2a

    monitor-exit v0

    .line 5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ร;

    .line 6
    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ร;->ﾒ()V

    goto :goto_19

    :cond_29
    return-void

    :catchall_2a
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method
