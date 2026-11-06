###### Class com.unity3d.ads.core.domain.WebViewScreenCapture (com.unity3d.ads.core.domain.WebViewScreenCapture)
.class public final Lcom/unity3d/ads/core/domain/WebViewScreenCapture;
.super Ljava/lang/Object;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewScreenCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,166:1\n116#2,11:167\n*S KotlinDebug\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture\n*L\n118#1:167,11\n*E\n"
.end annotation


# static fields
.field public static final CACHE_TTL_MS:J = 0x7d0L

.field public static final Companion:Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

.field public static final DEFAULT_QUALITY:I = 0x32

.field public static final DEFAULT_SAMPLING_RATE:D = 1.0

.field public static final DEFAULT_THRESHOLD:I = 0xa

.field public static final PNG_QUALITY:I = 0x64


# instance fields
.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private cacheTimestamp:J

.field private final cacheTtlMs:J

.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private cachedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private evictionJob:Lkotlinx/coroutines/Job;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

.field private final viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;


# direct methods
.method public static synthetic $r8$lambda$SzMUtvbci23nevEmFTBOZi4k748()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->Companion:Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCapturer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elapsedRealtimeMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    .line 34
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    .line 35
    iput-wide p5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J

    .line 36
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;

    .line 39
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 41
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 22

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x7d0

    move-wide v7, v0

    goto :goto_a

    :cond_8
    move-wide/from16 v7, p5

    :goto_a
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_15

    .line 36
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$$ExternalSyntheticLambda0;-><init>()V

    move-object v9, v0

    goto :goto_17

    :cond_15
    move-object/from16 v9, p7

    :goto_17
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v10, v0

    :goto_2a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_33

    :cond_30
    move-object/from16 v10, p8

    goto :goto_2a

    .line 30
    :goto_33
    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .registers 2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getCacheTtlMs$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J

    return-wide v0
.end method

