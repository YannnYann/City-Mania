###### Class com.ironsource.adqualitysdk.sdk.i.A0 (com.ironsource.adqualitysdk.sdk.i.A0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/A0;
.super Lcom/ironsource/adqualitysdk/sdk/i/ӵ;
.source "SourceFile"


# instance fields
.field public final ﭴ:Ljava/lang/String;

.field public final ﭸ:Ljava/lang/String;

.field public final ﮉ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;-><init>()V

    .line 3
    const-string v0, "DL8jB2MAwLEXuzIiRATalyuoJDdjHQ==\n"

    const-string v1, "e9pBUQplt/I=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﭸ:Ljava/lang/String;

    .line 5
    const-string v0, "JlEG0fKABJkjdgLL1A==\n"

    const-string v1, "UDhjprHsZeo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﮉ:Ljava/lang/String;

    .line 7
    const-string v0, "DCLiGK3vCkkZNMAPpv01WA==\n"

    const-string v1, "fEOQfcObXCA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﭴ:Ljava/lang/String;

    .line 9
    const-string v0, "vtj5cddmuay33w==\n"

    const-string v1, "1KutHp4I08k=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﾒ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ｋ:Z

    .line 12
    const-string v1, "jyaAUZ6tK2qGIQ==\n"

    const-string v2, "5VXUPtfDQQ8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_70

    const-string v1, "xXDHff7H01DVdOFG8sDrTQ==\n"

    const-string v3, "sAOiKpulhTk=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "moDL279hLnWdnMPpmW8EeIGH\n"

    const-string v3, "7/OujNoDbR0=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_70

    :cond_6e
    move v1, v0

    goto :goto_71

    :cond_70
    :goto_70
    move v1, v2

    .line 13
    :goto_71
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻏ:Z

    .line 14
    const-string v1, "xVEElGfLIvnVVSKva8wa5A==\n"

    const-string v3, "sCJhwwKpdJA=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﺙ:Z

    .line 16
    const-string v1, "Oof5ysa4Fz8Fhw==\n"

    const-string v3, "T/Scj77MZV4=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 17
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﱡ:Z

    .line 18
    const-string v1, "Aw5OU/k+a4sO\n"

    const-string v3, "dnwiA4tbDeI=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a4

    move-object v1, v3

    goto :goto_c0

    :cond_a4
    const-string v1, "P0AH4EN1GEwy\n"

    const-string v4, "SjJrsDEQfiU=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Mg==\n"

    const-string v5, "HiNjveErfJ0=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 19
    :goto_c0
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﾇ:Ljava/util/List;

    .line 20
    const-string v1, "aGaX2Ao0tut+Z5viHw==\n"

    const-string v4, "HRXykmtC15g=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻛ:Z

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻐ:Z

    .line 23
    const-string v1, "CJLzthBpwOgsiey2GHfP6BY=\n"

    const-string v2, "ZeefwnkZrI0=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 24
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﱟ:Z

    .line 25
    const-string v1, "kDfIsWJUmJKN\n"

    const-string v2, "+Vq4/gwE9+E=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 26
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﮐ:Z

    .line 27
    const-string v1, "Q1og09WRL4tSXSrWww==\n"

    const-string v2, "NTNFpKbFQMI=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_113

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :goto_101
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_113

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_110

    .line 31
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_113
    if-eqz v3, :cond_117

    .line 32
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﮌ:Ljava/util/List;

    :cond_117
    return-void
.end method
