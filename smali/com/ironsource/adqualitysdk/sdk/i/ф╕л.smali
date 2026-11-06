###### Class com.ironsource.adqualitysdk.sdk.i.C0832 (com.ironsource.adqualitysdk.sdk.i.丫)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/丫;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ר;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

.field public final synthetic ﾇ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;Lcom/ironsource/adqualitysdk/sdk/i/ר;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﾇ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ר;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﾇ:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ヮ;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ｋ:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/B;

    if-nez v1, :cond_25

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/B;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﾇ:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/B;-><init>(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;)V

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ヮ;

    .line 8
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ヮ;->ｋ:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 11
    :cond_25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﾇ:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    .line 12
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/A;

    invoke-direct {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/A;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 13
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    .line 14
    :goto_32
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/丫;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ר;

    .line 15
    iput-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    return-void
.end method
