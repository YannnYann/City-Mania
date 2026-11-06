###### Class com.facebook.ads.redexgen.X.C3N (com.facebook.ads.redexgen.X.3N)
.class public Lcom/facebook/ads/redexgen/X/3N;
.super Lcom/facebook/ads/redexgen/X/3P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3P;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/hs;)Lcom/facebook/ads/redexgen/X/hs;
    .registers 5

    .line 5803
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/hs;->A01(Lcom/facebook/ads/redexgen/X/hs;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 5804
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 5805
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_11

    .line 5806
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 5807
    :cond_11
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/hs;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/hs;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/hs;)Lcom/facebook/ads/redexgen/X/hs;
    .registers 5

    .line 5808
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/hs;->A01(Lcom/facebook/ads/redexgen/X/hs;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 5809
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 5810
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_11

    .line 5811
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 5812
    :cond_11
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/hs;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/hs;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Landroid/view/View;)V
    .registers 2

    .line 5813
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 5814
    return-void
.end method

.method public final A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/hL;)V
    .registers 4

    .line 5815
    if-nez p2, :cond_7

    .line 5816
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 5817
    return-void

    .line 5818
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/hZ;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/hZ;-><init>(Lcom/facebook/ads/redexgen/X/3N;Lcom/facebook/ads/redexgen/X/hL;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 5819
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C3P (com.facebook.ads.redexgen.X.3P)
.class public abstract Lcom/facebook/ads/redexgen/X/3P;
.super Lcom/facebook/ads/redexgen/X/3W;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi19Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5823
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3W;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0B(Landroid/view/View;I)V
    .registers 3

    .line 5824
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5825
    return-void
.end method

.method public final A0J(Landroid/view/View;)Z
    .registers 3

    .line 5826
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C3W (com.facebook.ads.redexgen.X.3W)
.class public abstract Lcom/facebook/ads/redexgen/X/3W;
.super Lcom/facebook/ads/redexgen/X/3w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi18Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5982
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3w;-><init>()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13113w (com.facebook.ads.redexgen.X.3w)
.class public abstract Lcom/facebook/ads/redexgen/X/3w;
.super Lcom/facebook/ads/redexgen/X/7X;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi17Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7X;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03(Landroid/view/View;)I
    .registers 3

    .line 7550
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/View;)Landroid/view/Display;
    .registers 3

    .line 7551
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C7X (com.facebook.ads.redexgen.X.7X)
.class public abstract Lcom/facebook/ads/redexgen/X/7X;
.super Lcom/facebook/ads/redexgen/X/JM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21669
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JM;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02(Landroid/view/View;)I
    .registers 3

    .line 21670
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final A04(Landroid/view/View;)I
    .registers 3

    .line 21671
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/view/View;)I
    .registers 3

    .line 21672
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final A09(Landroid/view/View;)V
    .registers 2

    .line 21673
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 21674
    return-void
.end method

.method public final A0C(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 21675
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21676
    return-void
.end method

.method public final A0F(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 21677
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 21678
    return-void
.end method

.method public final A0G(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    .line 21679
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 21680
    return-void
.end method

.method public final A0I(Landroid/view/View;)Z
    .registers 3

    .line 21681
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method
