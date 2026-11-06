###### Class com.facebook.ads.redexgen.X.C2722kB (com.facebook.ads.redexgen.X.kB)
.class public final Lcom/facebook/ads/redexgen/X/kB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 99706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .registers 8

    .line 99707
    if-nez p3, :cond_7

    .line 99708
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 99709
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GT;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/GT;

    move-result-object v1

    .line 99710
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/GT;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nl;->A00(I)Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GT;->A1h(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 99711
    new-instance v1, Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/7N;-><init>()V

    .line 99712
    .local v1, "bannerTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/7N;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 99713
    .local v2, "templateView":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nk;

    .line 99714
    invoke-virtual {v1, p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/7N;->A08(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/nk;Lcom/facebook/ads/NativeAdLayout;)V

    .line 99715
    sget v1, Lcom/facebook/ads/redexgen/X/px;->A02:F

    .line 99716
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v2, v1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99717
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99718
    return-object v3
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;)Landroid/view/View;
    .registers 5

    .line 99719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/kB;->render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .registers 7

    .line 99720
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jn;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/kB;->A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    .line 99721
    :catchall_9
    move-exception v1

    .line 99722
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jn;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    .line 99723
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/rX;->A00(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C7N (com.facebook.ads.redexgen.X.7N)
.class public final Lcom/facebook/ads/redexgen/X/7N;
.super Lcom/facebook/ads/redexgen/X/IB;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/gD;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18995
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IB;-><init>()V

    return-void
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/nk;Lcom/facebook/ads/NativeAdLayout;)V
    .registers 16

    .line 18996
    move-object v2, p0

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 18997
    .local p0, "adIconView":Lcom/facebook/ads/MediaView;
    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v9, v0, p2, p4}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 18998
    .local p1, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x14

    move-object v6, p3

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/nk;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 18999
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GT;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/GT;

    move-result-object v1

    .line 19000
    .local p3, "internalNativeAd":Lcom/facebook/ads/redexgen/X/GT;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/GT;->A1C()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v7

    .line 19001
    .local p4, "adType":Lcom/facebook/ads/redexgen/X/nl;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GT;->A1m(Z)V

    .line 19002
    new-instance v3, Lcom/facebook/ads/redexgen/X/Bm;

    .line 19003
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/GT;->A1F()Lcom/facebook/ads/redexgen/X/se;

    move-result-object v10

    move-object v5, p2

    move-object v0, v3

    .end local p1    # "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    .local p6, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Bm;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/nk;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/redexgen/X/se;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/gD;

    .line 19004
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/nk;->A00()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0O(Landroid/view/View;I)V

    .line 19005
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/gD;

    .line 19006
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gD;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 19007
    invoke-virtual {p2, p4, v8, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 19008
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19009
    .local v1, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19010
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/gD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gD;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19011
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 19012
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/jg;->onDetachedFromWindow()V

    .line 19013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/gD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gD;->unregisterView()V

    .line 19014
    return-void
.end method
