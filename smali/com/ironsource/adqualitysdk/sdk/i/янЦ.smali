###### Class com.ironsource.adqualitysdk.sdk.i.C0874 (com.ironsource.adqualitysdk.sdk.i.ﭖ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ӵ;
.source "SourceFile"


# instance fields
.field public final ףּ:Z

.field public final ﭖ:Z

.field public final ﭴ:I

.field public final ﭸ:Ljava/lang/String;

.field public final ﮉ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ףּ:Z

    .line 7
    const-string v1, "1aL6To4wyDrAv/VMlzw=\n"

    const-string v2, "tMa7LfpZvlM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ﮉ:Ljava/lang/String;

    .line 9
    const-string v1, "n3OixTyTR9GEd7PgG5dd97hkpfU8jg==\n"

    const-string v2, "6BbAk1X2MJI=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ﭸ:Ljava/lang/String;

    .line 11
    const-string v1, "JUc44c7cags2\n"

    const-string v2, "UiJat6e5HUI=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ﭴ:I

    .line 13
    const-string v1, "TuQ6B0l/p/RC6jIQRGq98E4=\n"

    const-string v2, "K5xbZD0+xIA=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ﭖ:Z

    .line 15
    const-string v1, "tWlS0Tny/hm1aU3hFvHWHrhrXw==\n"

    const-string v2, "1Aomkliekns=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 16
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭖ;->ףּ:Z

    .line 17
    const-string v1, "aI/6kOHsFgFhiA==\n"

    const-string v2, "Avyu/6iCfGQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﾒ:Ljava/lang/String;

    .line 19
    const-string v1, "8kgiC8Q1+Ur/\n"

    const-string v2, "hzpOW7ZQnyM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_70

    move-object v1, v2

    goto :goto_8c

    :cond_70
    const-string v1, "atyijbjZZYVn\n"

    const-string v3, "H67O3cq8A+w=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wQ==\n"

    const-string v4, "7e3i5AK26+k=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 20
    :goto_8c
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﾇ:Ljava/util/List;

    .line 21
    const-string v1, "OceM9zgUZW8pw6HBLh4=\n"

    const-string v3, "TLTpoF12MwY=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 22
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ｋ:Z

    .line 23
    const-string v1, "lC0JEQ4EnuyCLAUrGw==\n"

    const-string v3, "4V5sW29y/58=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 24
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻛ:Z

    .line 25
    const-string v1, "U485S9jOdvtaiA==\n"

    const-string v4, "OfxtJJGgHJ4=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "u8vrVUga3Mqrz81uRB3k1w==\n"

    const-string v4, "zriOAi14iqM=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, "D5fwGL5IG3IIi/gqmEYxfxSQ\n"

    const-string v4, "euSVT9sqWBo=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    goto :goto_db

    :cond_da
    move v3, v0

    .line 26
    :cond_db
    :goto_db
    iput-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻏ:Z

    .line 27
    const-string v1, "cSq9HVv6Ua1hLpsmV/1psA==\n"

    const-string v3, "BFnYSj6YB8Q=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 28
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﺙ:Z

    .line 29
    const-string v1, "7OXqvZBLdHXT5Q==\n"

    const-string v3, "mZaP+Og/BhQ=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 30
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﱡ:Z

    .line 31
    const-string v1, "rwec4Ae+co6qGJz6F7BQjr8Dig==\n"

    const-string v3, "2nT5rXLSBuc=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 32
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻐ:Z

    .line 33
    const-string v1, "HeVp3OYRCLI5/nbc7g8HsgM=\n"

    const-string v3, "cJAFqI9hZNc=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 34
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﱟ:Z

    .line 35
    const-string v1, "YVaDL/VkjfZ8\n"

    const-string v3, "CDvzYJs04oU=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﮐ:Z

    .line 37
    const-string v1, "nJ0Vk/xw/Z+Nmh+W6g==\n"

    const-string v3, "6vRw5I8kktY=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_148

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_136
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_148

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_145
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_148
    if-eqz v2, :cond_14c

    .line 42
    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﮌ:Ljava/util/List;

    :cond_14c
    return-void
.end method
