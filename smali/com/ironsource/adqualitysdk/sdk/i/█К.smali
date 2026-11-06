###### Class com.ironsource.adqualitysdk.sdk.i.C0355 (com.ironsource.adqualitysdk.sdk.i.ۊ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ۊ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ғ;

.field public final synthetic ｋ:Landroid/content/Context;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ｋ:Landroid/content/Context;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    .line 6
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 8
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-nez v1, :cond_18

    :goto_17
    return-void

    .line 9
    :cond_18
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    .line 10
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ח;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ܚ;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ܚ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ۊ;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
