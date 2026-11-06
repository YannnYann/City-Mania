###### Class com.ironsource.adqualitysdk.sdk.i.C0967 (com.ironsource.adqualitysdk.sdk.i.ﻩ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﭖ:Ljava/lang/String;


# instance fields
.field public ﭴ:Z

.field public ﭸ:I

.field public ﮉ:Z

.field public ﮌ:I

.field public ﮐ:J

.field public volatile ﱟ:I

.field public volatile ﱡ:J

.field public ﺙ:Z

.field public ﻏ:Z

.field public ﻐ:Z

.field public ﻛ:Landroid/os/Handler;

.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ҫ;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ҷ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Һ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "+iGpg+fNhXrfKrSS8NCJadgqsg==\n"

    const-string v1, "s0/A96Si6Ao=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭖ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Һ;Lcom/ironsource/adqualitysdk/sdk/i/ҷ;Lcom/ironsource/adqualitysdk/sdk/i/ҫ;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Һ;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ҷ;

    .line 4
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ҫ;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final ﾒ(Z)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻏ:Z

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_d
    iget-boolean v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﻐ:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_4d

    monitor-exit v1

    if-eqz v0, :cond_13

    goto :goto_51

    :cond_13
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻏ:Z

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Һ;

    .line 7
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Һ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :try_start_2a
    const-string v1, "H3Q5Ew==\n"

    const-string v2, "aQdXYEEig7E=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_39

    .line 12
    :catch_39
    iget-wide v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮐ:J

    .line 13
    iget v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮌ:I

    .line 14
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;Lorg/json/JSONObject;ZJI)V

    .line 15
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ү;

    invoke-direct {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ү;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ｃ;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    :catchall_4d
    move-exception v0

    move-object p1, v0

    .line 16
    monitor-exit v1

    throw p1

    :cond_51
    :goto_51
    return-void
.end method
