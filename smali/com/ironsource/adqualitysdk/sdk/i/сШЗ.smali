###### Class com.ironsource.adqualitysdk.sdk.i.C0617 (com.ironsource.adqualitysdk.sdk.i.ᘇ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;

.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public volatile ﾇ:Z

.field public volatile ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᙇ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "EqctHlXJIDgimjwJRNIqKQ==\n"

    const-string v1, "W8lZezK7SUw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ｋ:Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᙇ;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘇ;->ﾇ:Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
