###### Class com.vungle.ads.internal.util.i (com.vungle.ads.internal.util.i)
.class public final Lcom/vungle/ads/internal/util/i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/vungle/ads/internal/util/j;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/vungle/ads/internal/util/j;I)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/util/i;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/i;->b:Lcom/vungle/ads/internal/util/j;

    iput p3, p0, Lcom/vungle/ads/internal/util/i;->c:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/util/j;Landroid/graphics/Bitmap;I)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/util/j;->a(Landroid/graphics/Bitmap;I)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/vungle/ads/internal/util/j;->a(Lcom/vungle/ads/internal/util/j;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception p2

    goto :goto_2f

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_63

    goto :goto_60

    .line 8
    :goto_2f
    :try_start_2f
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "BlackScreenDetector"

    const-string v1, "Black screen detection failed"

    invoke-static {v0, v1, p2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p0}, Lcom/vungle/ads/internal/util/j;->a(Lcom/vungle/ads/internal/util/j;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal calculation error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_5c

    goto :goto_5e

    :catchall_5c
    move-exception p2

    goto :goto_67

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_63

    .line 11
    :goto_60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    :cond_63
    invoke-static {p0}, Lcom/vungle/ads/internal/util/j;->b(Lcom/vungle/ads/internal/util/j;)V

    return-void

    :goto_67
    if-eqz p1, :cond_6c

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_6c
    invoke-static {p0}, Lcom/vungle/ads/internal/util/j;->b(Lcom/vungle/ads/internal/util/j;)V

    throw p2
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/util/h;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/util/h;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 4
    check-cast v0, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/executor/d;->d()Lcom/vungle/ads/internal/executor/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/util/i;->b:Lcom/vungle/ads/internal/util/j;

    iget v2, p0, Lcom/vungle/ads/internal/util/i;->c:I

    new-instance v3, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1, v2}, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/util/j;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/util/i;->a(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.vungle.ads.internal.util.i$$ExternalSyntheticLambda0 (com.vungle.ads.internal.util.i$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/util/j;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/util/j;Landroid/graphics/Bitmap;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/util/j;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/util/j;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/vungle/ads/internal/util/i$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/util/i;->a(Lcom/vungle/ads/internal/util/j;Landroid/graphics/Bitmap;I)V

    return-void
.end method
