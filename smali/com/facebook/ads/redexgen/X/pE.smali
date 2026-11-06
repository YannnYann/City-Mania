###### Class com.facebook.ads.redexgen.X.C3026pE (com.facebook.ads.redexgen.X.pE)
.class public final Lcom/facebook/ads/redexgen/X/pE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pD;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/pE;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/pD;

.field public final A03:Lcom/facebook/ads/redexgen/X/qR;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 3341
    new-instance v2, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/GD;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/GC;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/GC;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/pE;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pE;-><init>(Lcom/facebook/ads/redexgen/X/qR;Lcom/facebook/ads/redexgen/X/pD;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pE;->A04:Lcom/facebook/ads/redexgen/X/pE;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qR;Lcom/facebook/ads/redexgen/X/pD;)V
    .registers 5

    .line 107425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107426
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pE;->A03:Lcom/facebook/ads/redexgen/X/qR;

    .line 107427
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pE;->A02:Lcom/facebook/ads/redexgen/X/pD;

    .line 107428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A01:Z

    .line 107429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:J

    .line 107430
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/pE;
    .registers 1

    .line 107431
    sget-object v0, Lcom/facebook/ads/redexgen/X/pE;->A04:Lcom/facebook/ads/redexgen/X/pE;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .registers 3

    monitor-enter p0

    .line 107432
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A01:Z

    .line 107433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A03:Lcom/facebook/ads/redexgen/X/qR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/qR;->A6M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:J
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 107434
    monitor-exit p0

    return-void

    .line 107435
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/pE;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .registers 3

    monitor-enter p0

    .line 107436
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 107437
    monitor-exit p0

    return-void

    .line 107438
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/pE;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .registers 8

    .line 107439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A02:Lcom/facebook/ads/redexgen/X/pD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pD;->A8y()Landroid/app/Activity;

    move-result-object v0

    .line 107440
    .local v0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_a

    .line 107441
    return v6

    .line 107442
    :cond_a
    const-class v5, Lcom/facebook/ads/redexgen/X/pE;

    monitor-enter v5

    .line 107443
    :try_start_d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A01:Z

    if-eqz v0, :cond_13

    .line 107444
    monitor-exit v5

    return v6

    .line 107445
    :cond_13
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A03:Lcom/facebook/ads/redexgen/X/qR;

    .line 107446
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/qR;->A6M()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_2c

    :cond_2a
    :goto_2a
    monitor-exit v5

    goto :goto_2e

    :cond_2c
    const/4 v6, 0x0

    goto :goto_2a

    .line 107447
    :goto_2e
    return v6

    .line 107448
    :catchall_2f
    move-exception v0

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw v0
.end method
