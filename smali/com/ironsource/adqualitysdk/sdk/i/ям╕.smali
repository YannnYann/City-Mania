###### Class com.ironsource.adqualitysdk.sdk.i.C0858 (com.ironsource.adqualitysdk.sdk.i.טּ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/טּ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ہ;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;

.field public final synthetic ﾇ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;Lcom/ironsource/adqualitysdk/sdk/i/ہ;Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﾇ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ہ;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﾇ:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    if-nez v1, :cond_25

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﾇ:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;-><init>(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;)V

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 8
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 11
    :cond_25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;

    .line 12
    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;

    .line 13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﾇ:Lorg/json/JSONObject;

    .line 14
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;-><init>(Lorg/json/JSONObject;)V

    .line 15
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ӵ;

    .line 16
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;

    .line 18
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻛ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 19
    :goto_3c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ہ;

    .line 20
    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    .line 21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/טּ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    .line 22
    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    return-void
.end method
