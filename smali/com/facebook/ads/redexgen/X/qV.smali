###### Class com.facebook.ads.redexgen.X.ExecutorC3104qV (com.facebook.ads.redexgen.X.qV)
.class public final Lcom/facebook/ads/redexgen/X/qV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/qV;


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 3499
    new-instance v0, Lcom/facebook/ads/redexgen/X/qV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qV;->A01:Lcom/facebook/ads/redexgen/X/qV;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 109137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/qV;->A00:Landroid/os/Handler;

    .line 109139
    return-void
.end method

.method public static A00(Ljava/lang/Runnable;)V
    .registers 3

    .line 109140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_e

    .line 109141
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 109142
    :goto_d
    return-void

    .line 109143
    :cond_e
    sget-object v0, Lcom/facebook/ads/redexgen/X/qV;->A01:Lcom/facebook/ads/redexgen/X/qV;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/qV;->execute(Ljava/lang/Runnable;)V

    goto :goto_d
.end method


# virtual methods
.method public final A01()Landroid/os/Handler;
    .registers 2

    .line 109144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qV;->A00:Landroid/os/Handler;

    return-object v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 109145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qV;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109146
    return-void
.end method
