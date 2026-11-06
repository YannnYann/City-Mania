###### Class com.ironsource.adqualitysdk.sdk.i.C0195 (com.ironsource.adqualitysdk.sdk.i.ο)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ο;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Τ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Τ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ο;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Τ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ο;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Τ;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Τ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/Т;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_b
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    monitor-exit v0

    .line 5
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/υ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/υ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ο;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    :catchall_1a
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method
