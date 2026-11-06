###### Class com.ironsource.adqualitysdk.sdk.i.C0665 (com.ironsource.adqualitysdk.sdk.i.ᴽ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;


# instance fields
.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ḹ;

.field public final ﾇ:Ljava/util/ArrayList;

.field public final ﾒ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "pUHLLZvx7+OBXMAnkfTw74BezCqR\n"

    const-string v1, "8iilSfSGo4o=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾇ:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ḹ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ḹ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ḹ;

    return-void
.end method

.method public static declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 4
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/z0;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾇ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾇ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 4
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ḹ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ț;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ț;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;Lcom/ironsource/adqualitysdk/sdk/i/א;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 6
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/z0;)V
    .registers 5

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾇ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    .line 8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ḹ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;Lcom/ironsource/adqualitysdk/sdk/i/א;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 10
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ḟ;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ḟ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;Lcom/ironsource/adqualitysdk/sdk/i/z0;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    :catchall_21
    move-exception p1

    .line 11
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method
