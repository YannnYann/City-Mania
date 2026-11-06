###### Class com.ironsource.adqualitysdk.sdk.i.C0697 (com.ironsource.adqualitysdk.sdk.i.ᵞ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;

.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Ljava/lang/Object;

.field public volatile ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "x3UzSgYdFhnEcmFNA0AXTcYgNR1TTkYZx3AzQVdIQUnBIzUdAU4XTsRyYU9TG0QVlHQzSQBJS07C\nIzUaAkAWTcElMxoGTkUUwSM5G1NARE7DJzgZU0FDTcd5NRkKSxEVxidkGgROFhnCIGZMBhsXSMFy\nZR1QQRFIkXI1GQAZSx/Odw==\n"

    const-string v1, "90EAeDJ4cyw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ｋ:Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾇ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 20
    :try_start_4
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    .line 21
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;

    .line 22
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ﾒ()V

    .line 23
    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final ﾒ(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    if-eqz v1, :cond_b

    .line 3
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_36

    .line 5
    :cond_b
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ｋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵧ;

    .line 7
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵧ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    invoke-direct {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᵧ;)V

    .line 12
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ｋ:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭨ;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ﭨ;

    move-result-object v1

    .line 13
    iget-object v2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/כּ;

    .line 14
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/כּ;->ﾒ:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ˈ;->ﾒ(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵞ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ˈ;

    .line 18
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_9

    throw p1
.end method
