###### Class com.ironsource.C3703l5 (com.ironsource.l5)
.class public Lcom/ironsource/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/l5;->a:J

    return-void
.end method

.method public static a(Lcom/ironsource/l5;)J
    .registers 5

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/l5;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
