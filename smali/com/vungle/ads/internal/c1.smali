###### Class com.vungle.ads.internal.c1 (com.vungle.ads.internal.c1)
.class public final Lcom/vungle/ads/internal/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final e:Lcom/vungle/ads/internal/b1;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/vungle/ads/internal/c1;-><init>(Ljava/util/WeakHashMap;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/WeakHashMap;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "trackedViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/c1;->c:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Lcom/vungle/ads/internal/c1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/c1$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/c1;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 48
    new-instance p1, Lcom/vungle/ads/internal/b1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/b1;-><init>(Lcom/vungle/ads/internal/c1;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/c1;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/c1;Landroid/view/View;)V
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 56
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/a1;

    if-nez v0, :cond_13

    goto :goto_59

    .line 57
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/vungle/ads/internal/a1;->d()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-ne v2, v1, :cond_1e

    goto :goto_59

    .line 59
    :cond_1e
    iget-object v2, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/a1;

    if-nez p1, :cond_29

    goto :goto_3c

    .line 60
    :cond_29
    iget-object v2, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_2e

    goto :goto_3c

    :cond_2e
    const/4 v3, 0x0

    .line 61
    iput-object v3, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    .line 62
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 63
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 64
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-nez p1, :cond_51

    .line 65
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "TAG"

    const-string v0, "c1"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ViewTreeObserver of the tracked view\'s window is not alive, falling back to polling"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 68
    :cond_51
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/a1;->a(Landroid/view/ViewTreeObserver;)V

    .line 70
    :goto_59
    iget-boolean p1, p0, Lcom/vungle/ads/internal/c1;->f:Z

    if-eqz p1, :cond_5e

    goto :goto_6a

    :cond_5e
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/vungle/ads/internal/c1;->f:Z

    .line 74
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/c1;Landroid/view/View;I)Z
    .registers 8

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_78

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_78

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_78

    .line 8
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 9
    :goto_17
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_42

    .line 10
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3d

    .line 11
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Parent visibility is not visible: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImpressionTracker"

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14
    :cond_3d
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_17

    .line 17
    :cond_42
    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_78

    .line 20
    :cond_4b
    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v1, v1

    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-long v3, p0

    mul-long/2addr v1, v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v3, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-gtz p0, :cond_6c

    goto :goto_78

    :cond_6c
    const/16 p0, 0x64

    int-to-long p0, p0

    mul-long/2addr p0, v1

    int-to-long v1, p2

    mul-long/2addr v1, v3

    cmp-long p0, p0, v1

    if-ltz p0, :cond_78

    const/4 p0, 0x1

    return p0

    :cond_78
    :goto_78
    return v0
.end method

.method public static final b(Lcom/vungle/ads/internal/c1;)V
    .registers 4

    .line 6
    iget-boolean v0, p0, Lcom/vungle/ads/internal/c1;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/vungle/ads/internal/c1;->f:Z

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/c1;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/a1;

    if-nez p1, :cond_b

    goto :goto_1e

    .line 2
    :cond_b
    iget-object v0, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_10

    goto :goto_1e

    :cond_10
    const/4 v1, 0x0

    .line 3
    iput-object v1, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 5
    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static final synthetic c(Lcom/vungle/ads/internal/c1;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/vungle/ads/internal/c1;->f:Z

    return-void
.end method

.method public static final d(Lcom/vungle/ads/internal/c1;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/c1;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    goto :goto_16

    .line 4
    :cond_b
    iput-boolean v1, p0, Lcom/vungle/ads/internal/c1;->f:Z

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_16
    return v1
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 83
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/c1;->a(Landroid/view/View;)V

    goto :goto_e

    .line 85
    :cond_1e
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/vungle/ads/internal/c1;->f:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/a1;

    if-nez v0, :cond_10

    goto :goto_23

    .line 76
    :cond_10
    iget-object v1, v0, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_15

    goto :goto_23

    :cond_15
    const/4 v2, 0x0

    .line 77
    iput-object v2, v0, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 79
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/a1;

    if-eqz v0, :cond_34

    .line 81
    invoke-virtual {v0}, Lcom/vungle/ads/internal/a1;->a()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_34
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/vungle/ads/internal/z0;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/a1;

    if-nez v0, :cond_8d

    .line 29
    new-instance v0, Lcom/vungle/ads/internal/a1;

    new-instance v1, Lcom/vungle/ads/internal/y0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/y0;-><init>(Lcom/vungle/ads/internal/c1;)V

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/a1;-><init>(Lcom/vungle/ads/internal/y0;)V

    .line 30
    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v0}, Lcom/vungle/ads/internal/a1;->a()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 33
    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/a1;

    if-nez v1, :cond_36

    goto :goto_7c

    .line 34
    :cond_36
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/vungle/ads/internal/a1;->d()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-ne v3, v2, :cond_41

    goto :goto_7c

    .line 36
    :cond_41
    iget-object v3, p0, Lcom/vungle/ads/internal/c1;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/a1;

    if-nez p1, :cond_4c

    goto :goto_5f

    .line 37
    :cond_4c
    iget-object v3, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_51

    goto :goto_5f

    :cond_51
    const/4 v4, 0x0

    .line 38
    iput-object v4, p1, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    .line 39
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 40
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 41
    :cond_5f
    :goto_5f
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-nez p1, :cond_74

    .line 42
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "TAG"

    const-string v1, "c1"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ViewTreeObserver of the tracked view\'s window is not alive, falling back to polling"

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 45
    :cond_74
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/a1;->a(Landroid/view/ViewTreeObserver;)V

    .line 47
    :cond_7c
    :goto_7c
    iget-boolean p1, p0, Lcom/vungle/ads/internal/c1;->f:Z

    if-eqz p1, :cond_81

    goto :goto_8d

    :cond_81
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/vungle/ads/internal/c1;->f:Z

    .line 51
    iget-object p1, p0, Lcom/vungle/ads/internal/c1;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/c1;->e:Lcom/vungle/ads/internal/b1;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :cond_8d
    :goto_8d
    invoke-virtual {v0}, Lcom/vungle/ads/internal/a1;->e()V

    .line 53
    invoke-virtual {v0, p2}, Lcom/vungle/ads/internal/a1;->a(Lcom/vungle/ads/internal/z0;)V

    return-void
.end method

###### Class com.vungle.ads.internal.c1$$ExternalSyntheticLambda0 (com.vungle.ads.internal.c1$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/c1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/c1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/c1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/c1$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/c1;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/c1$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/c1;

    invoke-static {v0}, Lcom/vungle/ads/internal/c1;->d(Lcom/vungle/ads/internal/c1;)Z

    move-result v0

    return v0
.end method
