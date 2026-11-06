###### Class com.ironsource.adqualitysdk.sdk.i.C0303 (com.ironsource.adqualitysdk.sdk.i.װ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/װ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ:Ljava/lang/String;

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_93

    .line 9
    :try_start_9
    const-string v0, "YLiq0JDqMA==\n"

    const-string v1, "ENTft/ePVG0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_27

    .line 10
    const-string v0, "Ezq9v+/MwA==\n"

    const-string v2, "Y1bI2IippEg=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_28

    :catchall_25
    move-exception p2

    goto :goto_73

    :cond_27
    move v0, v1

    .line 12
    :goto_28
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->リ:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string v0, "DRiRAU8=\n"

    const-string v2, "YX3nZCOT/EI=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 15
    const-string v0, "oeJ7xJs=\n"

    const-string v2, "zYcNoffY9fQ=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_49

    :cond_48
    move v0, v1

    .line 17
    :goto_49
    const-string v2, "jYozmG8=\n"

    const-string v3, "/ulS9Aq9rsU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 18
    const-string v2, "GR9TNP0=\n"

    const-string v3, "anwyWJhj2vk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 20
    :cond_63
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ト:Ljava/lang/String;

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_72
    .catchall {:try_start_9 .. :try_end_72} :catchall_25

    goto :goto_93

    .line 23
    :goto_73
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAEfJV8+aQU1GgMtDXxpFSUWHzMNcm0XNB8eallxKAsiHANwDQ==\n"

    const-string v3, "UXNtSi0eCGE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_93
    :goto_93
    const-class p2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;

    monitor-enter p2

    .line 26
    :try_start_96
    sput-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->へ:Lorg/json/JSONObject;
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_9a

    monitor-exit p2

    return-void

    :catchall_9a
    move-exception p1

    .line 27
    monitor-exit p2

    throw p1
.end method
