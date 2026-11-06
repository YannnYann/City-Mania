###### Class com.ironsource.adqualitysdk.sdk.i.C0374 (com.ironsource.adqualitysdk.sdk.i.र)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/र;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/र;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/र;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_13

    .line 5
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 7
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻐ()V

    goto :goto_17

    .line 9
    :cond_27
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/र;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    :cond_34
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/र;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    .line 15
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/र;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 16
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    return-void
.end method
