###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler (io.bidmachine.iab.mraid.MraidAdRedirectHandler)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final e:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public final g:Lio/bidmachine/iab/utils/ClickPointGenerator;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;

.field public i:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->Companion:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Runnable;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/bidmachine/iab/mraid/MraidWebViewController;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;>;",
            "Ljava/lang/Runnable;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "controllerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scriptConfigsProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenProductLink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->b:Lkotlin/jvm/functions/Function0;

    .line 6
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->c:Ljava/lang/Runnable;

    .line 7
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    iput-object p5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->e:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    new-instance p1, Lio/bidmachine/iab/utils/ClickPointGenerator;

    invoke-direct {p1}, Lio/bidmachine/iab/utils/ClickPointGenerator;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->g:Lio/bidmachine/iab/utils/ClickPointGenerator;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Runnable;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_e

    .line 16
    sget-object p4, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p4}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p4

    invoke-virtual {p4}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    :cond_e
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1d

    .line 17
    sget-object p4, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p4}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p4

    invoke-virtual {p4}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p5

    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 18
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Runnable;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic access$getClickPointGenerator$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Lio/bidmachine/iab/utils/ClickPointGenerator;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->g:Lio/bidmachine/iab/utils/ClickPointGenerator;

    return-object p0
.end method

.method public static final synthetic access$getOnOpenProductLink$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getScriptConfigsProvider$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->b:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$handle(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$motionClick(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scriptClick(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->b(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->e:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;

    const/4 v7, 0x0

    move-object v5, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;-><init>(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_18

    return-object p1

    :cond_18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lio/bidmachine/iab/mraid/MraidWebViewController;IILio/bidmachine/rendering/model/ClickArea;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    sget-object v2, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 5
    :cond_d
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->f:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->e:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v8, p1

    move v6, p2

    move v7, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v9}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;-><init>(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/rendering/model/ClickArea;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V

    move-object p1, v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    iput-object p2, p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->i:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final complete()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->i:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_9
    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->i:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final handle(Lio/bidmachine/iab/utils/ClickAreaFactory;)V
    .registers 5

    const-string v0, "clickAreaFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/ClickAreaFactory;->build()Lio/bidmachine/rendering/model/ClickArea;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Lio/bidmachine/iab/mraid/MraidWebViewController;IILio/bidmachine/rendering/model/ClickArea;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.Companion (io.bidmachine.iab.mraid.MraidAdRedirectHandler$Companion)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.Companion.a (io.bidmachine.iab.mraid.MraidAdRedirectHandler$Companion$a)
.class public final enum Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

.field public static final enum b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

.field public static final synthetic c:[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    .line 2
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    const-string v1, "Processing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-static {}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a()[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->c:[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    filled-new-array {v0, v1}, [Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->c:[Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.a (io.bidmachine.iab.mraid.MraidAdRedirectHandler$a)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Lio/bidmachine/iab/mraid/MraidWebViewController;IILio/bidmachine/rendering/model/ClickArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

.field public final synthetic c:Lio/bidmachine/rendering/model/ClickArea;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lio/bidmachine/iab/mraid/MraidWebViewController;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/rendering/model/ClickArea;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V
    .registers 7

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->c:Lio/bidmachine/rendering/model/ClickArea;

    iput p3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->d:I

    iput p4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->e:I

    iput-object p5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->f:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->c:Lio/bidmachine/rendering/model/ClickArea;

    iget v3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->d:I

    iget v4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->e:I

    iget-object v5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->f:Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;-><init>(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/rendering/model/ClickArea;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    if-ne v1, v2, :cond_14

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    :catch_e
    move-object v9, p0

    goto :goto_70

    :catchall_10
    move-exception v0

    move-object p1, v0

    move-object v9, p0

    goto :goto_64

    .line 2
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1f
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$getScriptConfigsProvider$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidClickKt;->hasClcScript(Ljava/util/List;)Z

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_e
    .catchall {:try_start_1f .. :try_end_2f} :catchall_61

    if-eqz p1, :cond_34

    .line 5
    :try_start_31
    sget-object p1, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;->INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_e
    .catchall {:try_start_31 .. :try_end_33} :catchall_10

    goto :goto_36

    .line 7
    :cond_34
    :try_start_34
    sget-object p1, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;->INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;

    .line 9
    :goto_36
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-static {v1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$getClickPointGenerator$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Lio/bidmachine/iab/utils/ClickPointGenerator;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->c:Lio/bidmachine/rendering/model/ClickArea;

    invoke-virtual {v1, v3, p1}, Lio/bidmachine/iab/utils/ClickPointGenerator;->generate(Lio/bidmachine/rendering/model/ClickArea;Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;)Landroid/graphics/PointF;

    move-result-object v5

    .line 10
    const-string v1, "MraidAdRedirectHandler"

    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;

    invoke-direct {v3, p1, v5}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;-><init>(Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;Landroid/graphics/PointF;)V

    invoke-static {v1, v3}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 12
    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iget v6, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->d:I

    iget v7, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->e:I

    iget-object v8, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->f:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iput v2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->a:I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_e
    .catchall {:try_start_34 .. :try_end_56} :catchall_61

    move-object v9, p0

    :try_start_57
    invoke-static/range {v4 .. v9}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$handle(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5b} :catch_70
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5e

    if-ne p1, v0, :cond_70

    return-object v0

    :catchall_5e
    move-exception v0

    :goto_5f
    move-object p1, v0

    goto :goto_64

    :catchall_61
    move-exception v0

    move-object v9, p0

    goto :goto_5f

    .line 16
    :goto_64
    iget-object v0, v9, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$getState$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p1

    .line 15
    :catch_70
    :cond_70
    :goto_70
    iget-object p1, v9, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->b:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$getState$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;->a:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$Companion$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.a.C1162a (io.bidmachine.iab.mraid.MraidAdRedirectHandler$a$a)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;

.field public final synthetic b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;Landroid/graphics/PointF;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->a:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->b:Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimulateClick: distribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->a:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", normalized=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.b (io.bidmachine.iab.mraid.MraidAdRedirectHandler$b)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Landroid/graphics/PointF;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

.field public final synthetic g:Lio/bidmachine/iab/mraid/MraidWebViewController;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V
    .registers 7

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->c:Landroid/graphics/PointF;

    iput p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->d:I

    iput p3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->e:I

    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iput-object p5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->g:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->c:Landroid/graphics/PointF;

    iget v2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->d:I

    iget v3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->e:I

    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iget-object v5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->g:Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;-><init>(Landroid/graphics/PointF;IILio/bidmachine/iab/mraid/MraidAdRedirectHandler;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->b:I

    const-wide/16 v2, 0x96

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_37

    if-eq v1, v7, :cond_2f

    if-eq v1, v6, :cond_27

    if-eq v1, v5, :cond_23

    if-ne v1, v4, :cond_1b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_86

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7d

    :cond_27
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_2f
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->c:Landroid/graphics/PointF;

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->d:I

    iget v8, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->e:I

    invoke-static {p1, v1, v8}, Lio/bidmachine/iab/utils/ClickPointGeneratorKt;->relativeToView(Landroid/graphics/PointF;II)Landroid/graphics/Point;

    move-result-object p1

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->d:I

    iget v8, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->e:I

    .line 3
    new-instance v9, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;

    invoke-direct {v9, p1, v1, v8}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;-><init>(Landroid/graphics/Point;II)V

    const-string v1, "MraidAdRedirectHandler"

    invoke-static {v1, v9}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 6
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iget-object v8, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->g:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a:Ljava/lang/Object;

    iput v7, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->b:I

    invoke-static {v1, p1, v8, p0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$motionClick(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_61

    goto :goto_85

    :cond_61
    move-object v1, p1

    .line 7
    :goto_62
    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a:Ljava/lang/Object;

    iput v6, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->b:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6d

    goto :goto_85

    .line 9
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    iget-object v6, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->g:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const/4 v7, 0x0

    iput-object v7, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->a:Ljava/lang/Object;

    iput v5, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->b:I

    invoke-static {p1, v1, v6, p0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$scriptClick(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7d

    goto :goto_85

    .line 10
    :cond_7d
    :goto_7d
    iput v4, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->b:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_86

    :goto_85
    return-object v0

    .line 12
    :cond_86
    :goto_86
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->f:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->access$getOnOpenProductLink$p(Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.b.a (io.bidmachine.iab.mraid.MraidAdRedirectHandler$b$a)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Point;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Point;II)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->a:Landroid/graphics/Point;

    iput p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->b:I

    iput p3, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimulateClick: absolute=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$b$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.c (io.bidmachine.iab.mraid.MraidAdRedirectHandler$c)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->a(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidWebViewController;

.field public final synthetic c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->c:Landroid/graphics/Point;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->c:Landroid/graphics/Point;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->a:I

    if-nez v0, :cond_39

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$c;->c:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Integer;

    move-result-object v2

    :goto_20
    const/4 v3, 0x2

    if-ge v1, v3, :cond_36

    .line 26
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 27
    invoke-static {v3, v0}, Lio/bidmachine/util/UiUtilsKt;->obtainSyntheticMotionEvent(ILandroid/graphics/Point;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 33
    :cond_36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 34
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.iab.mraid.MraidAdRedirectHandler.d (io.bidmachine.iab.mraid.MraidAdRedirectHandler$d)
.class public final Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->b(Landroid/graphics/Point;Lio/bidmachine/iab/mraid/MraidWebViewController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidWebViewController;

.field public final synthetic c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->c:Landroid/graphics/Point;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->c:Landroid/graphics/Point;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;Landroid/graphics/Point;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->a:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->b:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler$d;->c:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyClick(Landroid/graphics/Point;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
