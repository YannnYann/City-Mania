###### Class com.vungle.ads.internal.b1 (com.vungle.ads.internal.b1)
.class public final Lcom/vungle/ads/internal/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/vungle/ads/internal/c1;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/c1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/b1;->a:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/b1;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v0}, Lcom/vungle/ads/internal/c1;->c(Lcom/vungle/ads/internal/c1;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v0}, Lcom/vungle/ads/internal/c1;->a(Lcom/vungle/ads/internal/c1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/a1;

    .line 3
    invoke-virtual {v1}, Lcom/vungle/ads/internal/a1;->c()I

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v3, v2, v1}, Lcom/vungle/ads/internal/c1;->a(Lcom/vungle/ads/internal/c1;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/b1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 7
    :cond_3d
    iget-object v1, p0, Lcom/vungle/ads/internal/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 10
    :cond_43
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 11
    iget-object v2, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v2}, Lcom/vungle/ads/internal/c1;->a(Lcom/vungle/ads/internal/c1;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/a1;

    if-eqz v2, :cond_6c

    .line 12
    invoke-virtual {v2}, Lcom/vungle/ads/internal/a1;->b()Lcom/vungle/ads/internal/z0;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/z0;->onImpression(Landroid/view/View;)V

    .line 15
    :cond_6c
    iget-object v2, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    const-string v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/vungle/ads/internal/c1;->a(Landroid/view/View;)V

    goto :goto_49

    .line 17
    :cond_77
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_82
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 20
    iget-object v2, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v2}, Lcom/vungle/ads/internal/c1;->a(Lcom/vungle/ads/internal/c1;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/a1;

    if-eqz v2, :cond_82

    .line 21
    invoke-virtual {v2}, Lcom/vungle/ads/internal/a1;->b()Lcom/vungle/ads/internal/z0;

    move-result-object v2

    if-eqz v2, :cond_82

    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/z0;->onViewInvisible(Landroid/view/View;)V

    goto :goto_82

    .line 23
    :cond_a6
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v0}, Lcom/vungle/ads/internal/c1;->a(Lcom/vungle/ads/internal/c1;)Ljava/util/Map;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    goto :goto_e9

    .line 77
    :cond_b8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/a1;

    .line 79
    invoke-virtual {v1}, Lcom/vungle/ads/internal/a1;->d()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-nez v1, :cond_c0

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 82
    iget-object v0, p0, Lcom/vungle/ads/internal/b1;->c:Lcom/vungle/ads/internal/c1;

    invoke-static {v0}, Lcom/vungle/ads/internal/c1;->b(Lcom/vungle/ads/internal/c1;)V

    :cond_e9
    :goto_e9
    return-void
.end method
