###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0272 (com.ironsource.adqualitysdk.sdk.i.ՙ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ՙ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ｋ:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final ﾇ:Landroid/os/Handler;

.field public static final ﾒ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ:Landroid/os/Handler;

    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_5a

    .line 2
    :try_start_10
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "/vnfUz4gKnDL3w==\n"

    const-string v4, "qrudFGpIWBU=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_2a

    .line 3
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2b

    goto :goto_5b

    :catchall_2a
    move-object v2, v1

    :catchall_2b
    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 8
    :try_start_2e
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 10
    :cond_31
    const-string v2, "cRPzfqfGCS5JJOZA\n"

    const-string v4, "MHeiC8aqYFo=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "62nO9wJ81qvCKMTpAnmCuo1qxvgMf4Sw2GbDuw95mLvBbdW3R2qTq99xzvUANtjx\n"

    const-string v5, "rQinm2cY9t8=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_47

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 15
    :catchall_47
    const-string v0, "3wOvAlu8PB3nNLo8\n"

    const-string v2, "nmf+dzrQVWk=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FzlPej85M2E+eEVkPzxncHE6R3UxOmF6JDZCNjI8fXE9PVQ=\n"

    const-string v4, "UVgmFlpdExU=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5a
    move-object v3, v1

    .line 16
    :goto_5b
    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ:Landroid/os/Handler;

    if-nez v3, :cond_63

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    :cond_63
    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;->run()V

    return-void

    .line 4
    :cond_e
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method

.method public static ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 2
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    .line 4
    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;->run()V

    return-void
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 3

    .line 5
    :try_start_0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    .line 8
    :catchall_6
    const-string p0, "q7jR38WbYyqTj8Th\n"

    const-string v0, "6tyAqqT3Cl4=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "I1VBEMkwbWwKFFgT3yBtdwsURR3FOm1sDUZNHcg=\n"

    const-string v1, "ZTQofKxUTRg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    .line 4
    :catchall_6
    const-string p0, "r0RiIYO5txOXc3cf\n"

    const-string p1, "7iAzVOLV3mc=\n"

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wnzYTze64THrPcFMIarhIeFx0Fo3uuEq6j3cQjuw4THsb9RCNg==\n"

    const-string p2, "hB2xI1LewUU=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 4

    const/4 v0, 0x0

    .line 10
    :try_start_1
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ:Landroid/os/Handler;

    if-eqz v1, :cond_9

    .line 11
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 12
    :cond_9
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_11

    .line 13
    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_11
    const-string p0, "4GJ/itkuA/nYVWq0\n"

    const-string v1, "oQYu/7hCao0=\n"

    invoke-static {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "p/ATwDY+0iib8EbMM33RLof7X8clfdY9yflSzjs/2CyCv1baMj7MO4btE8MhPNAjiP1fxw==\n"

    const-string v2, "6Z8zoldduU8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    return-void

    .line 18
    :catchall_25
    const-string p0, "3S0dephpH3vlGghE\n"

    const-string v1, "nElMD/kFdg8=\n"

    invoke-static {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ZtszEz613xBPmioQKKXfC06aOB44upgWT880G3u5ngpE1j8N\n"

    const-string v2, "ILpaf1vR/2Q=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ:Landroid/os/Handler;

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3
    :cond_9
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_13

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 6
    :cond_13
    const-string p0, "N1xs8lOAuC4Pa3nM\n"

    const-string p1, "djg9hzLs0Vo=\n"

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "XZs83TADx4Bhm2nRNUDEhn2QcNojQMOVM5J90z0CzYR41HnHNAPZk3yGPN4nAcWLcpZw2g==\n"

    const-string p2, "E/Qcv1FgrOc=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    return-void

    .line 9
    :catchall_27
    const-string p0, "yhIXbpi67/byJQJQ\n"

    const-string p1, "i3ZGG/nWhoI=\n"

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cWwEXc96+WRYLR1e2Wr5dFJhDEjPevl/WS0PUMl1vmJYeANVina4flNhCEM=\n"

    const-string p2, "Nw1tMaoe2RA=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
