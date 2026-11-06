###### Class io.bidmachine.rendering.internal.meanbackground.k (io.bidmachine.rendering.internal.meanbackground.k)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/f;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/n;

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/o;

.field public final c:Lio/bidmachine/rendering/internal/meanbackground/a;

.field public final d:Lio/bidmachine/rendering/internal/meanbackground/b;

.field public final e:Lio/bidmachine/rendering/internal/meanbackground/i;

.field public final f:Lio/bidmachine/rendering/internal/meanbackground/l;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/n;Lio/bidmachine/rendering/internal/meanbackground/o;Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/b;Lio/bidmachine/rendering/internal/meanbackground/i;Lio/bidmachine/rendering/internal/meanbackground/l;)V
    .registers 8

    const-string v0, "viewExtractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewScreenshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentBoundsScanner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCornerExtractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meanColorCalculator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceMeasurer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->a:Lio/bidmachine/rendering/internal/meanbackground/n;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->c:Lio/bidmachine/rendering/internal/meanbackground/a;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->d:Lio/bidmachine/rendering/internal/meanbackground/b;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->e:Lio/bidmachine/rendering/internal/meanbackground/i;

    .line 7
    iput-object p6, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->f:Lio/bidmachine/rendering/internal/meanbackground/l;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->c:Lio/bidmachine/rendering/internal/meanbackground/a;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->d:Lio/bidmachine/rendering/internal/meanbackground/b;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/i;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->e:Lio/bidmachine/rendering/internal/meanbackground/i;

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->a:Lio/bidmachine/rendering/internal/meanbackground/n;

    return-object p0
.end method

.method public static final synthetic e(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/bidmachine/rendering/internal/meanbackground/k$a;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;

    iget v2, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/rendering/internal/meanbackground/k$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 2
    iget v3, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_5e

    if-eq v3, v6, :cond_52

    if-eq v3, v4, :cond_3f

    if-ne v3, v5, :cond_37

    iget-object p1, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c5

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object p1, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v3, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->b:Ljava/lang/Object;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    iget-object v4, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, p1

    move-object v9, v3

    move-object v10, v4

    goto :goto_a0

    :cond_52
    iget-object p1, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    iget-object v3, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    check-cast v3, Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_5e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/k;->f:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v3, Lio/bidmachine/rendering/internal/meanbackground/k$d;

    move-object/from16 v8, p2

    invoke-direct {v3, p0, v8, v7}, Lio/bidmachine/rendering/internal/meanbackground/k$d;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    iput-object p1, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->b:Ljava/lang/Object;

    iput v6, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const-string v8, "Screenshot"

    invoke-virtual {v0, v8, v3, v1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_79

    goto :goto_c3

    :cond_79
    move-object v3, p0

    .line 7
    :goto_7a
    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_84

    .line 9
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-direct {p1, v7, v7, v5, v7}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 10
    :cond_84
    iget-object v8, v3, Lio/bidmachine/rendering/internal/meanbackground/k;->f:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v9, Lio/bidmachine/rendering/internal/meanbackground/k$c;

    invoke-direct {v9, v3, v0, v7}, Lio/bidmachine/rendering/internal/meanbackground/k$c;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object v3, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    iput-object p1, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->b:Ljava/lang/Object;

    iput-object v0, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->c:Ljava/lang/Object;

    iput v4, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const-string v4, "Scan bounds"

    invoke-virtual {v8, v4, v9, v1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_9c

    goto :goto_c3

    :cond_9c
    move-object v9, p1

    move-object v12, v0

    move-object v10, v3

    move-object v0, v4

    .line 11
    :goto_a0
    move-object v11, v0

    check-cast v11, Landroid/graphics/Rect;

    if-nez v11, :cond_ab

    .line 13
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-direct {p1, v7, v12, v6, v7}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 14
    :cond_ab
    iget-object p1, v10, Lio/bidmachine/rendering/internal/meanbackground/k;->f:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v8, Lio/bidmachine/rendering/internal/meanbackground/k$b;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lio/bidmachine/rendering/internal/meanbackground/k$b;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->a:Ljava/lang/Object;

    iput-object v7, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->b:Ljava/lang/Object;

    iput-object v7, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->c:Ljava/lang/Object;

    iput v5, v1, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const-string v0, "Extract content corners"

    invoke-virtual {p1, v0, v8, v1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_c4

    :goto_c3
    return-object v2

    :cond_c4
    move-object p1, v12

    .line 15
    :goto_c5
    check-cast v0, Ljava/util/List;

    .line 36
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.a (io.bidmachine.rendering.internal.meanbackground.k$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public f:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/k;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$a;->e:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$a;->d:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$a;->f:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$a;->e:Lio/bidmachine/rendering/internal/meanbackground/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.b (io.bidmachine.rendering.internal.meanbackground.k$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->d:Landroid/graphics/Rect;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->e:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$b;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/k$b;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/k$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/k$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->e:Landroid/graphics/Bitmap;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/meanbackground/k$b;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v6, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->d:Landroid/graphics/Rect;

    iget-object v7, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->e:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Lkotlin/coroutines/CoroutineContext;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b;->a:I

    invoke-static {v6, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    :cond_31
    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.b.a (io.bidmachine.rendering.internal.meanbackground.k$b$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Lkotlin/coroutines/CoroutineContext;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->d:Landroid/graphics/Rect;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->e:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->e:Lkotlin/coroutines/CoroutineContext;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->f:Landroid/graphics/Bitmap;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Rect;Lkotlin/coroutines/CoroutineContext;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/k;->b(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/b;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lio/bidmachine/rendering/internal/meanbackground/b;->a(Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->e:Lkotlin/coroutines/CoroutineContext;

    iget-object v9, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v10, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->f:Landroid/graphics/Bitmap;

    .line 18
    new-instance v11, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 20
    check-cast v4, Landroid/graphics/Rect;

    .line 21
    sget-object v5, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v5

    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    invoke-interface {v1, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    new-instance v6, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;

    const/4 v7, 0x0

    invoke-direct {v6, v9, v10, v4, v7}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, v5

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 37
    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 38
    :cond_6c
    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->a:I

    invoke-static {v11, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    return-object v0

    :cond_75
    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.b.a.C1199a (io.bidmachine.rendering.internal.meanbackground.k$b$a$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->d:Landroid/graphics/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->d:Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->a:I

    if-nez v0, :cond_1d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/k;->c(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/i;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$b$a$a;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/i;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.c (io.bidmachine.rendering.internal.meanbackground.k$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->c:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$c;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/k$c;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/k$c;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$c;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/a;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->c:Landroid/graphics/Bitmap;

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$c;->a:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    :cond_2f
    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.k.d (io.bidmachine.rendering.internal.meanbackground.k$d)
.class public final Lio/bidmachine/rendering/internal/meanbackground/k$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/k;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/k;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->c:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$d;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/k$d;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/k$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/k$d;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->c:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$d;-><init>(Lio/bidmachine/rendering/internal/meanbackground/k;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/k$d;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/k;->e(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->b:Lio/bidmachine/rendering/internal/meanbackground/k;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/meanbackground/k;->d(Lio/bidmachine/rendering/internal/meanbackground/k;)Lio/bidmachine/rendering/internal/meanbackground/n;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Lio/bidmachine/rendering/internal/meanbackground/n;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/k$d;->a:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/rendering/internal/meanbackground/o;->b(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_35

    return-object v0

    :cond_35
    return-object p1
.end method
