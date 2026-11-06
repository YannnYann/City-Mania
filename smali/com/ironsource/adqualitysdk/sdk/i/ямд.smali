###### Class com.ironsource.adqualitysdk.sdk.i.C0848 (com.ironsource.adqualitysdk.sdk.i.ﬤ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬤ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 5
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    .line 9
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v2

    monitor-enter v2

    .line 11
    :try_start_2e
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    monitor-exit v2

    goto :goto_18

    :catchall_35
    move-exception v0

    .line 12
    monitor-exit v2

    throw v0

    :cond_38
    return-void
.end method
