###### Class com.vungle.ads.internal.d0 (com.vungle.ads.internal.d0)
.class public final Lcom/vungle/ads/internal/d0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/h0;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/h0;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/d0;->a:Lcom/vungle/ads/internal/h0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/d0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/internal/d0;->a:Lcom/vungle/ads/internal/h0;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    .line 2
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
