###### Class com.facebook.ads.redexgen.X.RunnableC3319ty (com.facebook.ads.redexgen.X.ty)
.class public final Lcom/facebook/ads/redexgen/X/ty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/tz;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/r9;Lcom/facebook/ads/redexgen/X/nO;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/tz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/tz;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ty;->A00:Lcom/facebook/ads/redexgen/X/tz;

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

    .line 113255
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ty;
    :try_start_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ty;->A00:Lcom/facebook/ads/redexgen/X/tz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/tz;->A01(Lcom/facebook/ads/redexgen/X/tz;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 113256
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/ty;->A00:Lcom/facebook/ads/redexgen/X/tz;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/tz;->A09(Lcom/facebook/ads/redexgen/X/tz;I)V

    .line 113257
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ty;
    :cond_1b
    return-void
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
