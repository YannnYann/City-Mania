###### Class com.vungle.ads.internal.ui.view.l (com.vungle.ads.internal.ui.view.l)
.class public final Lcom/vungle/ads/internal/ui/view/l;
.super Lcom/vungle/ads/internal/util/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/view/m;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/m;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/l;->a:Lcom/vungle/ads/internal/ui/view/m;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/l;->a:Lcom/vungle/ads/internal/ui/view/m;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/m;->a(Lcom/vungle/ads/internal/ui/view/m;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "NativeAd-VideoContentView"

    const-string v0, "onActivityPaused and pause video"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/l;->a:Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/m;->getVideoView()Lcom/vungle/ads/internal/ui/view/d;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/d;->h()V

    :cond_2f
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/l;->a:Lcom/vungle/ads/internal/ui/view/m;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/m;->a(Lcom/vungle/ads/internal/ui/view/m;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "NativeAd-VideoContentView"

    const-string v0, "onActivityResumed and try to play video"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/l;->a:Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/m;->getVideoView()Lcom/vungle/ads/internal/ui/view/d;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/d;->j()V

    :cond_2f
    return-void
.end method
