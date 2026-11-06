###### Class com.ironsource.adqualitysdk.sdk.i.C0148 (com.ironsource.adqualitysdk.sdk.i.ʹ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʹ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->K:Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_9
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_5c

    monitor-exit v0

    .line 5
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻏ:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-nez v3, :cond_38

    .line 6
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﺙ()J

    move-result-wide v1

    .line 9
    const-string v3, "PUHP+wVR8/gZe9vwFU3g+gdB2PsE\n"

    const-string v4, "aSiinnYlkpU=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wXp+UL1J9oykb2lLuwDxhaR7aU25DO3C8GFhWrwd/o/0\n"

    const-string v5, "hAgMP89pn+I=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_3e

    .line 11
    :cond_38
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    iput-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ:Ljava/lang/Boolean;

    .line 13
    :goto_3e
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﱡ()J

    move-result-wide v4

    .line 14
    iput-wide v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾇ:J

    .line 15
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﺙ()J

    move-result-wide v4

    .line 16
    iput-wide v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ｋ:J

    .line 17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    .line 18
    iget-wide v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾇ:J

    sub-long v3, v1, v3

    .line 19
    iput-wide v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻛ:J

    .line 20
    iget-wide v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ｋ:J

    sub-long/2addr v1, v3

    .line 21
    iput-wide v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﻐ:J

    return-void

    :catchall_5c
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method
