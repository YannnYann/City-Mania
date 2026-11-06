###### Class com.vungle.ads.internal.o1 (com.vungle.ads.internal.o1)
.class public final Lcom/vungle/ads/internal/o1;
.super Lcom/vungle/ads/internal/r;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/x;


# instance fields
.field public final A:Lkotlin/Lazy;

.field public B:Lcom/vungle/ads/internal/ui/y;

.field public final C:Landroid/view/View$OnTouchListener;

.field public final q:Lkotlin/Lazy;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Lkotlin/Lazy;

.field public t:Lcom/vungle/ads/internal/presenter/w;

.field public u:Ljava/util/LinkedHashMap;

.field public v:Landroid/graphics/Bitmap;

.field public w:Landroid/graphics/Bitmap;

.field public final x:Lkotlin/Lazy;

.field public final y:Lkotlin/Lazy;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/r;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/i1;->a:Lcom/vungle/ads/internal/i1;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/o1;->q:Lkotlin/Lazy;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/o1;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/l1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/l1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/vungle/ads/internal/o1;->s:Lkotlin/Lazy;

    .line 6
    new-instance v1, Lcom/vungle/ads/internal/m1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/m1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->x:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/vungle/ads/internal/h1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/h1;-><init>(Lcom/vungle/ads/internal/o1;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->y:Lkotlin/Lazy;

    .line 9
    sget-object p1, Lcom/vungle/ads/internal/n1;->a:Lcom/vungle/ads/internal/n1;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->A:Lkotlin/Lazy;

    .line 10
    new-instance p1, Lcom/vungle/ads/internal/o1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/o1$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/o1;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->C:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/o1;)Lcom/vungle/ads/internal/executor/a;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/vungle/ads/internal/o1;->x:Lkotlin/Lazy;

    .line 211
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/o1;I)V
    .registers 3

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V
    .registers 4

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz p0, :cond_12

    const-string v0, "tpat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/vungle/ads/internal/presenter/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/o1;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/presenter/w;->a(Landroid/view/MotionEvent;)V

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(ILjava/util/Map;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/internal/presenter/w;->a(ILjava/util/Map;)V

    :cond_7
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->c()Lcom/vungle/ads/internal/model/i0;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 484
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_17
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/vungle/ads/NativeAd$adPlayCallback$1;)V
    .registers 7

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->c()Lcom/vungle/ads/internal/model/i0;

    move-result-object v0

    if-nez v0, :cond_24

    .line 436
    new-instance p1, Lcom/vungle/ads/AdNotLoadedCantPlay;

    const-string v0, "Ad is null"

    invoke-direct {p1, v0}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    if-eqz p2, :cond_75

    .line 437
    invoke-interface {p2, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    return-void

    .line 441
    :cond_24
    iget-object v1, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-nez v1, :cond_47

    .line 442
    new-instance v1, Lcom/vungle/ads/internal/presenter/w;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->d()Landroid/content/Context;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/vungle/ads/internal/o1;->s:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/platform/f;

    .line 444
    invoke-direct {v1, v2, p0, v0, v3}, Lcom/vungle/ads/internal/presenter/w;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/platform/f;)V

    iput-object v1, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    .line 445
    new-instance v0, Lcom/vungle/ads/internal/presenter/a;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->f()Lcom/vungle/ads/internal/model/j3;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/j3;)V

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/w;->a(Lcom/vungle/ads/internal/presenter/a;)V

    .line 450
    :cond_47
    iget-object p2, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz p2, :cond_5e

    .line 451
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_59

    const-string v1, "OM_SDK_DATA"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5b

    :cond_59
    const-string v0, ""

    .line 452
    :cond_5b
    invoke-virtual {p2, p1, v0}, Lcom/vungle/ads/internal/presenter/w;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 453
    :cond_5e
    iget-object p2, p0, Lcom/vungle/ads/internal/o1;->q:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/c1;

    .line 454
    new-instance v0, Lcom/vungle/ads/internal/j1;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/j1;-><init>(Lcom/vungle/ads/internal/o1;)V

    invoke-virtual {p2, p1, v0}, Lcom/vungle/ads/internal/c1;->a(Landroid/view/View;Lcom/vungle/ads/internal/z0;)V

    .line 482
    iget-object p1, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz p1, :cond_75

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/w;->c()V

    :cond_75
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 6

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_8

    goto :goto_41

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->B:Lcom/vungle/ads/internal/ui/y;

    if-nez v0, :cond_1c

    .line 427
    new-instance v0, Lcom/vungle/ads/internal/ui/y;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rootView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/vungle/ads/internal/ui/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/o1;->B:Lcom/vungle/ads/internal/ui/y;

    .line 429
    :cond_1c
    iget-object p2, p0, Lcom/vungle/ads/internal/o1;->B:Lcom/vungle/ads/internal/ui/y;

    if-eqz p2, :cond_41

    .line 430
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_35

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_3b

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 432
    :cond_3b
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 433
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    :cond_41
    :goto_41
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 2
    const-string v0, "event"

    const-string v1, "video.length"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v0, :cond_10

    const-string v2, "tpat"

    invoke-virtual {v0, v2, v1, p1}, Lcom/vungle/ads/internal/presenter/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final a(Lcom/vungle/ads/VungleAdSize;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/vungle/ads/internal/model/j3;)Z
    .registers 3

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->i()Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/vungle/ads/VungleAdSize;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/widget/ImageView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_e

    const-string v1, "APP_ICON"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_e
    const-string v0, ""

    .line 2
    :cond_10
    iget-object v1, p0, Lcom/vungle/ads/internal/o1;->y:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/q;

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/g1;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/g1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/ads/internal/util/q;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/g1;)V

    return-void
