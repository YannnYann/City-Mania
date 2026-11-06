###### Class com.ironsource.adqualitysdk.sdk.i.C0610 (com.ironsource.adqualitysdk.sdk.i.ᗁ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

.field public final synthetic ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;

.field public final synthetic ﻐ:Z

.field public final synthetic ﻛ:Lorg/json/JSONObject;

.field public final synthetic ｋ:Lorg/json/JSONObject;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/Ṭ;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ｋ:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻛ:Lorg/json/JSONObject;

    iput-boolean p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻐ:Z

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﾇ:Ljava/lang/String;

    const-string v1, "oOPsiBY0T46n59KJBw==\n"

    const-string v2, "1JOz+3NHPNE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 3
    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﺙ:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﺙ:I

    .line 4
    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 5
    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱡ:I

    add-int/lit8 v3, v2, 0x1

    .line 6
    iput v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱡ:I

    .line 7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ｋ:Lorg/json/JSONObject;

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    const-string v3, "zFZT/A==\n"

    const-string v4, "ojc+mYT5B5o=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v3, "xOY=\n"

    const-string v4, "oYijoBc7M7k=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v2, "IcVaC28Tq6U+\n"

    const-string v3, "Vbc7aApxysY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻛ:Lorg/json/JSONObject;

    if-eqz v3, :cond_5d

    .line 14
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﾒ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖸ:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻛ:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_5d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string v2, "j7VIag==\n"

    const-string v3, "4domD9WneUs=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    :cond_6b
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/į;->ｋ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 21
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_7b
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﻐ:Z

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;->ﾇ:Ljava/lang/String;

    const-string v5, "bMmxOy6BuA==\n"

    const-string v6, "GLnuUkDozNA=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘅ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
