###### Class com.facebook.ads.redexgen.X.C2758km (com.facebook.ads.redexgen.X.km)
.class public final Lcom/facebook/ads/redexgen/X/km;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final A00:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 100310
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100311
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/km;->A00:J

    .line 100312
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/km;->start()V

    .line 100313
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    .line 100314
    :goto_8
    :try_start_8
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/km;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 100315
    :catch_d
    :try_start_d
    invoke-static {}, Lcom/facebook/ads/redexgen/X/kk;->A01()V

    goto :goto_8
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
