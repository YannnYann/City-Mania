###### Class com.ironsource.adqualitysdk.sdk.i.C0507 (com.ironsource.adqualitysdk.sdk.i.ᒲ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒲ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒮ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_7
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_24

    monitor-exit v0

    if-eqz v1, :cond_23

    .line 4
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒳ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒳ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒲ;)V

    .line 9
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﻐ()I

    move-result v1

    int-to-long v1, v1

    .line 10
    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V

    :cond_23
    return-void

    :catchall_24
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method
