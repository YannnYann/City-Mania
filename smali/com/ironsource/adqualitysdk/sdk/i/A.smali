###### Class com.ironsource.adqualitysdk.sdk.i.A (com.ironsource.adqualitysdk.sdk.i.A)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﭖ:Ljava/util/List;

.field public final ﭴ:Ljava/util/List;

.field public final ﭸ:Ljava/util/List;

.field public final ﮉ:Ljava/util/List;

.field public final ﮌ:Z

.field public final ﮐ:Z

.field public final ﱟ:Z

.field public final ﱡ:Z

.field public final ﺙ:Z

.field public final ﻏ:Z

.field public final ﻐ:Ljava/lang/String;

.field public final ﻛ:Z

.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Ljava/lang/String;

.field public final ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    .line 15
    const-string v0, "jQ7m87YdPEONGcPUsgca\n"

    const-string v1, "7GqwmtNqfy8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾒ:Ljava/lang/String;

    .line 17
    const-string v0, "yFF3icAcFUDKXkCHwA==\n"

    const-string v1, "qTUh4KVrRSE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾇ:Ljava/lang/String;

    .line 19
    const-string v0, "sU+aje9T6U64SA==\n"

    const-string v1, "2zzO4qY9gys=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ｋ:Ljava/lang/String;

    .line 21
    const-string v0, "jmGRVlGgbKGeZbdtXadUvA==\n"

    const-string v1, "+xL0ATTCOsg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻛ:Z

    .line 23
    const-string v0, "yxi6Tw0Vw43MBLJ9KxvpgNAf\n"

    const-string v1, "vmvfGGh3gOU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 24
    const-string v0, "MV+gB3priF08\n"

    const-string v1, "RC3MVwgO7jQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻐ:Ljava/lang/String;

    .line 26
    const-string v0, "kFmINW9u9fG4Tg==\n"

    const-string v1, "+SrGVBsHg5Q=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻏ:Z

    .line 28
    const-string v0, "Vq045OG/hJ1UgybrwZqEnUSx\n"

    const-string v1, "MMJKh4Ts4fM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 29
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﺙ:Z

    .line 30
    const-string v0, "2lPCdL9X+6nN\n"

    const-string v1, "qDahAc0kkt8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱡ:Z

    .line 32
    const-string v0, "STDFaoxpY7JfMclQmQ==\n"

    const-string v1, "PEOgIO0fAsE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱟ:Z

    .line 34
    const-string v0, "yF6sNMvU2hL3Xg==\n"

    const-string v2, "vS3JcbOgqHM=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮐ:Z

    .line 36
    const-string v0, "gy70w/cmpeOaOezT3Tub1Joyz8jgMLfR\n"

    const-string v2, "81yboJJV1rU=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮌ:Z

    .line 38
    const-string v0, "pmXcMRnM9A==\n"

    const-string v1, "0Ay5RlCoh08=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_ed

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 40
    :goto_db
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_ee

    .line 41
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_ea

    .line 42
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    add-int/lit8 v4, v4, 0x1

    goto :goto_db

    :cond_ed
    move-object v3, v1

    :cond_ee
    if-eqz v3, :cond_f2

    .line 43
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 44
    :cond_f2
    const-string v0, "RgQ1/IXCS+FCFBX6usxR51UC\n"

    const-string v3, "J2dBlfOrP4g=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_118

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 46
    :goto_106
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_119

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_115

    .line 48
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    add-int/lit8 v4, v4, 0x1

    goto :goto_106

    :cond_118
    move-object v3, v1

    :cond_119
    if-eqz v3, :cond_11d

    .line 49
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 50
    :cond_11d
    const-string v0, "QL2EOVC2KOFRuo48Rg==\n"

    const-string v3, "NtThTiPiR6g=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_143

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 52
    :goto_131
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_144

    .line 53
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_140

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_140
    add-int/lit8 v4, v4, 0x1

    goto :goto_131

    :cond_143
    move-object v3, v1

    :cond_144
    if-eqz v3, :cond_148

    .line 55
    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 56
    :cond_148
    const-string v0, "vplGf3f2KTCyvkJpdA==\n"

    const-string v3, "3fUnDASTWmQ=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_16d

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_15b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_16d

    .line 59
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16a

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15b

    :cond_16d
    if-eqz v1, :cond_171

    .line 61
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    :cond_171
    return-void
.end method
