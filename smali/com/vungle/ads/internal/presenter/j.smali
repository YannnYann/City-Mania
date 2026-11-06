###### Class com.vungle.ads.internal.presenter.j (com.vungle.ads.internal.presenter.j)
.class public final Lcom/vungle/ads/internal/presenter/j;
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
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/j;->a:Lcom/vungle/ads/internal/presenter/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/j;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method
