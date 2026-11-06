###### Class com.vungle.ads.internal.util.a (com.vungle.ads.internal.util.a)
.class public abstract Lcom/vungle/ads/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    .line 4
    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/util/b;)V
    .registers 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    .line 2
    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;Lcom/vungle/ads/internal/util/b;)V

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 5
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    .line 6
    invoke-static {v0}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/m;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    .line 8
    invoke-static {v0}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 9
    invoke-static {v0, p0, p1, p2, p3}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/m;)Z

    move-result p0

    return p0

    .line 13
    :cond_12
    new-instance v1, Lcom/vungle/ads/internal/util/c;

    .line 14
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-direct {v1, v2, p1, p2, p3}, Lcom/vungle/ads/internal/util/c;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/m;)V

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/d;Lcom/vungle/ads/internal/util/c;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/vungle/ads/internal/util/b;)V
    .registers 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    .line 2
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/util/d;->a(Lcom/vungle/ads/internal/util/b;)V

    return-void
.end method
