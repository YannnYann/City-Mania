###### Class com.ironsource.adqualitysdk.sdk.i.C0280 (com.ironsource.adqualitysdk.sdk.i.ב)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ב;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ϛ;Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ב;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ב;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ב;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_3
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ｋ:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e3

    monitor-exit v0

    if-nez v1, :cond_1c

    .line 4
    const-string v0, "36vYz1KLR1znnM3x\n"

    const-string v1, "ns+JujPnLig=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZP1EUTOXgBFTvFkTINqWGlO8B1YO5LIQdulLGi7DilR02GFWLsTTGkjoCh8p3ocdRvBDDCLT3Q==\n"

    const-string v2, "J5wqdke383Q=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ב;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 8
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﬤ:Lcom/ironsource/adqualitysdk/sdk/i/ᵄ;

    if-eqz v0, :cond_e2

    .line 9
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ב;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;

    .line 10
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵄ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 11
    const-string v2, "twmzQwY0zAOhArM=\n"

    const-string v3, "xGzHHHVRq24=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getCustomData()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 14
    :try_start_37
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 15
    const-string v4, "mWDREA==\n"

    const-string v5, "6ge/fald38k=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_50
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getAge()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_66

    .line 18
    const-string v4, "WHWdAg==\n"

    const-string v6, "KxT6ZwACiO0=\n"

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getAge()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    :cond_66
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 21
    const-string v4, "bLGiqA==\n"

    const-string v6, "H9bHxiO51XA=\n"

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_7f
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getLevel()I

    move-result v4

    if-eq v4, v5, :cond_94

    .line 24
    const-string v4, "n73lVw==\n"

    const-string v5, "7NGTO+nACrI=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getLevel()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    :cond_94
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    if-eqz v4, :cond_ad

    .line 27
    const-string v4, "rCNKTw==\n"

    const-string v5, "31MrNpOU1QQ=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    :cond_ad
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getInAppPurchasesTotal()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_c6

    .line 30
    const-string v4, "38Doe3A=\n"

    const-string v5, "rKmJCwRWHt4=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getInAppPurchasesTotal()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    :cond_c6
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getUserCreationDate()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_df

    .line 33
    const-string v4, "CqcV4w==\n"

    const-string v5, "edJ2h8uJiic=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;->getUserCreationDate()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_df} :catch_df

    .line 34
    :catch_df
    :cond_df
    invoke-virtual {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_e2
    return-void

    :catchall_e3
    move-exception v1

    .line 35
    monitor-exit v0

    throw v1
.end method
