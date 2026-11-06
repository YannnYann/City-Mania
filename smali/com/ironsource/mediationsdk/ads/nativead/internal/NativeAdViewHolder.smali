###### Class com.ironsource.mediationsdk.ads.nativead.internal.NativeAdViewHolder (com.ironsource.mediationsdk.ads.nativead.internal.NativeAdViewHolder)
.class public final Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertiserView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->b:Landroid/view/View;

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->d:Landroid/view/View;

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->f:Landroid/view/View;

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaView()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->e:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

    return-object v0
.end method

.method public final getTitleView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->b:Landroid/view/View;

    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->d:Landroid/view/View;

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->f:Landroid/view/View;

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->c:Landroid/view/View;

    return-void
.end method

.method public final setMediaView(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->e:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

    return-void
.end method

.method public final setTitleView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->a:Landroid/view/View;

    return-void
.end method
