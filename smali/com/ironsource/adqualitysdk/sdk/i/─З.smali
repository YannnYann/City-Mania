###### Class com.ironsource.adqualitysdk.sdk.i.C0036 (com.ironsource.adqualitysdk.sdk.i.ć)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ć;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public ﻏ:Ljava/lang/ref/WeakReference;

.field public ﻐ:Ljava/lang/ref/WeakReference;

.field public final ﻛ:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_37

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1e

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;

    invoke-direct {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 5
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_39

    .line 7
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1c

    .line 8
    :try_start_1f
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ｋ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 9
    invoke-interface {v1, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_36} :catch_37

    goto :goto_27

    :catch_37
    move-exception p1

    goto :goto_3b

    .line 10
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_1c

    :try_start_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_37

    .line 15
    :goto_3b
    const-string p2, "DaTEq9mlKhEsrciw26UDNCO736zWrBQrL7rdoNus\n"

    const-string v0, "SsirybjJZng=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BFES3SNp5KphTA7zMj3ksihXGfEjLOywJEc=\n"

    const-string v1, "QSNgslFJjcQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_4f
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_1d

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    :try_start_8
    monitor-exit p0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 4
    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_d

    :catch_1d
    move-exception p1

    goto :goto_22

    :catchall_1f
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_1d

    .line 7
    :goto_22
    const-string v0, "ghuRpzUWzmSjEp28NxbnQawEiqA6H/BeoAWIrDcf\n"

    const-string v1, "xXf+xVR6gg0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aIIee+1cUAINnwJV/AhQGkSEFVD6D00eQokJcA==\n"

    const-string v2, "LfBsFJ98OWw=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_36
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_1d

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    :try_start_8
    monitor-exit p0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 4
    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_d

    :catch_1d
    move-exception p1

    goto :goto_22

    :catchall_1f
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_1d

    .line 7
    :goto_22
    const-string v0, "/oVW6bhUx3nfjFryulTuXNCaTe63XflD3JtP4rpd\n"

    const-string v1, "uek5i9k4ixA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bTUvm4sRgoEIKDO1mkWCmUEzJKSYRJiKTA==\n"

    const-string v2, "KEdd9Pkx6+8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_36
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 3
    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2c

    .line 4
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_2e

    :try_start_17
    monitor-exit p0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 6
    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_1c

    :catch_2c
    move-exception p1

    goto :goto_31

    :catchall_2e
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_31} :catch_2c

    .line 9
    :goto_31
    const-string v0, "qnYgAAlXBNqLfywbC1ct/4RpOwcGXjrgiGg5Cwte\n"

    const-string v1, "7RpPYmg7SLM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KxNzsSQtNlhODm+fNXk2QAcVeIwzfipbCwU=\n"

    const-string v2, "bmEB3lYNXzY=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_45
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_1d

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    :try_start_8
    monitor-exit p0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 4
    invoke-interface {v1, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_d

    :catch_1d
    move-exception p1

    goto :goto_22

    :catchall_1f
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_1d

    .line 7
    :goto_22
    const-string p2, "aMLZ8WxpoTZJy9XqbmmIE0bdwvZjYJ8MStzA+m5g\n"

    const-string v0, "L662kw0F7V8=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "eUBZH6P8tyccXUUxsqi3P1VGUiOwqrsAUkFfEb+/uxpIU18V\n"

    const-string v1, "PDIrcNHc3kk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_36
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_16

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_16

    :catch_14
    move-exception p1

    goto :goto_64

    .line 4
    :cond_16
    :goto_16
    monitor-enter p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_14

    .line 5
    :try_start_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_61

    .line 8
    :try_start_1f
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ｋ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 9
    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_27

    .line 13
    :cond_37
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1GJuKDypFTfOPmcoOasdOtJ/LVMnrgg652Fifyy1LDHYdXpHKrMVNd55eg==\n"

    const-string v2, "tw0DBknHfEM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 15
    monitor-enter p0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4a} :catch_14

    .line 17
    :try_start_4a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ:Z

    if-nez v0, :cond_5d

    .line 18
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﾇ(Landroid/app/Activity;)V

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_5f

    .line 20
    :cond_5d
    :goto_5d
    monitor-exit p0

    return-void

    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_5b

    :try_start_60
    throw p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_14

    :catchall_61
    move-exception p1

    .line 21
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_14

    .line 38
    :goto_64
    const-string v0, "XP4rY66+h5d99yd4rL6usnLhMGSht7mtfuAyaKy3\n"

    const-string v1, "G5JEAc/Sy/4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HV//gTbgCUl4QuOvJ7QJUTFZ9L0woRJTPUk=\n"

    const-string v2, "WC2N7kTAYCc=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_78
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ｋ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 2
    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_8

    :catch_18
    move-exception p1

    goto :goto_5a

    .line 5
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ:Z

    .line 7
    monitor-enter p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_18

    .line 9
    :try_start_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4a

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "D0KdTPNCc5sVHpRM9kB7lglf3jfoRW6WPEGRG+NeSp0DVYkj5VhzmQVZiQ==\n"

    const-string v3, "bC3wYoYsGu8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    goto :goto_4b

    :catchall_48
    move-exception p1

    goto :goto_58

    :cond_4a
    move v0, v1

    .line 14
    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_21 .. :try_end_4c} :catchall_48

    if-le v0, v1, :cond_6e

    if-nez v0, :cond_6e

    .line 17
    :try_start_50
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ:Z

    if-nez v0, :cond_6e

    .line 18
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﾒ(Landroid/app/Activity;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_18

    return-void

    .line 19
    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_48

    :try_start_59
    throw p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_18

    .line 27
    :goto_5a
    const-string v0, "k+sxGq4bfray4j0BrBtXk730Kh2hEkCMsfUoEawS\n"

    const-string v1, "1IdeeM93Mt8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2Om2wBTRb1O99KruBYVvS/TvvfwSnnZN+P8=\n"

    const-string v2, "nZvEr2bxBj0=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_6e
    return-void
.end method

.method public final declared-synchronized ﻛ()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final ﾇ(Landroid/app/Activity;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    monitor-exit p0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 4
    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;->ﾇ(Landroid/app/Activity;)V

    goto :goto_d

    :cond_1d
    return-void

    :catchall_1e
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final ﾒ()Landroid/app/Activity;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 4

    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    monitor-exit p0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;

    .line 15
    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꭲ;->ﾒ(Landroid/app/Activity;)V

    goto :goto_d

    :cond_1d
    return-void

    :catchall_1e
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﾒ(Landroid/app/Application;Landroid/app/Activity;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻏ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2f

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻏ:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2c

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻐ:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;

    invoke-direct {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ĩ;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 5
    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2a

    .line 6
    :try_start_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ć;->ﻛ:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit p0

    goto :goto_2c

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    :try_start_29
    throw p1

    :catchall_2a
    move-exception p1

    goto :goto_31

    .line 9
    :cond_2c
    :goto_2c
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2a

    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2a

    throw p1
.end method
