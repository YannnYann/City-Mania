###### Class com.ironsource.adqualitysdk.sdk.i.C0968 (com.ironsource.adqualitysdk.sdk.i.ﻪ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ধ;


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

.field public final synthetic ﾒ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾒ:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(I)V
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 103
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ↄ:Landroid/os/Handler;

    if-eqz v1, :cond_15

    .line 104
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ｯ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ｯ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;)V

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_17

    .line 111
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;)V
    .registers 12

    const/4 v1, 0x1

    .line 15
    :try_start_1
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

    .line 16
    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;->ﾒ:I

    .line 17
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;->ﾇ:Ljava/lang/String;

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_129

    const/16 v3, 0x12b

    if-le v2, v3, :cond_11

    goto/16 :goto_129

    .line 18
    :cond_11
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾒ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾒ:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    :catch_21
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    goto/16 :goto_12d

    .line 21
    :cond_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    :goto_2b
    const-string v2, "o9Sq\n"

    const-string v3, "0LDG6tmY+gM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 23
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﱡ()V

    .line 26
    :cond_40
    const-string v2, "+R/5QWo0ZtXFHP1J\n"

    const-string v3, "q3qULh5RJbo=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iT7h6+zUuKWvJ+7xqdWuoL8i9O3th6istC3r77M=\n"

    const-string v4, "2kuCiImny8M=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v2, v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    const-string v4, "xMejtw==\n"

    const-string v5, "qKTXxAnjKaU=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 30
    iget-boolean v6, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ᗀ:Z

    if-nez v6, :cond_8f

    .line 31
    iget-object v6, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->っ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ᕆ:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v5

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/ⅴ;

    invoke-direct {v8, v6, v7, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ⅴ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    iput-boolean v1, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ᗀ:Z

    .line 34
    :cond_8f
    const-string v3, "GLOL\n"

    const-string v4, "a8f4euHsfKM=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 37
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->っ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 38
    const-string v4, "XxYnPsg+FspOFCs4yw==\n"

    const-string v5, "LXVIUK5XceQ=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/Ⅼ;

    invoke-direct {v6, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Ⅼ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    const-string v2, "Tb0=\n"

    const-string v3, "Oc5HoheupaU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 42
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    const-string v2, "t0k=\n"

    const-string v3, "wj31RAynJkY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 45
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v2, "tM0H9Q==\n"

    const-string v3, "2aBmgyMfGH8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾒ:Landroid/content/Context;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 48
    iget-wide v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ｋ:J

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    const-string p1, "odjh\n"

    const-string v2, "0qyS5hhRKhQ=\n"

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_101} :catch_21

    if-eqz p1, :cond_11e

    .line 52
    :try_start_103
    const-string p1, "8u59\n"

    const-string v2, "gZoOLpfP3ns=\n"

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "HaWc\n"

    const-string v5, "btHvgI5rRLE=\n"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    add-long/2addr v5, v3

    .line 54
    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_103 .. :try_end_11e} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_11e} :catch_21

    .line 55
    :catch_11e
    :cond_11e
    :try_start_11e
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ﾒ(Lorg/json/JSONObject;)V

    .line 56
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 57
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->丫()V

    goto :goto_143

    .line 58
    :cond_129
    :goto_129
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_12c} :catch_21

    return-void

    .line 84
    :goto_12d
    const-string p1, "2j6UVTmdXo7mPZBd\n"

    const-string v0, "iFv5Ok34HeE=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "e/V/qfXXrVFM9GSo4NevVVPoeaOnlLJeWO5q5u2Esl4=\n"

    const-string v0, "PocNxof33TA=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 85
    :try_start_140
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_143

    .line 86
    :catchall_143
    :goto_143
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 87
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ト()V

    .line 88
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 89
    monitor-enter p1

    .line 90
    :try_start_14b
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_14d
    .catchall {:try_start_14b .. :try_end_14d} :catchall_186

    monitor-exit p1

    .line 91
    const-string v2, "dY/b\n"

    const-string v3, "Fu6v9X1hrR4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ヮ:I

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾒ(I)V

    .line 94
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 95
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->リ()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 96
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 97
    iget v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḹ:I

    .line 98
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ヶ()I

    move-result p1

    if-ne v0, p1, :cond_185

    .line 99
    const-string p1, "aqVbA23LklBWpl8L\n"

    const-string v0, "OMA2bBmu0T8=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "w8YyqtztDDrxyiy53b9YM7DGLr/L5lwov8clv8vmXCi8gymy0OtFPfzKOrndv1s15MtgrNX+RTKw\nyi61zb9eOeHWJa/N\n"

    const-string v2, "kKNA3LmfLFw=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_185
    return-void

    :catchall_186
    move-exception v0

    .line 100
    monitor-exit p1

    throw v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_7

    .line 1
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

    .line 2
    iget p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;->ﾒ:I

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    .line 3
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E7Zww3M0UvcisGvCZjRW/Tiia8shckf9O+RxyXNiUOBs5A==\n"

    const-string v1, "VsQCrAEUNZI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string v0, "Ngj3nkY9Q+wKC/OW\n"

    const-string v1, "ZG2a8TJYAIM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x193

    if-eq p1, p2, :cond_57

    .line 6
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 7
    iget p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḹ:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḹ:I

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ヶ()I

    move-result p1

    if-ge p2, p1, :cond_57

    .line 9
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_3f
    iget-object p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_54

    monitor-exit p1

    .line 12
    const-string v0, "D9YX\n"

    const-string v1, "bKRjadZuJfU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ヶ:I

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻪ;->ﾒ(I)V

    return-void

    :catchall_54
    move-exception p2

    .line 14
    monitor-exit p1

    throw p2

    :cond_57
    return-void
.end method
