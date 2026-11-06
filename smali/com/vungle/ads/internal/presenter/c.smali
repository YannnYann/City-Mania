###### Class com.vungle.ads.internal.presenter.c (com.vungle.ads.internal.presenter.c)
.class public abstract Lcom/vungle/ads/internal/presenter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# instance fields
.field public final a:Lcom/vungle/ads/internal/presenter/b;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/b;)V
    .registers 3

    const-string v0, "adPlayCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    return-void
.end method


# virtual methods
.method public final onAdClick(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdLeftApplication(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdRewarded(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdRewarded(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
