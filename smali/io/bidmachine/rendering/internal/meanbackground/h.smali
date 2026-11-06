###### Class io.bidmachine.rendering.internal.meanbackground.h (io.bidmachine.rendering.internal.meanbackground.h)
.class public final Lio/bidmachine/rendering/internal/meanbackground/h;
.super Lio/bidmachine/util/taskmanager/SuspendCancellableTask;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/f;

.field public final c:Lio/bidmachine/rendering/internal/meanbackground/l;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;JLio/bidmachine/rendering/internal/meanbackground/f;Lio/bidmachine/rendering/internal/meanbackground/l;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meanBackgroundExtractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceMeasurer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->a:J

    .line 3
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->b:Lio/bidmachine/rendering/internal/meanbackground/f;

    .line 4
    iput-object p5, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->c:Lio/bidmachine/rendering/internal/meanbackground/l;

    .line 5
    iput-object p6, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->d:Lkotlin/jvm/functions/Function0;

    .line 6
    iput-object p7, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->e:Lkotlin/jvm/functions/Function1;

    .line 9
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/h;)Lio/bidmachine/rendering/internal/meanbackground/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->b:Lio/bidmachine/rendering/internal/meanbackground/f;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/h;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->d:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/h;)Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/meanbackground/h;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/CoroutineContext;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->c:Lio/bidmachine/rendering/internal/meanbackground/l;

    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/h$c;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/h$c;-><init>(JLio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    const-string p1, "Mean background extraction"

    invoke-virtual {v0, p1, v1, p4}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    if-eqz p3, :cond_5

    .line 3
    invoke-static {p3}, Lio/bidmachine/util/ImageUtilsKt;->recycleSafely(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_5
    sget-object p3, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->e()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance p3, Lio/bidmachine/rendering/internal/meanbackground/h$a;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p0, v0}, Lio/bidmachine/rendering/internal/meanbackground/h$a;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_24

    return-object p1

    :cond_24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p2, Lio/bidmachine/rendering/internal/meanbackground/h$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;

    iget v1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_48

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->a:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_77

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->a:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v7

    goto :goto_5d

    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-wide v5, p0, Lio/bidmachine/rendering/internal/meanbackground/h;->a:J

    .line 5
    iput-object p0, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->b:Ljava/lang/Object;

    iput v4, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    invoke-virtual {p0, p1, v5, v6, v0}, Lio/bidmachine/rendering/internal/meanbackground/h;->a(Lkotlin/coroutines/CoroutineContext;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5a

    goto :goto_76

    :cond_5a
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    .line 6
    :goto_5d
    check-cast v2, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    if-eqz v2, :cond_77

    .line 13
    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/meanbackground/f$a;->b()Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/meanbackground/f$a;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    iput-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->a:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->b:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    invoke-virtual {p1, p2, v5, v2, v0}, Lio/bidmachine/rendering/internal/meanbackground/h;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_77

    :goto_76
    return-object v1

    .line 21
    :cond_77
    :goto_77
    invoke-virtual {p1, v4}, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;->setCancel(Z)V

    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.h.a (io.bidmachine.rendering.internal.meanbackground.h$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/h$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/h;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/h;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/h$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/h$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$a;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->a:I

    if-nez v0, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/meanbackground/h;->c(Lio/bidmachine/rendering/internal/meanbackground/h;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-nez p1, :cond_26

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$a;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/h;->b(Lio/bidmachine/rendering/internal/meanbackground/h;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 3
    :cond_26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.h.b (io.bidmachine.rendering.internal.meanbackground.h$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/h$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/h;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lio/bidmachine/rendering/internal/meanbackground/h;

.field public e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->d:Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->c:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->e:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$b;->d:Lio/bidmachine/rendering/internal/meanbackground/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/rendering/internal/meanbackground/h;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.h.c (io.bidmachine.rendering.internal.meanbackground.h$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/h$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/h;->a(Lkotlin/coroutines/CoroutineContext;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/h;

.field public final synthetic d:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(JLio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->b:J

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->d:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/h$c;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/h$c;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/h$c;

    iget-wide v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->b:J

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->d:Lkotlin/coroutines/CoroutineContext;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/meanbackground/h$c;-><init>(JLio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/h$c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->a:I

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
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v3, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->b:J

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->c:Lio/bidmachine/rendering/internal/meanbackground/h;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->d:Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    invoke-direct {p1, v1, v5, v6}, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c;->a:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    return-object v0

    :cond_37
    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.h.c.a (io.bidmachine.rendering.internal.meanbackground.h$c$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/h$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/h;

.field public final synthetic c:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->b:Lio/bidmachine/rendering/internal/meanbackground/h;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->c:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->b:Lio/bidmachine/rendering/internal/meanbackground/h;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->c:Lkotlin/coroutines/CoroutineContext;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/h;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->b:Lio/bidmachine/rendering/internal/meanbackground/h;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/h;->d(Lio/bidmachine/rendering/internal/meanbackground/h;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3c

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->b:Lio/bidmachine/rendering/internal/meanbackground/h;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->c:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-static {v1}, Lio/bidmachine/rendering/internal/meanbackground/h;->a(Lio/bidmachine/rendering/internal/meanbackground/h;)Lio/bidmachine/rendering/internal/meanbackground/f;

    move-result-object v1

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/h$c$a;->a:I

    invoke-interface {v1, v3, p1, p0}, Lio/bidmachine/rendering/internal/meanbackground/f;->a(Lkotlin/coroutines/CoroutineContext;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    .line 4
    :cond_39
    :goto_39
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/f$a;

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method
