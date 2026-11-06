###### Class com.ironsource.adqualitysdk.sdk.i.HandlerC0113 (com.ironsource.adqualitysdk.sdk.i.ɭ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ɭ;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ȉ;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 7
    :cond_9
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    .line 8
    :goto_b
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_e
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻐ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1a

    .line 12
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    goto :goto_2f

    .line 14
    :cond_1a
    new-array v2, v1, [Lcom/ironsource/adqualitysdk/sdk/i/ȓ;

    .line 15
    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻐ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻐ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 17
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_18

    if-gtz v1, :cond_2a

    goto :goto_b

    :cond_2a
    const/4 p1, 0x0

    .line 19
    aget-object p1, v2, p1

    const/4 p1, 0x0

    .line 20
    throw p1

    .line 21
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_18

    throw p1
.end method
