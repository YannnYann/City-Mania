###### Class com.facebook.ads.redexgen.X.RunnableC2078Zf (com.facebook.ads.redexgen.X.Zf)
.class public final Lcom/facebook/ads/redexgen/X/Zf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/AI;-><init>(Lcom/facebook/ads/redexgen/X/Zj;Lcom/facebook/ads/redexgen/X/Zb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AI;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79919
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A00:Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 79920
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Zf;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Zf;->A00:Lcom/facebook/ads/redexgen/X/AI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AI;->A03(Lcom/facebook/ads/redexgen/X/AI;)V

    const/4 v0, 0x0

    throw v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_f

    .line 79921
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Zf;
    :catchall_f
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
