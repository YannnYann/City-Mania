###### Class com.facebook.ads.redexgen.X.S0 (com.facebook.ads.redexgen.X.S0)
.class public final Lcom/facebook/ads/redexgen/X/S0;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/U2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:J

.field public A01:Ljava/lang/Exception;

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/Ts;

.field public final A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

.field public final A05:Lcom/facebook/ads/redexgen/X/U3;

.field public final A06:Z

.field public volatile A07:Lcom/facebook/ads/redexgen/X/To;

.field public volatile A08:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/U3;Lcom/facebook/ads/redexgen/X/Ts;ZILcom/facebook/ads/redexgen/X/To;)V
    .registers 9

    .line 68656
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 68657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 68658
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S0;->A05:Lcom/facebook/ads/redexgen/X/U3;

    .line 68659
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S0;->A03:Lcom/facebook/ads/redexgen/X/Ts;

    .line 68660
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/S0;->A06:Z

    .line 68661
    iput p5, p0, Lcom/facebook/ads/redexgen/X/S0;->A02:I

    .line 68662
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/S0;->A07:Lcom/facebook/ads/redexgen/X/To;

    .line 68663
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:J

    .line 68664
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/U3;Lcom/facebook/ads/redexgen/X/Ts;ZILcom/facebook/ads/redexgen/X/To;Lcom/facebook/ads/redexgen/X/Tl;)V
    .registers 8

    .line 68665
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/U3;Lcom/facebook/ads/redexgen/X/Ts;ZILcom/facebook/ads/redexgen/X/To;)V

    return-void
.end method

.method public static A00(I)I
    .registers 2

    .line 68666
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 p0, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/S0;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    .registers 1

    .line 68667
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S0;->A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/S0;)Ljava/lang/Exception;
    .registers 1

    .line 68668
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S0;->A01:Ljava/lang/Exception;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/S0;)Z
    .registers 1

    .line 68669
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/S0;->A06:Z

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/S0;)Z
    .registers 1

    .line 68670
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/S0;->A08:Z

    return p0
.end method


# virtual methods
.method public final A05(Z)V
    .registers 3

    .line 68671
    if-eqz p1, :cond_5

    .line 68672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A07:Lcom/facebook/ads/redexgen/X/To;

    .line 68673
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A08:Z

    if-nez v0, :cond_14

    .line 68674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A08:Z

    .line 68675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A05:Lcom/facebook/ads/redexgen/X/U3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/U3;->cancel()V

    .line 68676
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S0;->interrupt()V

    .line 68677
    :cond_14
    return-void
.end method

.method public final AGd(JJF)V
    .registers 10

    .line 68678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A03:Lcom/facebook/ads/redexgen/X/Ts;

    iput-wide p3, v0, Lcom/facebook/ads/redexgen/X/Ts;->A01:J

    .line 68679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A03:Lcom/facebook/ads/redexgen/X/Ts;

    iput p5, v0, Lcom/facebook/ads/redexgen/X/Ts;->A00:F

    .line 68680
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:J

    cmp-long v0, p1, v1

    if-eqz v0, :cond_23

    .line 68681
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:J

    .line 68682
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S0;->A07:Lcom/facebook/ads/redexgen/X/To;

    .line 68683
    .local v0, "internalHandler":Landroid/os/Handler;
    if-eqz v3, :cond_23

    .line 68684
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v2, v0

    long-to-int v1, p1

    .line 68685
    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 68686
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68687
    .end local v0    # "internalHandler":Landroid/os/Handler;
    :cond_23
    return-void
.end method

.method public final run()V
    .registers 9

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    .line 68688
    .local v0, "this":Lcom/facebook/ads/redexgen/X/S0;
    :try_start_8
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A06:Z

    if-eqz v0, :cond_12

    .line 68689
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A05:Lcom/facebook/ads/redexgen/X/U3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/U3;->remove()V

    goto :goto_49

    .line 68690
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/S0;
    :cond_12
    const/4 v7, 0x0

    .line 68691
    .local v1, "errorCount":I
    const-wide/16 v5, -0x1

    .line 68692
    .local v2, "errorPosition":J
    :cond_15
    :goto_15
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A08:Z

    if-nez v0, :cond_49
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_19} :catch_42
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_3e
    .catchall {:try_start_8 .. :try_end_19} :catchall_57

    .line 68693
    :try_start_19
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A05:Lcom/facebook/ads/redexgen/X/U3;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/U3;->A6c(Lcom/facebook/ads/redexgen/X/U2;)V

    goto :goto_49
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1f} :catch_42
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_3e
    .catchall {:try_start_19 .. :try_end_1f} :catchall_57

    .line 68694
    :catch_1f
    move-exception v4

    .line 68695
    .local v4, "e":Ljava/io/IOException;
    :try_start_20
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A08:Z

    if-nez v0, :cond_15

    .line 68696
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A03:Lcom/facebook/ads/redexgen/X/Ts;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Ts;->A01:J

    .line 68697
    .local v5, "bytesDownloaded":J
    cmp-long v0, v1, v5

    if-eqz v0, :cond_2e

    .line 68698
    move-wide v5, v1

    .line 68699
    const/4 v7, 0x0

    .line 68700
    :cond_2e
    add-int/lit8 v7, v7, 0x1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A02:I

    if-gt v7, v0, :cond_3d

    .line 68701
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/S0;->A00(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_15

    .line 68702
    :cond_3d
    throw v4
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_3e} :catch_42
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_57

    .line 68703
    :catch_3e
    move-exception v0

    .line 68704
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3f
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/S0;->A01:Ljava/lang/Exception;

    goto :goto_49

    .line 68705
    .end local v1    # "e":Ljava/lang/Exception;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 68706
    :cond_49
    :goto_49
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/S0;->A07:Lcom/facebook/ads/redexgen/X/To;

    .line 68707
    .local v1, "internalHandler":Landroid/os/Handler;
    if-eqz v1, :cond_56

    .line 68708
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68709
    :cond_56
    return-void
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_57

    .end local v1    # "internalHandler":Landroid/os/Handler;
    .end local v2    # "errorPosition":J
    :catchall_57
    move-exception v0

    .end local v1
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
