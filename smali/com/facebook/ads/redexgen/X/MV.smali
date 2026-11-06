###### Class com.facebook.ads.redexgen.X.MV (com.facebook.ads.redexgen.X.MV)
.class public abstract Lcom/facebook/ads/redexgen/X/MV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MU;,
        Lcom/facebook/ads/androidx/media3/common/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:Lcom/facebook/ads/redexgen/X/MU;

.field public static A02:Z

.field public static A03:[B

.field public static final A04:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1000
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MV;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    .line 1001
    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/MV;->A00:I

    .line 1002
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/MV;->A02:Z

    .line 1003
    sget-object v0, Lcom/facebook/ads/redexgen/X/MU;->A00:Lcom/facebook/ads/redexgen/X/MU;

    sput-object v0, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/MU;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/MV;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54348
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MV;->A02(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 54349
    .local v0, "throwableString":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 54350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54351
    :cond_39
    return-object p0
.end method

.method public static A02(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54352
    sget-object v5, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    monitor-enter v5

    .line 54353
    if-nez p0, :cond_8

    .line 54354
    :try_start_5
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    .line 54355
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/MV;->A0B(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 54356
    const/16 v2, 0x9

    const/16 v1, 0x21

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A00(III)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 54357
    :cond_1a
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/MV;->A02:Z

    if-nez v0, :cond_24

    .line 54358
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 54359
    :cond_24
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/16 v0, 0x72

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/MV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 54360
    :catchall_42
    move-exception v0

    monitor-exit v5
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/MV;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x5dt
        -0x67t
        -0x74t
        -0x5et
        -0x5et
        -0x2ct
        -0x2ct
        -0x2ct
        -0x2ct
        -0x52t
        -0x39t
        -0x3ct
        -0x39t
        -0x38t
        -0x30t
        -0x39t
        -0x5ft
        -0x38t
        -0x34t
        -0x33t
        -0x62t
        -0x2ft
        -0x44t
        -0x42t
        -0x37t
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        0x79t
        -0x7ft
        -0x39t
        -0x38t
        0x79t
        -0x39t
        -0x42t
        -0x33t
        -0x30t
        -0x38t
        -0x35t
        -0x3ct
        -0x7et
    .end array-data
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54361
    sget-object p1, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    monitor-enter p1

    .line 54362
    :try_start_3
    sget p0, Lcom/facebook/ads/redexgen/X/MV;->A00:I

    .line 54363
    monitor-exit p1

    .line 54364
    return-void

    .line 54365
    :catchall_7
    move-exception p0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54366
    sget-object v2, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    monitor-enter v2

    .line 54367
    :try_start_3
    sget v1, Lcom/facebook/ads/redexgen/X/MV;->A00:I

    const/4 v0, 0x3

    if-gt v1, v0, :cond_d

    .line 54368
    sget-object v0, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MU;->A6q(Ljava/lang/String;Ljava/lang/String;)V

    .line 54369
    :cond_d
    monitor-exit v2

    .line 54370
    return-void

    .line 54371
    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54372
    sget-object v2, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    monitor-enter v2

    .line 54373
    :try_start_3
    sget v1, Lcom/facebook/ads/redexgen/X/MV;->A00:I

    const/4 v0, 0x1

    if-gt v1, v0, :cond_d

    .line 54374
    sget-object v0, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MU;->AAX(Ljava/lang/String;Ljava/lang/String;)V

    .line 54375
    :cond_d
    monitor-exit v2

    .line 54376
    return-void

    .line 54377
    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54378
    sget-object v2, Lcom/facebook/ads/redexgen/X/MV;->A04:Ljava/lang/Object;

    monitor-enter v2

    .line 54379
    :try_start_3
    sget v1, Lcom/facebook/ads/redexgen/X/MV;->A00:I

    const/4 v0, 0x2

    if-gt v1, v0, :cond_d

    .line 54380
    sget-object v0, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MU;->AM6(Ljava/lang/String;Ljava/lang/String;)V

    .line 54381
    :cond_d
    monitor-exit v2

    .line 54382
    return-void

    .line 54383
    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54384
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/MV;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/MV;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 54385
    return-void
.end method

.method public static A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54386
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/MV;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/MV;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 54387
    return-void
.end method

.method public static A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54388
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/MV;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 54389
    return-void
.end method

.method public static A0B(Ljava/lang/Throwable;)Z
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 54390
    :goto_0
    if-eqz p0, :cond_d

    .line 54391
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_8

    .line 54392
    const/4 v0, 0x1

    return v0

    .line 54393
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 54394
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