.end method

.method public final b(Lcom/vungle/ads/internal/model/i0;)V
    .registers 11

    const-string v0, "Failed to release metadata retriever"

    const-string v1, "NativeAdInternal"

    const-string v2, "advertisement"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->r()Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    .line 6
    const-string v2, "VUNGLE_PRIVACY_ICON_URL"

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, ""

    if-nez p1, :cond_1c

    move-object p1, v2

    .line 7
    :cond_1c
    const-string v3, "file://"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    move-object p1, v6

    goto :goto_50

    .line 10
    :cond_29
    :try_start_29
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    invoke-static {p1, v3}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/vungle/ads/internal/util/k;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_3c

    goto :goto_47

    :catchall_3c
    move-exception p1

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    :goto_47
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    move-object p1, v6

    :cond_4e
    check-cast p1, Landroid/graphics/Bitmap;

    :goto_50
    const-string v7, "bytes"

    if-nez p1, :cond_80

    .line 15
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAIRlWElmTU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAABSgAwAEAAAAAQAAABQAAAAAQeed/gAAAAlwSFlzAAALEwAACxMBAJqcGAAAABxpRE9UAAAAAgAAAAAAAAAKAAAAKAAAAAoAAAAKAAAB9+x9rI0AAAHDSURBVDgRfJJLSwJhFIb7Af2G/kEEQVAEFdQigjYtWhW0CVq0CdpUIFKEYZhYylgpZSEThggWJhUmlJGSBRmB2hUbbyUyONPYePnyLWaQyGY4zOGc933O+fimru6PRyBCQ4EUej9LhSk2x9FMNHnLPKSukaOGHjR/WH9KaULqxaI4yvH8ZprJ+ML+x/AZfRm1K9xB4/COW929uo1Ajhp60EALj1gSx8CQB6DoMV3E10dsx5o+k22uzWBSNuv0iibt8kyjRotvdY4eNNDCAy8YMjAWiUckyHy7wYiASTdgsbqWvOcBRyiCQI4aetU6eF/u4vcy8Dn0GlV1Uhvfog7jqrJFZ3AueE6zGVYUSZFUB2r7ix4fNPMVLTzwgiEDQVd1UZvSZo65Qy8g+eIn4fMCyXF8GcHxH9/5ezKbtyvdHmnTmsDZ1hVK02e2vCeyPIAAY1NBzBPAypX36SaW0A9u00w4ldH2b2zBUxOIiZgMWOU3YXEkdc+aOfHylsOGJ2b/FfoYyrJcUdqyJhA3CRM2OaJ8AXrSeWCdcLp8dDCES8FG2BhAaQA8/wIBwobGIdqGoyEs4449gHanXYc4qgSE9jfwCwAA//+KFItXAAABtklEQVR9UUtLAmEU9Tf0N1oEQVBID6hVUcto07Jdm2jVJqSQoDCpFC20MgkLAu2BCEm0SBf2Qu2tkaGmpSnjzDjjODl9R/iizJrhcl/nHO69n0pFvuebl+hMl2ld07xg2Bzbc0fOYilth3nZv31x7XOch2d7Vqzu+WO/vn9twzbq3Eeef2ckxODMdJrWYuFEBFrVrypIilq10QyhgDP8EAvGM6JcUgRJVG5Poonk4ysDH/TeJQk+h7iKJ5xfgslI+mq2e9kOgKZlwWgYtDuyqTwvKbLCi4JChZFXyJ9J5jhggAUH20GDDqhiWd5pHt7yVAFkQnisd7obiuayjARRGGJMj953LLjQ+BIUZbkv6L1PT7Uumejak036xYlGnV7Xa7VZRnZcq8QQo4YeTgMsOOCKsjjwJYhA+ChpA65QarrNaAHw0OQL0IcACYbJDuaOfOgBAyw44P4Qo0lZKY9fem7jWAv3gmFNPAIMMa3jHMCCQ/l1fVEuDQlySWA5vgLD7fDSMMS0Th5KBLauSG2xUCiqOY5/ouRaj16hILTX8v7NGYZp4DhunOV5HxF8JfaGGDX0/iJ/Apualt8qeDHZAAAAAElFTkSuQmCC"

    .line 16
    :try_start_56
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 18
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/vungle/ads/internal/util/k;->a([BLcom/vungle/ads/internal/util/t;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_6c

    goto :goto_77

    :catchall_6c
    move-exception p1

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    :goto_77
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    move-object p1, v6

    :cond_7e
    check-cast p1, Landroid/graphics/Bitmap;

    .line 23
    :cond_80
    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->v:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->u()Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 26
    iget-object p1, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_96

    const-string v8, "VUNGLE_AI_LABEL_ICON_URL"

    invoke-virtual {p1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_97

    :cond_96
    move-object p1, v2

    .line 27
    :cond_97
    invoke-static {p1, v3, v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    move-object p1, v6

    goto :goto_c6

    .line 30
    :cond_9f
    :try_start_9f
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    invoke-static {p1, v3}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/vungle/ads/internal/util/k;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_b2

    goto :goto_bd

    :catchall_b2
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    :goto_bd
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    move-object p1, v6

    :cond_c4
    check-cast p1, Landroid/graphics/Bitmap;

    :goto_c6
    if-nez p1, :cond_f6

    .line 35
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAAK8AAAAsCAYAAAATtugDAAAUsElEQVR4Ae1dB3RVxbqe9JCKEEgIBEIHA0jvglItiIqKiNgFvXptT132iuh6S68FC8v7bKA8BRFFihQp8iiKVKUECJBQQggkpJGek/d9e/9z7s7mnCSQwzVr3f2vNWvvPXtm9j8z//zlmzmJn6obhSA1Q4pHikRqhBQs+Q45ZKUSpAKkUqQspHSk45J/XuSnzo8orL2UKayOoDpUF0pD2ouUqs6RzlV4E5EGKFPLOuSQLykfaQvSvtpWqK3wUlgvU6aL4JBDF5LoUixXpjBXSwGqZuqKNAypoXLIoQtPYUgdkSqQMqsrWJPw0q/tixSoHHLo30eUywS5P15dIW/US5JDDv1VFC9XjwLsTXgdwXWovpBXAfYkvPRx+yqHHKo/RAEmPlzFB/a3FSKq0FM59O8iP39///PF2v/TiJ5AFYjWrnmvUQ6Ge8EJAutfWVkZhEsoHoP8THIhTznklSirMcqCA1uFtwPSxcq3ZGgWTAo1fAAnDZPE5CcTVR+1jp+X5BPiELhcrmBcm3zwwQejBgwYkLh69erTeFWCvIr6LMDm9Pnp+fTTedXw7OtxpGIlDpzDBysE5ssAzWAUHQvCldqlgTLPPPB7mDsX/ZcivC/CtUzy6sWsWYSLfAfgnnvvxcrEHX3CI9oO+/77768dO3bsJXxu2bJlw9tuu22+Mv26+iq9HJdA8M65bCDuDsemUMkc2svL/LM8x7KcZWU8Xer8iTu8qbzRwpuofOcukGlq9IiEhIS46667rvOVV17ZvkePHnFYoX5nzpwpRSqZP3/+nsWLF+/fsmVLKsrmKXMA/vKJw+AGJCYmxk2dOnUY73fv3p325ptvbsD9GeUDQjscn8C4uLgonde7d+/myrSCFIh6KbyyqCOmTZs29JprrunOvJMnT2YPHz58Lt5lUfvYy+MSNmvWrOuaNm0aExAQUD5y5Mg5yD9pL3uORDllAJeu1fhopFaqjiQMU8M2njhxYo+33357WJMmTSK8lc/MzDyzbNmy3XfeeSe3AzNlVXqaPG2ijAfp+/lMMgVHWcau0kMfQiFMXX/77bd7+fzzzz/vw6DPVKa58vZNuzmsrIGHCCzoHl988cXY8PDw4PHjx89dsmTJtmoWyLm0761Obet5JPAcDP7iIbB/j4mJcSs6zN28L7/8cqPwbm2fizF2165dky+++GID7oIA/wOXNJnnuhBhs4XUvBQ2nwgumGIQ0vizzz676o477uij31FI165deyQ/P784Kioq5NJLL22J1RjOBHPZBxMYdtNNNy1A0QxlMZ2yGJgC2bZcOfmUvjJJFXTDKioq9OdYngMXKPX5wiUmj/X5rhL3/E45ng13AAOr0AZXR0hZWVmYbqy8vJzfjaCLg7I0feXSpvEt+vHCW5BYHJe0W2a+Mr7LG37TqIv74p9++mlPbGxspvSVC6NExjBA+NT9rJD+BFl4d/fd7m5JG6yr3TSt0Sv0mGG8KizjVRsylNLtt9/eySq4pKFDh7adOXPmDnyv0IPrR7fLjWjJOPmCGiOFsHPxygckAxbxyiuvXKoFF+5B2X333bfy66+/3qXMgxZ6IiJfeOGFPk8++eQACG7QuHHjkt59992cRx99dDHenZaJ9pPOUnAaQlO16t+/fyye/bOzs4vWr1+fvnXr1mMok8uBE0FhPQ5Y9N13390NExSYnJyc+fvvv2fDhWk4ZcqUThQA1C9B/WObN28+jPK5aLMEZVk39Oqrr+7cpUuXDrpfoaGhERMmTOgbHBycFxISUvDpp59uV6afR+Jx0Gi0HTt58uSO0dHRDXJyckqgtTOgSVPxrhgmNrFRo0ZRWByl0LQ7lOki+cHPjcAibkOU4eDBg2rDhg15MvmR0GbdwU9QLujHH39Mb968eUOMY0cs/LADBw7ko2wG+nQE/DJwKULbhjBaFEhUixYt4iBYCW3btm140UUXBaempuZ8++23B48ePZohfa61m+ZvmrzwSZMmdbG/u/nmm5PuvffelfgueSm1v6eraGlH1c1jcBMXZjM2TAe4q6ojgbGQPn36JGGwJ1GjMq9nz55zduzYQcHNoSZSptYwkAekRg8//PDAd955hy6LKiwsLE1KSvoHBvmoMoWcQVPMQw891O/ZZ58drNu00s6dOzMw0UvhN++XiaQmCu7Xr1+XX3/9dQrLzJgxY3/jxo0rYZo72OvTJXjuuedWQYgJvzAoawgf928dO3ZM8NTHU6dO5cMNegvfOoXHUAhIS/A/YvTo0R24CK1l//jjj0xYlU3w+fpdcsklTZgHIftvXI4ghbz22msjn3nmmSuY/8Ybbyx9/vnnV9CcYoF22rhx49+Zv3DhwmNYfCcfeOCBJHv7EOAjWOzL0Pe9YrJd1Ni4xkARjLjnnnv6hoWFBdv7AH42Q7ksRdkTEjjXRDrwSkxPT/8brEUYriVYCCcfeeSRFiwAjbwArsM6ZSoovSA4x/EYh8ldu3aNlf5PxzdTVB0OoFtoJwUpRtWduAgaQGt10EI2b9685G3btlEosi0RZiXNNLRNKa7Z06dPX4vJ+id8zC8uv/zyz5BPBIICTlMbAy03BhMx2iq41Ob6HhoyDu7IxMcee2wQ2mMAZEA40EKhugy0RRstuNa6pBEjRnSYM2fOeNxSuAJF81WrjcgfyoVAcBPw7Um0GlbB0t/o1q1bU7gGI6GtrT5/qPAYCHfELVi8F5eA+K87/7LLLouDdepuF1zSwIEDExDwToBWpssXInNAyzcYC36wFtwTJ04UWvsNQev93nvvMRil+a/xVKHEGQ3QZhIFlw9fffVVMhaPG2+99tpr2xNBUVU3vSj0lV7a8wVFsqVgVXdiO2GYyE464/XXX98KRvPET6xC4m+V4d1pmNidEPId0H67Dx06RI3GDke8/PLLg6FVjd0+Dv5LL720Dub5fyIiImb06tVr9vLlyw/wHScJWmwEJrEl2gu171hFRkYGwCznQIgXwezOwOr/ABp/JSeV74EsNMJkDpa6RQguZkNTLtH1FyxYcBx1ZmFhvQut+zay6KJEUeO2atWKvpchIMLfP8HfR1iM5O9gfHx8SKdOnRpY2NE+fCXaqzqA4NtuVsk744Vbb711CXh4nwn9WKp5ZzD86quvDkS9cPGTI6Dte+j6t9xyyyqgGp9yzLp37/69FmKY+d7Ce21wV8NlgGJqpzOw4HfOnTt3J60Ln+HStcNijhHNr6nSU/s+chtIjchYnSEyEZhQDKYB/3CQ4C4QPaAp9qbJmE8pLkE5jf9ViIMfff/997vPV2BRLIaAroC/tgvfStm+ffs2DNj87777bg/fU4ChxYfQ51Y2bUJeEAwuht+9AY8U+JQPP/zwF2jrtboMtD4nhtqdk5sF/zZbv8M9+TqMdIgwD64uCGcCeHL7f+BlIYRoOczpHpQ5gMW4nfzBtO711G9vE+gp/4orrlj0zTffuHmfPXv2+quuumqxfo/7jsK7EdTpBbV///58CBh5ZmSehvnYgUB6EwUOSiILC6vGY64MYhlwQjHEAHExhPfPP/88gViDrk8W+smrMf5DhgyhBThLeVxACvGZ5qXZ0+a9oKCAQnC+gHsgJr6lhtjg/x2Fb7pbmRF5kQg5f8iXAZ/v/7Q2wSS3V+YkVhk8DHYGhD0Vt7lcTEjcGMmB9kjWGgx8cwEHC7/lMN3uUJy7XtKXUrEigdBCbfR7QH0HIBcU0izLItT8rffSR0+7UnSXlHXyKWhoO02ZQSz7XkzfHsKTSmsivIfTz5cqpYwDeNO+ffvIjz/+uB/w9Q6ow98aVsLirIJV+QQuzceweGmezLqVYCFpDUIRjHbWecDnkyXgy4cS2Knzn3766T7U/BpdEPfgQroNwb5qyYCHaOIseQHnswppejDwjfTz3r17MyUgcQsUfVNOJDRdFgTQ+CZXPzRElPiO7u+iTJ4IrVWtUcMXgd98y3cNn5PFvAywnohAIAXROhMBEAWXwlpu4Y9UnJGRkaWFzNZHj1g2ERvLdxjEciEUWSEoLiC6NykpKdk23in8eW+99ZZ7wcA96AJ37E4sgHsQO1yJADpR+lYgY1ITXsbxiLz++uvdxwbgZx+UBVoGxCNduw6tW7duDLepKYM70dhK+qMsvPvSbTD8mdpEnDWRgT1CkDiJio49zBJdiJpMk7EbJwGaITxMgJbcv0hOS0ujgBnBnrWiCIALwqlhK343RBaMuyzQplLBS631DZdF8pWt3bOYtA44JwSQmNtaYaL40sUJ88BfOaxQqbUd3Zbd51XmGFZxKci7MlEEO5+eJIB1CxH1b+7bt+/nQFvS9AsGtkAG+gOZuA0Q3s2IGRjA0hf3qlykP8FAkFqwPh9gwU6hDeLR0dTm1MpLly41ND2VxxNPPNENPIRZ4LELuVtYSuHiKqqr60Ami2HOjmpY5PHHH++GdBgdLBGt5+6ICJgR5AlKQOGlkBEDrTx9+nSxLov2iIYEWLUSB5aHQ4hpIhhx847FQ5egyuksbmAoL+ZL3lUhT9pBAin9/Yq8vDw31AONQy0cJIdVrBWNDQ8rf7IwjIn1dpjFg7WqItCWxWVtwE8sBvMKoRH3DRo0KB2+eTO4OK2B6LTCcwJRC8B6baGBY+FuTFfm3Jd54oMuAy5h8Knb6jxg3mEIYK8OCgoyFiStHNAUd8yE2KGtxB3GPNr74l91h7SulM/WslUdScx4EbDKrToP28NdoH0TFSENU6vqs6t+YtqjoAGSsN34GMz3w0j/JcGGCzDbYd1Ou3btmjC6F+2sT6lRmMPhzyUgijagPuDD2UeOHMmphSmsjvTOnr1/1u3p8lWrVh3T72688UZqMf44NUjzp8zFFg7/Mr5NmzYN7WOlPGs8NxJhK6+8PNvb4DcpOM3AQyx9z02bNqUAOlsGgZ2NgIpb0EaAxXgCWC/5rs4y0iJGoZx7DwDISdiYMWMSuACYEJskDhs2rLF+T8WFOW8iY6GUB6XhQ7ehlF/IU3UnrrISoAHHsItkCDADCeCg4yBc7Dx9IfqjhHSoaWMheN0WLVo0ntuNHEyYpONwEahxy44dO5apAw/ipdiN6882kCLZBhJNVksgDEM1AzCX25GX78kVqC3JLqFxq/O4S6fMBUgNw2jatWbNmjRuqvA9JwyLljgzTSv7RgG6CNBRGwRzY2ztew1kJK8uZtYf2G8L8Ps00qMIVO8iVi59yaVVXLduXYYujLgiSpSKJ+I4hEBDx8OyXMQMBrcMTleuXLmXCQs4mdcVK1bspzuhK06bNo3wJjHfs45A+tLfBWVxYgil1HmHTTRe9l133bWcgROhFXYcq30cAoZ0XA/AHSjEVmUDmLBWMEftNPgO7VuAna5f0AZ9Zpqx3Keeemo1goNb+B6Y7xBMTDwEdM+uXbsKxo4d2xxgezet1bjz9eKLL27CgDN4C7D7k54GzVOeCFYFJsodyEFjNQdvg6HVj8v28M7Dhw+fwPV3APeDWIYbA+CvGfnDDl0etoQTHnzwwZ5YlOEe2j8nqmZL9awYABsHuVz09FGZoBzGAcPeivEpgLDS703S5bETSi1c7u2boAbotxsz/uijj7YCDlyLd4X627IYQxBrtAY0N4HzSWsoGyA+OYVXDaVTePk3o6hFfOH30m/NGDVq1LzPP/98FDcZGLzhuR2Tp0oQxuPERCEcqahbLGa1GIHArqlTp66C1h3Gct7aoOBiIXwjGCwFn7tU7omlX2sPhIRc1jKW3TUXLEjWnj17jnXu3Lk5fNZAYMzU/CorKysPQnsQ7Z0GDLYKmwgN9EaKNqXWD+zbt49RvT/NrWRZIbgqAaQnrSw+uf2oocGnzV9nWMEANJfb5djZu5HWjGadSdnohx9++JPnOpQXf1eZmHE4lExrPhCOhOBuxq3eUraiH4FY7H5w205he78ZLRF4aAcLnEVe7Xwq39FxjTZkKd9QpWCRx7G3/iOi3pkwLfuoWa2FaHKhodLhT82HW/AJBDcFdQoscBZPZeVA465GtDsLpinF/iG2wX16BCWfcH9fmQedjclGQOFGICS4sGsYw83hgRY+iIAXaQQDlItJn7N69epkG/ynpC1O+kn0cSF2EldwAdl5o/sEf3B+WVmZ9V2h9LECfLmDPmyEFEufiVoU23g/S8AoQKhjRYk0lFiIsUiGXzoH2Ph+5WHM3n///fU33HDDD9zdrCY+8J8yZUpzjbUDE06R8xwG+qH+5eIYiApSHgK5P3RlLGIe9mJsUxwYGOgee7GMvhBgIikl2r7yY2OU78iAwFzmLxIIXIcBA4zEViX39l0YYILcFGh2hgjBWUf7SOKTUWvR141A5ByHAQ2GacyDD0d8kYJRYNUGljpEAQLkO8R6yyztst8hUoaQERGRXNH8HFwu6iCJnPUmANsvkC1vvXMYJN+KQv8aDR8+vInwdlJ4K5P2G5BHAfeLpH22TfNKXvKkPL9NBCZa2ub45PJEmvXIp7953FHHEKXSPy5Yl/Q/lCgO/XQsQmPMYOFyMe7kizyckfHw5mMzWKPLE+0yj2gafPBMiqejlP7mwZ0I4clPxilf+mblM0c2ieoqwDz/nWp1DicKA74m/Xsna3Cgt4ZrG6T4y2LQGxCG9vI3j0G6qvmm8S1xG+zf8ZN2/bTG9sCLbke3ZdU67nb8TUYCpbzGkA2NI5NZpb4FdfG38gchrZRdLX9Ltzxh3EZdC/TkifcAKRAggahLNK1L1SA80r6GM5W07ekbtmrufhnlNcQo7alatFEbojL6X95YhTcRaZRyyKH6Tb8o80+iVjnClqqq+btQDjlUD4ixmfuwkx27WaN8s13skEO+JsrlcmtGgIcC9IsSlEMO1S/apMxfobjJ0w6L/ntQPvltm0MO+YD4F9O32zO9bQ9q39cRYIf+atoi6Syq7jdMjgA79FeTV8El1fQDPAow/eDYWpR1yCFfEWWOPu726gqdyz9UIQbcWDnk0IUlKsw1qhb/UOVcf6bDH/vxD/JdiJ04h/6ziTtnG5EO1bbC+f7SM1GZfxI1UTnk0PmTPhRGvzZdnSPV9WfK1n/fSpeCB0b0L3EdcshKFFSepKOwUsvW+d+3/j/HRpJDy/T8WwAAAABJRU5ErkJggg=="

    .line 36
    :try_start_ca
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 38
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/vungle/ads/internal/util/k;->a([BLcom/vungle/ads/internal/util/t;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_e0

    goto :goto_eb

    :catchall_e0
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    :goto_eb
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    goto :goto_f3

    :cond_f2
    move-object v6, p1

    :goto_f3
    move-object p1, v6

    check-cast p1, Landroid/graphics/Bitmap;

    .line 43
    :cond_f6
    iput-object p1, p0, Lcom/vungle/ads/internal/o1;->w:Landroid/graphics/Bitmap;

    .line 48
    :cond_f8
    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->r()Z

    move-result p1

    if-eqz p1, :cond_1c9

    .line 49
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 51
    :try_start_103
    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->n()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "parse(this)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v2, 0x12

    .line 122
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12c

    .line 123
    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12c

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12d

    :catchall_12a
    move-exception v2

    goto :goto_166

    :cond_12c
    move v2, v4

    :goto_12d
    const/16 v3, 0x13

    .line 127
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13f

    .line 128
    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_13f

    .line 129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_13f
    if-lez v2, :cond_148

    if-lez v4, :cond_148

    int-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 132
    iput v2, p0, Lcom/vungle/ads/internal/o1;->z:F
    :try_end_148
    .catchall {:try_start_103 .. :try_end_148} :catchall_12a

    .line 137
    :cond_148
    :try_start_148
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_153
    .catchall {:try_start_148 .. :try_end_153} :catchall_154

    goto :goto_15f

    :catchall_154
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_15f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1ec

    goto :goto_19f

    .line 138
    :goto_166
    :try_start_166
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "NativeAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve video metadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_166 .. :try_end_182} :catchall_1a5

    .line 140
    :try_start_182
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18d
    .catchall {:try_start_182 .. :try_end_18d} :catchall_18e

    goto :goto_199

    :catchall_18e
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_199
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1ec

    .line 141
    :goto_19f
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v1, v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ec

    :catchall_1a5
    move-exception v2

    .line 142
    :try_start_1a6
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1b1
    .catchall {:try_start_1a6 .. :try_end_1b1} :catchall_1b2

    goto :goto_1bd

    :catchall_1b2
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1bd
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1c8

    .line 143
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v1, v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :cond_1c8
    throw v2

    .line 145
    :cond_1c9
    iget-object p1, p0, Lcom/vungle/ads/internal/o1;->y:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/util/q;

    .line 146
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1e1

    const-string v1, "MAIN_IMAGE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    move-object v2, v0

    .line 147
    :cond_1e1
    :goto_1e1
    new-instance v0, Lcom/vungle/ads/internal/k1;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/k1;-><init>(Lcom/vungle/ads/internal/o1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/q;->a(Ljava/lang/String;Lcom/vungle/ads/internal/k1;)V

    :cond_1ec
    :goto_1ec
    return-void
.end method

.method public final c(Landroid/widget/ImageView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_e

    const-string v1, "MAIN_IMAGE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_e
    const-string v0, ""

    .line 2
    :cond_10
    iget-object v1, p0, Lcom/vungle/ads/internal/o1;->y:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/q;

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/g1;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/g1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/ads/internal/util/q;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/g1;)V

    return-void
.end method

.method public final d(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public final j()Lcom/vungle/ads/InvalidAdStateError;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/r;->b:Lcom/vungle/ads/internal/h;

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/h;->c:Lcom/vungle/ads/internal/g;

    if-eq v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    .line 5
    :cond_d
    new-instance v0, Lcom/vungle/ads/InvalidAdStateError;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_NOT_LOADED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/vungle/ads/internal/r;->b:Lcom/vungle/ads/internal/h;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can not play native ad."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/InvalidAdStateError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    return-object v0

    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->B:Lcom/vungle/ads/internal/ui/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_10

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_11

    :cond_10
    move-object v2, v1

    :goto_11
    if-eqz v2, :cond_16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_16
    iput-object v1, p0, Lcom/vungle/ads/internal/o1;->B:Lcom/vungle/ads/internal/ui/y;

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->q:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/c1;

    .line 6
    invoke-virtual {v0}, Lcom/vungle/ads/internal/c1;->a()V

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v0, :cond_a7

    .line 8
    iget-object v2, v0, Lcom/vungle/ads/internal/presenter/w;->n:Lcom/vungle/ads/internal/omsdk/b;

    if-eqz v2, :cond_38

    .line 9
    iget-object v3, v2, Lcom/vungle/ads/internal/omsdk/b;->b:Lcom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    .line 10
    :cond_32
    iput-object v1, v2, Lcom/vungle/ads/internal/omsdk/b;->b:Lcom/iab/omid/library/vungle/adsession/AdSession;

    .line 11
    iput-object v1, v2, Lcom/vungle/ads/internal/omsdk/b;->c:Lcom/iab/omid/library/vungle/adsession/AdEvents;

    .line 12
    iput-object v1, v2, Lcom/vungle/ads/internal/omsdk/b;->d:Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;

    .line 13
    :cond_38
    iget-object v2, v0, Lcom/vungle/ads/internal/presenter/w;->h:Landroid/app/AlertDialog;

    if-eqz v2, :cond_45

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 15
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 16
    :cond_45
    iget-object v2, v0, Lcom/vungle/ads/internal/presenter/w;->e:Ljava/lang/Long;

    if-eqz v2, :cond_96

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 18
    iget-object v2, v0, Lcom/vungle/ads/internal/presenter/w;->c:Lcom/vungle/ads/internal/model/i0;

    .line 20
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 21
    iget-object v4, v0, Lcom/vungle/ads/internal/presenter/w;->d:Lcom/vungle/ads/internal/platform/f;

    check-cast v4, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/platform/c;->k()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 22
    const-string v5, "ad.close"

    invoke-virtual {v2, v5, v3, v4}, Lcom/vungle/ads/internal/model/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 156
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    new-instance v4, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v4, v3}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 158
    iput-object v5, v4, Lcom/vungle/ads/internal/network/p;->i:Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/w;->a()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    .line 160
    iput-object v3, v4, Lcom/vungle/ads/internal/network/p;->j:Lcom/vungle/ads/internal/util/t;

    .line 161
    invoke-virtual {v4}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v3

    .line 162
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/w;->b()Lcom/vungle/ads/internal/network/r;

    move-result-object v4

    const/4 v6, 0x0

    .line 163
    invoke-virtual {v4, v3, v6}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/q;Z)V

    goto :goto_70

    .line 164
    :cond_96
    iget-object v2, v0, Lcom/vungle/ads/internal/presenter/w;->f:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v2, :cond_a7

    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/w;->b:Lcom/vungle/ads/internal/presenter/x;

    check-cast v0, Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "end"

    invoke-virtual {v2, v3, v1, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    return-void
.end method

.method public final m()Ljava/lang/Double;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_13

    const-string v1, "APP_RATING_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_10

    const-string v1, "MAIN_VIDEO"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    return-object v0

    :cond_10
    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_10

    const-string v1, "ORIGINAL_VIDEO_URL"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    return-object v0

    :cond_10
    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/r;->d:Lcom/vungle/ads/internal/model/j3;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lcom/vungle/ads/nativead/NativeVideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->A:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/nativead/NativeVideoOptions;

    return-object v0
.end method

.method public final r()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->n()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->r()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/platform/f;

    .line 2
    check-cast v0, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/platform/c;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->q()Lcom/vungle/ads/nativead/NativeVideoOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/nativead/NativeVideoOptions;->getStartMuted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3a

    .line 3
    :cond_20
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_39

    const-string v2, "START_MUTED"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public final u()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_e

    const-string v1, "VUNGLE_AI_LABEL_ICON_URL"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_e
    const-string v0, ""

    .line 2
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final v()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v0, :cond_1a

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_12

    const-string v2, "VUNGLE_PRIVACY_URL"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_14

    :cond_12
    const-string v1, ""

    :cond_14
    const/4 v2, 0x0

    .line 3
    const-string v3, "openPrivacy"

    invoke-virtual {v0, v3, v2, v1}, Lcom/vungle/ads/internal/presenter/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public final w()V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v0, :cond_1f

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_18

    const-string v3, "CTA_BUTTON_URL"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1a

    :cond_18
    const-string v2, ""

    .line 4
    :cond_1a
    const-string v3, "download"

    invoke-virtual {v0, v3, v1, v2}, Lcom/vungle/ads/internal/presenter/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

###### Class com.vungle.ads.internal.o1$$ExternalSyntheticLambda0 (com.vungle.ads.internal.o1$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/o1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/o1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/o1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/o1$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/o1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/o1$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/o1;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