.method public static final synthetic access$getMutex$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lkotlinx/coroutines/sync/Mutex;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getOrCapture(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUploader$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->uploader:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    return-object p0
.end method

.method public static final synthetic access$resolveTargetView(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCachedBitmap$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setCachedViewRef$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
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

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_51

    if-eq v2, v4, :cond_43

    if-ne v2, v3, :cond_3b

    iget-wide v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->J$0:J

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    :try_start_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    goto/16 :goto_aa

    :catchall_38
    move-exception p2

    goto/16 :goto_c1

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_63

    :cond_51
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 121
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_63

    goto :goto_a4

    .line 119
    :cond_63
    :goto_63
    :try_start_63
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->elapsedRealtimeMs:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 120
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_94

    .line 121
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_83

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_84

    :catchall_7e
    move-exception p1

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto :goto_c1

    :cond_83
    move-object v4, v5

    :goto_84
    if-ne v4, p1, :cond_94

    iget-wide v8, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTimestamp:J

    sub-long v8, v6, v8

    iget-wide v10, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTtlMs:J
    :try_end_8c
    .catchall {:try_start_63 .. :try_end_8c} :catchall_7e

    cmp-long v4, v8, v10

    if-gez v4, :cond_94

    .line 125
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    .line 123
    :cond_94
    :try_start_94
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->viewCapturer:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->L$1:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->J$0:J

    iput v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_7e

    if-ne v0, v1, :cond_a5

    :goto_a4
    return-object v1

    :cond_a5
    move-object v1, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v1

    move-wide v1, v6

    .line 118
    :goto_aa
    :try_start_aa
    move-object v3, p2

    check-cast v3, Landroid/graphics/Bitmap;

    .line 124
    iput-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 125
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cachedViewRef:Ljava/lang/ref/WeakReference;

    .line 126
    iput-wide v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->cacheTimestamp:J

    .line 127
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->scheduleEviction()V

    .line 123
    check-cast p2, Landroid/graphics/Bitmap;
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_38

    .line 125
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :goto_c1
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method private final resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_45

    return-object v1

    :cond_45
    :goto_45
    const-string p1, "withContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private final scheduleEviction()V
    .registers 10

    .line 135
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->evictionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 136
    :cond_9
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;

    invoke-direct {v6, p0, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->evictionJob:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "ID",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    iget v2, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 66
    iget v3, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_49

    if-eq v3, v5, :cond_3a

    if-ne v3, v4, :cond_32

    iget-wide v2, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iget v1, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iget v3, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    iget-object v9, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v14, v3

    move-object v3, v0

    move v0, v14

    goto :goto_62

    :cond_49
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    iput-object p0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    move/from16 v0, p2

    iput v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    move-wide/from16 v7, p3

    iput-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iput v5, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    move-object/from16 v3, p1

    invoke-direct {p0, v3, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_61

    goto :goto_73

    :cond_61
    move-object v9, p0

    :goto_62
    check-cast v3, Landroid/view/View;

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->L$0:Ljava/lang/Object;

    iput v0, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->I$0:I

    iput-wide v7, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->D$0:D

    iput v4, v1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    invoke-direct {v9, v3, v1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_74

    :goto_73
    return-object v2

    :cond_74
    move-object v2, v1

    move v1, v0

    move-object v0, v2

    move-wide v2, v7

    .line 66
    :goto_78
    check-cast v0, Landroid/graphics/Bitmap;

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "toString(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x64

    if-lt v1, v4, :cond_8d

    :goto_8b
    move v4, v5

    goto :goto_8f

    :cond_8d
    const/4 v5, 0x0

    goto :goto_8b

    .line 70
    :goto_8f
    iget-object v9, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    const/4 v8, 0x0

    move-object v6, p0

    move v5, v1

    move-wide v1, v2

    move-object v3, v0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;-><init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7
.end method

.method public final getBlackPixelPercentage(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_48

    if-eq v2, v6, :cond_3e

    if-eq v2, v5, :cond_38

    if-ne v2, v4, :cond_30

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_3e
    iget p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_59

    :cond_48
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iput v6, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_58

    goto :goto_7a

    :cond_58
    move-object p1, p0

    :goto_59
    check-cast p3, Landroid/view/View;

    iput-object v3, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->I$0:I

    iput v5, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-direct {p1, p3, v0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_68

    goto :goto_7a

    :cond_68
    move p1, p2

    .line 48
    :goto_69
    check-cast p3, Landroid/graphics/Bitmap;

    .line 50
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;

    invoke-direct {v2, p3, p1, v3}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;-><init>(Landroid/graphics/Bitmap;ILkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7b

    :goto_7a
    return-object v1

    :cond_7b
    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.Companion (com.unity3d.ads.core.domain.WebViewScreenCapture$Companion)
.class public final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;
.super Ljava/lang/Object;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.AnonymousClass1 (com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture"
    f = "WebViewScreenCapture.kt"
    l = {
        0x43,
        0x43
    }
    m = "captureScreenshot"
.end annotation


# instance fields
.field D$0:D

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.AnonymousClass2 (com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebViewScreenCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2"
    f = "WebViewScreenCapture.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $isPng:Z

.field final synthetic $quality:I

.field final synthetic $samplingRate:D

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroid/graphics/Bitmap;",
            "ZI",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iput p5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iput-object p7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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
    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    iget-wide v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iget v5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;-><init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    goto/16 :goto_8e

    :catchall_10
    move-exception p1

    goto/16 :goto_94

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 72
    iget-wide v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iget v5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    :try_start_2e
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v3, v8

    if-ltz v8, :cond_38

    move-object v3, p1

    goto :goto_58

    .line 78
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v3

    invoke-static {v8, v9}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(D)I

    move-result v8

    invoke-static {v8, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(D)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 76
    invoke-static {p1, v8, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    :goto_58
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v1, :cond_67

    .line 85
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v3, v5, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_6c

    .line 87
    :cond_67
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v8, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_6c
    if-eq v3, p1, :cond_71

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_71
    invoke-static {v6}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$getUploader$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "toByteArray(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_83

    const-string v1, "image/png"

    goto :goto_85

    :cond_83
    const-string v1, "image/jpeg"

    :goto_85
    iput v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->label:I

    invoke-virtual {p1, v7, v3, v1, p0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8e

    return-object v0

    .line 92
    :cond_8e
    :goto_8e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_2e .. :try_end_93} :catchall_10

    goto :goto_9d

    :goto_94
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_9d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40311 (com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getBlackPixelPercentage(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture"
    f = "WebViewScreenCapture.kt"
    l = {
        0x31,
        0x31,
        0x32
    }
    m = "getBlackPixelPercentage"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getBlackPixelPercentage(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40322 (com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebViewScreenCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getBlackPixelPercentage(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Double;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2"
    f = "WebViewScreenCapture.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $threshold:I

.field label:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$threshold:I

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
    new-instance p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$threshold:I

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;-><init>(Landroid/graphics/Bitmap;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 50
    iget v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->label:I

    if-nez v0, :cond_3a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 52
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v3, :cond_33

    if-gtz v7, :cond_1b

    goto :goto_33

    :cond_1b
    mul-int p1, v3, v7

    .line 54
    new-array v1, p1, [I

    .line 55
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 56
    iget p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getBlackPixelPercentage$2;->$threshold:I

    invoke-static {v1, p1}, Lcom/unity3d/ads/core/domain/WebViewScreenCaptureKt;->countBlackPixelRatio([II)D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_33
    :goto_33
    const-wide/16 v0, 0x0

    .line 53
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 50
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40331 (com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->getOrCapture(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture"
    f = "WebViewScreenCapture.kt"
    l = {
        0xac,
        0x7b
    }
    m = "getOrCapture"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$getOrCapture$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$getOrCapture(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40341 (com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebViewScreenCapture.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture"
    f = "WebViewScreenCapture.kt"
    l = {
        0x68
    }
    m = "resolveTargetView"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$resolveTargetView(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40352 (com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebViewScreenCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->resolveTargetView(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/view/View;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2"
    f = "WebViewScreenCapture.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field label:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 104
    iget v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->label:I

    if-nez v0, :cond_4f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/AdPlayer;->getWebViewContainer()Lcom/unity3d/ads/adplayer/WebViewContainer;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v0

    :goto_19
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    if-eqz v1, :cond_20

    check-cast p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    goto :goto_21

    :cond_20
    move-object p1, v0

    :goto_21
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 107
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$resolveTargetView$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    move-result-object v1

    sget-object v2, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    if-ne v1, v2, :cond_42

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3e

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_3e
    if-nez v0, :cond_41

    return-object p1

    :cond_41
    return-object v0

    .line 110
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 105
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    const-string v0, "No web view container available to capture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture.C40361 (com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1)
.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebViewScreenCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->scheduleEviction()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewScreenCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,166:1\n116#2,11:167\n*S KotlinDebug\n*F\n+ 1 WebViewScreenCapture.kt\ncom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1\n*L\n138#1:167,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1"
    f = "WebViewScreenCapture.kt"
    l = {
        0x89,
        0xac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;-><init>(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_27

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$getCacheTtlMs$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)J

    move-result-wide v5

    iput v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    goto :goto_4d

    .line 138
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$getMutex$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    .line 121
    iput-object v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$scheduleEviction$1;->label:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4e

    :goto_4d
    return-object v0

    :cond_4e
    move-object v0, p1

    .line 139
    :goto_4f
    :try_start_4f
    invoke-static {v0, v4}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$setCachedBitmap$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Landroid/graphics/Bitmap;)V

    .line 140
    invoke-static {v0, v4}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$setCachedViewRef$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/ref/WeakReference;)V

    .line 141
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_5d

    .line 125
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_5d
    move-exception p1

    .line 125
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.WebViewScreenCapture$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.WebViewScreenCapture$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/WebViewScreenCapture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->$r8$lambda$SzMUtvbci23nevEmFTBOZi4k748()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
