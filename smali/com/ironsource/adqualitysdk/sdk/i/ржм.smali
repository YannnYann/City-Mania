###### Class com.ironsource.adqualitysdk.sdk.i.C0390 (com.ironsource.adqualitysdk.sdk.i.ব)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ব;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ﾇ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ব;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ব;->ﾇ:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ব;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_7f

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ব;->ﾇ:Landroid/content/Context;

    .line 4
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    if-eqz v2, :cond_d

    goto :goto_7f

    .line 7
    :cond_d
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/Һ;

    invoke-direct {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Һ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;)V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ҷ;

    invoke-direct {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ҷ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;)V

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ҫ;

    invoke-direct {v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ҫ;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Һ;Lcom/ironsource/adqualitysdk/sdk/i/ҷ;Lcom/ironsource/adqualitysdk/sdk/i/ҫ;)V

    iput-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    .line 50
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    .line 51
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    .line 52
    move-object v2, v1

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 53
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->K:Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    .line 54
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﱡ()J

    move-result-wide v3

    .line 55
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->K:Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    .line 56
    monitor-enter v2

    .line 57
    :try_start_39
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_7c

    monitor-exit v2

    .line 58
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﱟ:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 59
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﮉ()Z

    move-result v5

    .line 60
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﺙ()I

    move-result v6

    .line 61
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result v1

    .line 62
    iget-boolean v7, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻐ:Z

    if-eqz v7, :cond_54

    goto :goto_7f

    :cond_54
    const/4 v7, 0x1

    .line 65
    iput-boolean v7, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻐ:Z

    .line 66
    iput-wide v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱡ:J

    .line 67
    iput v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱟ:I

    .line 68
    iput-boolean v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﮉ:Z

    .line 69
    iput v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭸ:I

    .line 70
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭴ:Z

    if-eqz v5, :cond_7f

    .line 71
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-eqz v1, :cond_6b

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    :cond_6b
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﻛ:Landroid/os/Handler;

    if-nez v1, :cond_70

    goto :goto_7f

    .line 76
    :cond_70
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ｩ;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;)V

    iget v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭸ:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_7c
    move-exception v0

    .line 77
    monitor-exit v2

    throw v0

    :cond_7f
    :goto_7f
    return-void
.end method
