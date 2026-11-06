###### Class com.unity3d.ads.core.domain.AndroidViewCapturer (com.unity3d.ads.core.domain.AndroidViewCapturer)
.class public final Lcom/unity3d/ads/core/domain/AndroidViewCapturer;
.super Ljava/lang/Object;
.source "AndroidViewCapturer.kt"


# instance fields
.field private final currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final sdkInt:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V
    .registers 5

    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    .line 35
    iput p3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->sdkInt:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    .line 35
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V

    return-void
.end method

.method public static final synthetic access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentActivityDataSource$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->currentActivityDataSource:Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    return-object p0
.end method

.method public static final synthetic access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->sdkInt:I

    return p0
.end method

.method private final activity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    :goto_4
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    .line 82
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 83
    :cond_f
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_4

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidViewCapturer.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidViewCapturer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidViewCapturer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidViewCapturer.kt\ncom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,88:1\n1#2:89\n426#3,11:90\n*S KotlinDebug\n*F\n+ 1 AndroidViewCapturer.kt\ncom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2\n*L\n66#1:90,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2"
    f = "AndroidViewCapturer.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/Window;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I

    move-result p1

    const/16 v1, 0x1a

    const/16 v3, 0x29

    if-lt p1, v1, :cond_113

    .line 45
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez p1, :cond_ed

    if-lez v1, :cond_ed

    .line 57
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getCurrentActivityDataSource$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-interface {v3}, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_9b

    .line 58
    :cond_56
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_67

    :cond_66
    move-object v3, v4

    :goto_67
    if-nez v3, :cond_9b

    .line 59
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const-string v6, "getRootView(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_82

    :cond_81
    move-object v3, v4

    :goto_82
    if-nez v3, :cond_9b

    .line 60
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_90

    :cond_8f
    move-object v3, v4

    :goto_90
    if-eqz v3, :cond_93

    goto :goto_9b

    .line 57
    :cond_93
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string v0, "No window available to capture the ad view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9b
    :goto_9b
    const/4 v4, 0x2

    .line 62
    new-array v4, v4, [I

    .line 63
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 64
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v4, v6

    aget v4, v4, v2

    add-int v7, v6, p1

    add-int v8, v4, v1

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 426
    iput-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->label:I

    .line 427
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 67
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;

    invoke-direct {v2, v1, p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/graphics/Bitmap;)V

    .line 75
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    invoke-static {v3, v5, p1, v2, v4}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 435
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_e9

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_e9
    if-ne p1, v0, :cond_ec

    return-object v0

    :cond_ec
    return-object p1

    .line 50
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target view not laid out yet ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x78

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_113
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen capture requires API 26+ (got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2$2$1 (com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2$2$1)
.class final Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;
.super Ljava/lang/Object;
.source "AndroidViewCapturer.kt"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .registers 6

    if-nez p1, :cond_10

    .line 69
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_10
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PixelCopy failed with result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
