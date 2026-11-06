###### Class io.bidmachine.rendering.internal.meanbackground.j (io.bidmachine.rendering.internal.meanbackground.j)
.class public final Lio/bidmachine/rendering/internal/meanbackground/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/f;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/n;

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/o;

.field public final c:Lio/bidmachine/rendering/internal/meanbackground/a;

.field public final d:Lio/bidmachine/rendering/internal/meanbackground/i;

.field public final e:Lio/bidmachine/rendering/internal/meanbackground/l;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/n;Lio/bidmachine/rendering/internal/meanbackground/o;Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/i;Lio/bidmachine/rendering/internal/meanbackground/l;)V
    .registers 7

    const-string v0, "viewExtractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewScreenshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentBoundsScanner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meanColorCalculator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceMeasurer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->a:Lio/bidmachine/rendering/internal/meanbackground/n;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->c:Lio/bidmachine/rendering/internal/meanbackground/a;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->d:Lio/bidmachine/rendering/internal/meanbackground/i;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->c:Lio/bidmachine/rendering/internal/meanbackground/a;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/i;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->d:Lio/bidmachine/rendering/internal/meanbackground/i;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->a:Lio/bidmachine/rendering/internal/meanbackground/n;

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    instance-of p1, p3, Lio/bidmachine/rendering/internal/meanbackground/j$a;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;

    iget v0, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    goto :goto_18

    :cond_13
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;

    invoke-direct {p1, p0, p3}, Lio/bidmachine/rendering/internal/meanbackground/j$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget v1, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_52

    if-eq v1, v4, :cond_49

    if-eq v1, v2, :cond_3d

    if-ne v1, v3, :cond_35

    iget-object p1, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ae

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object p2, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->b:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v1, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8d

    :cond_49
    iget-object p2, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    check-cast p2, Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p2

    goto :goto_6a

    :cond_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/j;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/j$d;

    invoke-direct {v1, p0, p2, v5}, Lio/bidmachine/rendering/internal/meanbackground/j$d;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p0, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    iput v4, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const-string p2, "Screenshot"

    invoke-virtual {p3, p2, v1, p1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_69

    goto :goto_ac

    :cond_69
    move-object v1, p0

    .line 7
    :goto_6a
    check-cast p3, Landroid/graphics/Bitmap;

    if-nez p3, :cond_74

    .line 8
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-direct {p1, v5, v5, v3, v5}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 9
    :cond_74
    iget-object p2, v1, Lio/bidmachine/rendering/internal/meanbackground/j;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v6, Lio/bidmachine/rendering/internal/meanbackground/j$c;

    invoke-direct {v6, v1, p3, v5}, Lio/bidmachine/rendering/internal/meanbackground/j$c;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    iput-object p3, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->b:Ljava/lang/Object;

    iput v2, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const-string v2, "Scan bounds"

    invoke-virtual {p2, v2, v6, p1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8a

    goto :goto_ac

    :cond_8a
    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 10
    :goto_8d
    check-cast p3, Landroid/graphics/Rect;

    if-nez p3, :cond_97

    .line 11
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-direct {p1, v5, p2, v4, v5}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 13
    :cond_97
    iget-object v2, v1, Lio/bidmachine/rendering/internal/meanbackground/j;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v4, Lio/bidmachine/rendering/internal/meanbackground/j$b;

    invoke-direct {v4, v1, p2, p3, v5}, Lio/bidmachine/rendering/internal/meanbackground/j$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->a:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->b:Ljava/lang/Object;

    iput v3, p1, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const-string p3, "Mean color"

    invoke-virtual {v2, p3, v4, p1}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_ad

    :goto_ac
    return-object v0

    :cond_ad
    move-object p1, p2

    .line 14
    :goto_ae
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 15
    new-instance p3, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lio/bidmachine/rendering/internal/meanbackground/f$a;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.j.a (io.bidmachine.rendering.internal.meanbackground.j$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/j$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lio/bidmachine/rendering/internal/meanbackground/j;

.field public e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/j;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$a;->d:Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$a;->c:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$a;->e:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$a;->d:Lio/bidmachine/rendering/internal/meanbackground/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.j.b (io.bidmachine.rendering.internal.meanbackground.j$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/j$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/j;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$b;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/j$b;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/j$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/j$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->a:I

    if-nez v0, :cond_1d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/j;->b(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/i;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$b;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/i;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.j.c (io.bidmachine.rendering.internal.meanbackground.j$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/j$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/j;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->c:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$c;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/j$c;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/j$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/j$c;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$c;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->a:I

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

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/a;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->c:Landroid/graphics/Bitmap;

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$c;->a:I

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

###### Class io.bidmachine.rendering.internal.meanbackground.j.d (io.bidmachine.rendering.internal.meanbackground.j$d)
.class public final Lio/bidmachine/rendering/internal/meanbackground/j$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/j;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/j;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->c:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$d;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/j$d;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/j$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/j$d;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->c:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$d;-><init>(Lio/bidmachine/rendering/internal/meanbackground/j;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/j$d;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->a:I

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

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/j;->d(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->b:Lio/bidmachine/rendering/internal/meanbackground/j;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/meanbackground/j;->c(Lio/bidmachine/rendering/internal/meanbackground/j;)Lio/bidmachine/rendering/internal/meanbackground/n;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Lio/bidmachine/rendering/internal/meanbackground/n;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/j$d;->a:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/rendering/internal/meanbackground/o;->b(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_35

    return-object v0

    :cond_35
    return-object p1
.end method
