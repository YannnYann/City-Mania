###### Class com.ironsource.adqualitysdk.sdk.i.C0708 (com.ironsource.adqualitysdk.sdk.i.ᵩ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    return-void
.end method


# virtual methods
.method public final ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 7
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﱡ:Ljava/util/HashMap;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-nez v0, :cond_15

    .line 9
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    if-eqz v1, :cond_15

    .line 10
    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method public final ﾇ()Ljava/util/ArrayList;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﻐ:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_14
    return-object v0
.end method

.method public final ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ｖ;
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 7
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﺙ:Ljava/util/HashMap;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ｖ;

    if-nez v0, :cond_15

    .line 9
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    if-eqz v1, :cond_15

    .line 10
    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ｖ;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method public final ﾒ()Ljava/util/ArrayList;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﻏ:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_14
    return-object v0
.end method
