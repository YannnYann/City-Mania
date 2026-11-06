###### Class com.facebook.ads.redexgen.X.RunnableC2827lv (com.facebook.ads.redexgen.X.lv)
.class public final Lcom/facebook/ads/redexgen/X/lv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/lu;->A02()Lcom/facebook/ads/redexgen/X/7O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7O;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/lu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7O;Lcom/facebook/ads/redexgen/X/lu;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:Lcom/facebook/ads/redexgen/X/7O;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lv;->A01:Lcom/facebook/ads/redexgen/X/lu;

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

    .line 102420
    .local v0, "this":Lcom/facebook/ads/redexgen/X/lv;
    :try_start_8
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/lv;->A00:Lcom/facebook/ads/redexgen/X/7O;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/lv;->A01:Lcom/facebook/ads/redexgen/X/lu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lu;->A00(Lcom/facebook/ads/redexgen/X/lu;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7O;->A1Z(I)V

    return-void
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_14

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/lv;
    :catchall_14
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
