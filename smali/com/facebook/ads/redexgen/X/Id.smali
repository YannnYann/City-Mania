###### Class com.facebook.ads.redexgen.X.RunnableC1664Id (com.facebook.ads.redexgen.X.Id)
.class public final Lcom/facebook/ads/redexgen/X/Id;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/In;->onUnminimized(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Bundle;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/In;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/In;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47465
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Id;->A01:Lcom/facebook/ads/redexgen/X/In;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 47466
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Id;
    :try_start_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Id;->A01:Lcom/facebook/ads/redexgen/X/In;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Id;->A00:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IX;->A05(Landroid/os/Bundle;)V

    .line 47467
    return-void
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_12

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Id;
    :catchall_12
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
