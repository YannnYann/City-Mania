###### Class com.ironsource.adqualitysdk.sdk.i.C0615 (com.ironsource.adqualitysdk.sdk.i.ᘅ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;

.field public final synthetic ﾇ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;->ﾇ:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;->ﾇ:Lorg/json/JSONObject;

    .line 2
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 3
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    .line 4
    invoke-virtual {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ(Lorg/json/JSONObject;)Z

    .line 5
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ṯ;

    invoke-direct {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ṯ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;)V

    .line 6
    iget-object v0, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 7
    monitor-enter v0

    .line 8
    monitor-exit v0

    .line 9
    invoke-virtual {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Lorg/json/JSONObject;)V

    .line 11
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;

    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    invoke-direct {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;-><init>(Lorg/json/JSONObject;)V

    .line 13
    invoke-direct {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ｱ;)V

    .line 14
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻏ()I

    move-result v5

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻛ()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ(ILjava/util/HashMap;)V

    .line 16
    iget-object v1, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    invoke-virtual {v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ｱ;Lcom/ironsource/adqualitysdk/sdk/i/ṯ;)V

    .line 18
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ(Lorg/json/JSONObject;)V

    return-void
.end method
