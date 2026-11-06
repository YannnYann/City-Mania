###### Class com.ironsource.adqualitysdk.sdk.i.C0845 (com.ironsource.adqualitysdk.sdk.i.爫)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/爫;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/د;

.field public final synthetic ﾇ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/د;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﾇ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/د;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﾇ:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾇ:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/B0;

    if-nez v1, :cond_23

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/B0;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﾇ:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/B0;-><init>(Lorg/json/JSONObject;)V

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 8
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾇ:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 11
    :cond_23
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ﾇ:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Lorg/json/JSONObject;)V

    .line 13
    :goto_28
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/爫;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/د;

    .line 14
    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    return-void
.end method
