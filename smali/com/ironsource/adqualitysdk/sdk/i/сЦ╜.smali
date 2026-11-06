###### Class com.ironsource.adqualitysdk.sdk.i.C0606 (com.ironsource.adqualitysdk.sdk.i.ᖽ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;
.super Lcom/ironsource/adqualitysdk/sdk/i/Κ;
.source "SourceFile"


# static fields
.field public static final ﮐ:Ljava/lang/String;


# instance fields
.field public final ﱟ:Landroid/os/Handler;

.field public ﱡ:I

.field public ﺙ:I

.field public final ﻏ:I

.field public final ﻐ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "b4cHBLT7BzNdrBANo/spNUCMFAm54Bw=\n"

    const-string v1, "LulmaM2PblA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﮐ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;ILjava/lang/String;J)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/ironsource/adqualitysdk/sdk/i/Κ;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;J)V

    .line 2
    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﻏ:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﺙ:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱡ:I

    .line 5
    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﻐ:Ljava/lang/String;

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "R0mNVuGDTud1Yppf9oNg4WhCnlvsmFU=\n"

    const-string p3, "BifsOpj3J4Q=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱟ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;
    .registers 13

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_f5

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object p1

    .line 12
    :try_start_14
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﻏ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_24

    goto :goto_40

    :cond_24
    sub-long v6, v0, v4

    sub-long v6, v2, v6

    .line 25
    const-string p2, "a1xd\n"

    const-string p4, "GCgui2v6aD4=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    const-string p2, "dQk+\n"

    const-string p4, "BnxKANzLBWQ=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide v0, v4

    move-wide v2, v6

    .line 29
    :goto_40
    const-string p2, "MA6Y\n"

    const-string p4, "VHrrJraVyFk=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    const-string p2, "M5k=\n"

    const-string p4, "Ru2tv05T01E=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    const-string p2, "42mIaQ==\n"

    const-string p4, "kBzhDSEKr7g=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﻐ:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string p2, "XxwS\n"

    const-string p4, "LHV2P2JEQbY=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﻏ:I

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string p2, "3d8F\n"

    const-string p4, "rrFoNvPORGo=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    iget p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﺙ:I

    const/4 v0, 0x1

    if-nez p4, :cond_7e

    move p4, v0

    .line 36
    :cond_7e
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 38
    const-string p2, "De8Bzw==\n"

    const-string p4, "bpxtq/zDph4=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_9b

    :catch_97
    move-exception v0

    move-object p2, v0

    move-object v3, p2

    goto :goto_e4

    .line 40
    :cond_9b
    :goto_9b
    const-string p2, "inTM\n"

    const-string p4, "6RO6+t6vOmo=\n"

    invoke-static {p2, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﾇ()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 42
    iget-object p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ὺ:Lcom/ironsource/adqualitysdk/sdk/i/ﾚ;

    if-eqz p2, :cond_de

    .line 43
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﾚ;->ﻛ()Ljava/lang/String;

    move-result-object p4

    .line 44
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 45
    const-string v0, "Dx/f\n"

    const-string v1, "amurAH575Co=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_cd
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﾚ;->ﾇ()Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_de

    .line 49
    const-string p4, "cl0Hiw==\n"

    const-string v0, "Fylz+PaELvg=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_de
    if-eqz p3, :cond_f4

    .line 54
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﾒ(Lorg/json/JSONObject;)V
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_e3} :catch_97

    return-object p1

    .line 58
    :goto_e4
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﮐ:Ljava/lang/String;

    const-string p2, "iUZX21GzLFSpVVHdTfRvQ7pRS8Bu9jtH\n"

    const-string p3, "zDQltCOTTyY=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    :cond_f4
    return-object p1

    :catchall_f5
    move-exception v0

    move-object p1, v0

    .line 60
    :try_start_f7
    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f5

    throw p1
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/Ṭ;)V
    .registers 14

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱟ:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    :try_start_b
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ᗁ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/Ṭ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :goto_14
    move-object p1, v0

    goto :goto_19

    :catchall_16
    move-exception v0

    move-object v2, p0

    goto :goto_14

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw p1
.end method

.method public final declared-synchronized ﾒ(Lorg/json/JSONObject;)V
    .registers 9

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ˌ;

    move-result-object v0

    .line 62
    iget v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ˌ;->ﾒ:I

    .line 63
    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ˌ;->ﾇ:I

    .line 64
    iget-wide v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ˌ;->ｋ:J

    .line 65
    iget-wide v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ˌ;->ﻛ:J

    .line 66
    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(IIJJ)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_21

    .line 68
    :try_start_15
    const-string v1, "N9JixDfsNu8z\n"

    const-string v2, "W7MRsGODQ4w=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_20} :catch_24
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    goto :goto_37

    :catchall_21
    move-exception v0

    move-object p1, v0

    goto :goto_39

    :catch_24
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 70
    :try_start_27
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﮐ:Ljava/lang/String;

    const-string p1, "/Vwi4m0gEaj8Rz7qP2wRv+xBJe53IASjuEsm6HF0\n"

    const-string v1, "mC5QjR8AcMw=\n"

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_21

    :goto_37
    monitor-exit p0

    return-void

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_21

    throw p1
.end method
