###### Class com.ironsource.adqualitysdk.sdk.i.C1026 (com.ironsource.adqualitysdk.sdk.i.ﾕ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﾕ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;
.source "SourceFile"


# instance fields
.field public ﻛ:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾕ;->ﻛ:Landroid/content/Context;

    const-string v1, "b3OkW4B8nyI=\n"

    const-string v2, "DhDQMvYV61s=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return v1

    .line 6
    :cond_18
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾕ;->ﻛ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 8
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_22

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_3e
    return v1
.end method

.method public final ﾒ()Landroid/app/Activity;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized ﾒ(Landroid/app/Application;Landroid/app/Activity;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾕ;->ﻛ:Landroid/content/Context;

    goto :goto_17

    :catchall_a
    move-exception p1

    goto :goto_15

    :cond_c
    if-eqz p2, :cond_17

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾕ;->ﻛ:Landroid/content/Context;

    goto :goto_17

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_a

    throw p1

    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method
