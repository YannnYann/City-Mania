###### Class com.ironsource.adqualitysdk.sdk.i.C0607 (com.ironsource.adqualitysdk.sdk.i.ᖾ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;

.field public final synthetic ｋ:Lorg/json/JSONArray;

.field public final synthetic ﾇ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;ZLorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﾇ:Z

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ｋ:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﾇ:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    :try_start_a
    const-string v0, "xShRUBpd\n"

    const-string v2, "oF40Pm4u90M=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ｋ:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_30

    :catch_18
    move-exception v0

    move-object v5, v0

    .line 5
    const-string v0, "wHiL5PHQkXvyU5zt5tC/fe9zmOn8y4o=\n"

    const-string v2, "gRbqiIik+Bg=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "cTvy0N+aY3hRKPTWw90gb0Is7svg33Rr\n"

    const-string v3, "NEmAv626AAo=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 7
    :goto_30
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
