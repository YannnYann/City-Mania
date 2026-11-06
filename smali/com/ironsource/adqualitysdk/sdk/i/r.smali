###### Class com.ironsource.adqualitysdk.sdk.i.r (com.ironsource.adqualitysdk.sdk.i.r)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﮐ:Ljava/lang/String;

.field public ﱟ:Z

.field public final ﱡ:Ljava/util/concurrent/ConcurrentHashMap;

.field public ﺙ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

.field public ﻏ:Z

.field public ﻐ:Ljava/lang/String;

.field public ﻛ:Z

.field public ｋ:Ljava/lang/String;

.field public ﾇ:Ljava/lang/String;

.field public ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ:Ljava/lang/String;

    .line 5
    const-string v1, "XGAY2KbLQw==\n"

    const-string v2, "Ei9Mh/WOFzc=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ:Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻛ:Z

    .line 7
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻏ:Z

    .line 10
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﱡ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﱟ:Z

    .line 13
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﮐ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ﾒ()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
