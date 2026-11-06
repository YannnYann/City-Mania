###### Class com.ironsource.adqualitysdk.sdk.i.C0083 (com.ironsource.adqualitysdk.sdk.i.Ƭ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 2
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ:Z

    if-eqz v1, :cond_48

    .line 3
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾇ:Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/א;

    .line 5
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 6
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ｋ:Landroid/os/Handler;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    .line 9
    :cond_2f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 10
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

    if-nez v1, :cond_3c

    .line 11
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ȑ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;)V

    .line 12
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

    .line 13
    :cond_3c
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 14
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_48
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ȑ;

    return-void
.end method
