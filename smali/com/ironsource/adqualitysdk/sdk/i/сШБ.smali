###### Class com.ironsource.adqualitysdk.sdk.i.C0612 (com.ironsource.adqualitysdk.sdk.i.ᘁ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﾇ:Ljava/util/concurrent/ConcurrentHashMap;

.field public final ﾒ:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;->ﾇ:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/32 v0, 0xea60

    .line 5
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘁ;->ﾒ:J

    return-void
.end method
