###### Class com.ironsource.adqualitysdk.sdk.i.C1024 (com.ironsource.adqualitysdk.sdk.i.ﾒ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﾒ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾒ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾒ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_c
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    .line 4
    monitor-exit v1

    throw v0
.end method
