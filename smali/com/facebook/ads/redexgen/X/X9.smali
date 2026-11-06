###### Class com.facebook.ads.redexgen.X.X9 (com.facebook.ads.redexgen.X.X9)
.class public final Lcom/facebook/ads/redexgen/X/X9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReleaseTask"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/X8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X8;)V
    .registers 2

    .line 76225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76226
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X9;->A00:Lcom/facebook/ads/redexgen/X/X8;

    .line 76227
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    .line 76228
    .local v0, "this":Lcom/facebook/ads/redexgen/X/X9;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/X9;->A00:Lcom/facebook/ads/redexgen/X/X8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/X8;->AFn()V

    .line 76229
    return-void
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_e

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/X9;
    :catchall_e
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
