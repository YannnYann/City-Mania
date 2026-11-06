###### Class com.vungle.ads.internal.presenter.t (com.vungle.ads.internal.presenter.t)
.class public final Lcom/vungle/ads/internal/presenter/t;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/w;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/w;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/t;->a:Lcom/vungle/ads/internal/presenter/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/t;->a:Lcom/vungle/ads/internal/presenter/w;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/w;->c:Lcom/vungle/ads/internal/model/i0;

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method
