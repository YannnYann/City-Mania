###### Class com.ironsource.adqualitysdk.sdk.i.C1032 (com.ironsource.adqualitysdk.sdk.i.ﾞ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﺙ:Ljava/lang/String;


# instance fields
.field public final ﻏ:I

.field public ﻐ:J

.field public ﻛ:J

.field public ｋ:J

.field public ﾇ:J

.field public ﾒ:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "0wAbkUgV7Ez3Og+aWAn/TukADJFJ\n"

    const-string v1, "h2l29DthjSE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﺙ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ:Ljava/lang/Boolean;

    .line 13
    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻏ:I

    .line 15
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;)V

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 16
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ↄ:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 17
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;

    invoke-direct {v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ſ;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method


# virtual methods
.method public final ﾇ(Lorg/json/JSONObject;)V
    .registers 12

    .line 1
    :try_start_0
    const-string v0, "CaUI\n"

    const-string v1, "esxsfwMyG6o=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻏ:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5a

    .line 3
    iget-wide v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ｋ:J

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾇ:J

    sub-long/2addr v4, v6

    .line 4
    const-string v0, "f0/D\n"

    const-string v2, "GzuwGEEUrl0=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "9wM=\n"

    const-string v2, "gnes0CQi6/g=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3c

    goto :goto_5a

    .line 7
    :cond_3c
    const-string v0, "wbup\n"

    const-string v1, "pc/ajNblieU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻐ:J

    add-long/2addr v0, v4

    .line 8
    const-string v2, "oX+/\n"

    const-string v4, "1QzQEQIJjqg=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻐ:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v2, v3

    goto :goto_78

    .line 9
    :cond_5a
    :goto_5a
    const-string v0, "LFM=\n"

    const-string v2, "WSfgT2QFni4=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻛ:J

    add-long/2addr v4, v6

    .line 10
    const-string v0, "xZVH\n"

    const-string v2, "sOEonM4IVnc=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻛ:J

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v2, v1

    move-wide v0, v4

    .line 18
    :goto_78
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﻏ:Ljava/lang/String;

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_90

    .line 20
    const-string v0, "Dex4\n"

    const-string v1, "eZ8LWbs09uA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    :cond_90
    invoke-virtual {p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾇ(Lorg/json/JSONObject;Z)V

    .line 24
    invoke-virtual {p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ(Lorg/json/JSONObject;Z)V
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_96} :catch_96

    :catch_96
    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;Z)V
    .registers 7

    .line 25
    const-string v0, "XPO+\n"

    const-string v1, "L4fNu1SRJxc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_20

    .line 28
    const-string p2, "9OfX\n"

    const-string v0, "h5Kjmc2ExE0=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻛ:J

    :goto_1e
    add-long/2addr v0, v2

    goto :goto_2f

    .line 30
    :cond_20
    const-string p2, "DEFH\n"

    const-string v0, "fzU0Y+MrGgM=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻐ:J

    goto :goto_1e

    .line 33
    :goto_2f
    :try_start_2f
    const-string p2, "7u8t\n"

    const-string v2, "nZtemgYM+xY=\n"

    invoke-static {p2, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;Z)V
    .registers 7

    .line 9
    :try_start_0
    const-string v0, "xEF5dfi4qVDA\n"

    const-string v1, "qCAKAazX3DM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_50

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2a

    .line 13
    const-string p2, "JA==\n"

    const-string v2, "UaKr8SU8Hko=\n"

    invoke-static {p2, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_42

    .line 15
    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻛ:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_43

    .line 18
    :cond_2a
    const-string p2, "3A==\n"

    const-string v2, "qLiZZce/ujQ=\n"

    invoke-static {p2, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_42

    .line 20
    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻐ:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_43

    :cond_42
    const/4 p2, 0x0

    :goto_43
    if-eqz p2, :cond_50

    .line 24
    const-string v0, "mA==\n"

    const-string v1, "7KmudrAQaXs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;)Z
    .registers 6

    .line 1
    const-string v0, "nCB+\n"

    const-string v1, "6VQROkfirok=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    const-string v0, "PBgc\n"

    const-string v2, "SGtztpq9Viw=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_35

    .line 3
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ:Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    .line 5
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾇ(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_27

    const/4 p1, 0x1

    return p1

    :catch_27
    move-exception p1

    .line 8
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﺙ:Ljava/lang/String;

    const-string v2, "Rev5Ent9KBVu+uMPZjMyFmn37F1sKz4CdA==\n"

    const-string v3, "AJmLfQldW2w=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_35
    :goto_35
    return v1
.end method
