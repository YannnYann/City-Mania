###### Class com.vungle.ads.internal.f0 (com.vungle.ads.internal.f0)
.class public final Lcom/vungle/ads/internal/f0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/h0;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/h0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/f0;->a:Lcom/vungle/ads/internal/h0;

    iput-object p2, p0, Lcom/vungle/ads/internal/f0;->b:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/f0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/vungle/ads/internal/f0;->a:Lcom/vungle/ads/internal/h0;

    iget-object v2, p0, Lcom/vungle/ads/internal/f0;->b:Lcom/vungle/ads/VungleError;

    invoke-interface {v0, v1, v2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    .line 2
    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
