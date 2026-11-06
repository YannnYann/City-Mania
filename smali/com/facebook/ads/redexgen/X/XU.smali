###### Class com.facebook.ads.redexgen.X.XU (com.facebook.ads.redexgen.X.XU)
.class public final Lcom/facebook/ads/redexgen/X/XU;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummySurfaceThread"
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/M5;

.field public A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

.field public A03:Ljava/lang/Error;

.field public A04:Ljava/lang/RuntimeException;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XU;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 76382
    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76383
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 2

    .line 76384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M5;->A08()V

    .line 76386
    return-void
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XU;->A05:[B

    return-void

    :array_a
    .array-data 1
        0x6t
        0x37t
        0x2ft
        0x2ft
        0x3bt
        0x11t
        0x37t
        0x30t
        0x24t
        0x23t
        0x21t
        0x27t
        0x22t
        0x5t
        0xdt
        0x8t
        0x1t
        0x0t
        0x44t
        0x10t
        0xbt
        0x44t
        0xdt
        0xat
        0xdt
        0x10t
        0xdt
        0x5t
        0x8t
        0xdt
        0x1et
        0x1t
        0x44t
        0x0t
        0x11t
        0x9t
        0x9t
        0x1dt
        0x44t
        0x17t
        0x11t
        0x16t
        0x2t
        0x5t
        0x7t
        0x1t
        0x64t
        0x43t
        0x4bt
        0x4et
        0x47t
        0x46t
        0x2t
        0x56t
        0x4dt
        0x2t
        0x50t
        0x47t
        0x4et
        0x47t
        0x43t
        0x51t
        0x47t
        0x2t
        0x46t
        0x57t
        0x4ft
        0x4ft
        0x5bt
        0x2t
        0x51t
        0x57t
        0x50t
        0x44t
        0x43t
        0x41t
        0x47t
        0x25t
        0x34t
        0x2ct
        0x2ct
        0x38t
        0x12t
        0x34t
        0x33t
        0x27t
        0x20t
        0x22t
        0x24t
    .end array-data
.end method

.method private A03(I)V
    .registers 6

    .line 76387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M5;->A09(I)V

    .line 76389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    .line 76390
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M5;->A07()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :goto_13
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/XU;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    .line 76391
    return-void

    .line 76392
    :cond_1c
    const/4 v2, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final A04(I)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
    .registers 6

    .line 76393
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XU;->start()V

    .line 76394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XU;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Landroid/os/Handler;

    .line 76395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/M5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Lcom/facebook/ads/redexgen/X/M5;

    .line 76396
    const/4 v3, 0x0

    .line 76397
    .local v0, "wasInterrupted":Z
    monitor-enter p0

    .line 76398
    :try_start_19
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 76399
    :goto_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/Error;

    if-nez v0, :cond_36
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_57

    .line 76400
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_24
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_34} :catch_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_57

    .line 76401
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_34
    const/4 v3, 0x1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_24

    .line 76402
    :cond_36
    :try_start_36
    monitor-exit p0

    .line 76403
    if-eqz v3, :cond_40
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_57

    .line 76404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 76405
    :cond_40
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_54

    .line 76406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/Error;

    if-nez v0, :cond_51

    .line 76407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    return-object v0

    .line 76408
    :cond_51
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/Error;

    throw v0

    .line 76409
    :cond_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A04:Ljava/lang/RuntimeException;

    throw v0

    .line 76410
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public final A05()V
    .registers 3

    .line 76411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76413
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 76414
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_86

    .line 76415
    return v5

    .line 76416
    :pswitch_7
    :try_start_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XU;->A01()V

    goto :goto_22
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_b

    .line 76417
    :catchall_b
    move-exception v4

    .line 76418
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_c
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    const/16 v2, 0x1f

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    .line 76419
    :goto_22
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XU;->quit()Z

    .line 76420
    return v5

    .line 76421
    :catchall_26
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XU;->quit()Z

    .line 76422
    throw v0

    .line 76423
    :pswitch_2b
    :try_start_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XU;->A03(I)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_30} :catch_5a
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_30} :catch_39
    .catchall {:try_start_2b .. :try_end_30} :catchall_7b

    .line 76424
    monitor-enter p0

    .line 76425
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76426
    monitor-exit p0

    goto :goto_77

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_36

    throw v0

    .line 76427
    :catch_39
    move-exception v4

    .line 76428
    .local v0, "e":Ljava/lang/Error;
    :try_start_3a
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    const/16 v2, 0x22

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76429
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/Error;
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_7b

    .line 76430
    .end local v0    # "e":Ljava/lang/Error;
    monitor-enter p0

    .line 76431
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76432
    monitor-exit p0

    goto :goto_77

    :catchall_57
    move-exception v0

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw v0

    .line 76433
    :catch_5a
    move-exception v4

    .line 76434
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5b
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    const/16 v2, 0x22

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76435
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/XU;->A04:Ljava/lang/RuntimeException;
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_7b

    .line 76436
    .end local v0    # "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 76437
    :try_start_73
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76438
    monitor-exit p0

    .line 76439
    :goto_77
    return v5

    .line 76440
    :catchall_78
    move-exception v0

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_78

    throw v0

    .line 76441
    :catchall_7b
    move-exception v0

    monitor-enter p0

    .line 76442
    :try_start_7d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76443
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_82

    .line 76444
    throw v0

    .line 76445
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_7
    .end packed-switch
.end method
