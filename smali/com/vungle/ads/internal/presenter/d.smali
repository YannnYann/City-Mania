###### Class com.vungle.ads.internal.presenter.d (com.vungle.ads.internal.presenter.d)
.class public final Lcom/vungle/ads/internal/presenter/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/d;->a:Lcom/vungle/ads/internal/presenter/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/o0;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/d;->a:Lcom/vungle/ads/internal/presenter/r;

    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/presenter/r;)Lcom/vungle/ads/internal/ui/view/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "adWidget.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/d;->a:Lcom/vungle/ads/internal/presenter/r;

    invoke-static {v2}, Lcom/vungle/ads/internal/presenter/r;->b(Lcom/vungle/ads/internal/presenter/r;)Lcom/vungle/ads/internal/model/i0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/o0;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/i0;)V

    return-object v0
.end method
