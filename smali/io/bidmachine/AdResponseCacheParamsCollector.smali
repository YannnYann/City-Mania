###### Class io.bidmachine.AdResponseCacheParamsCollector (io.bidmachine.AdResponseCacheParamsCollector)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdResponseCacheParamsCollector$Callback;,
        Lio/bidmachine/AdResponseCacheParamsCollector$a;,
        Lio/bidmachine/AdResponseCacheParamsCollector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/AdResponseCacheParamsCollector$Companion;

.field public static final DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/TrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AD_RESPONSE_CACHE_EVENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/TrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AdResponseCacheParamsCollector"


# instance fields
.field private final adResponseCacheEnabledEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/TrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field private final adResponseCacheParamsAdapter:Lio/bidmachine/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/internal/i;"
        }
    .end annotation
.end field

.field private final adaptiveResourcesCacheEnabledEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/TrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field private final adaptiveResourcesCacheParamsAdapter:Lio/bidmachine/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/internal/i;"
        }
    .end annotation
.end field

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final logger:Lio/bidmachine/utils/log/UtilsLoggerInstance;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final taskManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lio/bidmachine/AdResponseCacheParamsCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/AdResponseCacheParamsCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/AdResponseCacheParamsCollector;->Companion:Lio/bidmachine/AdResponseCacheParamsCollector$Companion;

    .line 1
    sget-object v2, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 2
    sget-object v3, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 3
    sget-object v4, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 4
    sget-object v5, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    .line 5
    sget-object v6, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    .line 6
    sget-object v7, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    .line 7
    sget-object v8, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    .line 9
    sget-object v10, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    sget-object v9, Lio/bidmachine/TrackEventType;->ImpressionOpportunity:Lio/bidmachine/TrackEventType;

    filled-new-array/range {v2 .. v10}, [Lio/bidmachine/TrackEventType;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdResponseCacheParamsCollector;->DEFAULT_AD_RESPONSE_CACHE_EVENTS:Ljava/util/List;

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .line 33
    sget-object v4, Lio/bidmachine/TrackEventType;->BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

    move-object v11, v10

    sget-object v10, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    filled-new-array/range {v2 .. v11}, [Lio/bidmachine/TrackEventType;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdResponseCacheParamsCollector;->DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;)V
    .registers 12

    .line 2
    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .registers 13

    .line 3
    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheEnabledEvents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 5
    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheEnabledEvents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptiveResourcesCacheEnabledEvents"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;",
            "Lio/bidmachine/internal/i;",
            ")V"
        }
    .end annotation

    .line 6
    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheEnabledEvents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptiveResourcesCacheEnabledEvents"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheParamsAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/TrackEventType;",
            ">;",
            "Lio/bidmachine/internal/i;",
            "Lio/bidmachine/internal/i;",
            ")V"
        }
    .end annotation

    const-string v0, "mainDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheEnabledEvents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptiveResourcesCacheEnabledEvents"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseCacheParamsAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptiveResourcesCacheParamsAdapter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    iput-object p2, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 10
    iput-object p3, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adResponseCacheEnabledEvents:Ljava/util/List;

    .line 11
    iput-object p4, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adaptiveResourcesCacheEnabledEvents:Ljava/util/List;

    .line 12
    iput-object p5, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adResponseCacheParamsAdapter:Lio/bidmachine/internal/i;

    .line 15
    iput-object p6, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adaptiveResourcesCacheParamsAdapter:Lio/bidmachine/internal/i;

    .line 20
    new-instance p1, Lio/bidmachine/AdResponseCacheParamsCollector$b;

    invoke-direct {p1, p0}, Lio/bidmachine/AdResponseCacheParamsCollector$b;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->taskManager$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lio/bidmachine/utils/log/UtilsLoggerInstance;

    invoke-direct {p1}, Lio/bidmachine/utils/log/UtilsLoggerInstance;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->logger:Lio/bidmachine/utils/log/UtilsLoggerInstance;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_e

    .line 25
    sget-object p1, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    :cond_e
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1c

    .line 26
    sget-object p2, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    :cond_1c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_22

    .line 27
    sget-object p3, Lio/bidmachine/AdResponseCacheParamsCollector;->DEFAULT_AD_RESPONSE_CACHE_EVENTS:Ljava/util/List;

    :cond_22
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_28

    .line 28
    sget-object p4, Lio/bidmachine/AdResponseCacheParamsCollector;->DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS:Ljava/util/List;

    :cond_28
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3a

    .line 29
    new-instance p5, Lio/bidmachine/AdResponseCacheParamsAdapter;

    .line 30
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object p8

    const-string v0, "get()"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p5, p8}, Lio/bidmachine/AdResponseCacheParamsAdapter;-><init>(Lio/bidmachine/internal/a;)V

    :cond_3a
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_49

    .line 34
    new-instance p6, Lio/bidmachine/internal/b;

    .line 35
    invoke-static {}, Lio/bidmachine/rendering/Rendering;->getMediaFileCacheManagerProvider()Lkotlin/jvm/functions/Function0;

    move-result-object p7

    const/4 p8, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-direct {p6, p8, p7, v0, p8}, Lio/bidmachine/internal/b;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_49
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 37
    invoke-direct/range {p2 .. p8}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;)V

    return-void
.end method

.method public static final synthetic access$getAdResponseCacheEnabledEvents$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adResponseCacheEnabledEvents:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getAdResponseCacheParamsAdapter$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/internal/i;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adResponseCacheParamsAdapter:Lio/bidmachine/internal/i;

    return-object p0
.end method

.method public static final synthetic access$getAdaptiveResourcesCacheEnabledEvents$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adaptiveResourcesCacheEnabledEvents:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getAdaptiveResourcesCacheParamsAdapter$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/internal/i;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->adaptiveResourcesCacheParamsAdapter:Lio/bidmachine/internal/i;

    return-object p0
.end method

.method public static final synthetic access$getIoDispatcher$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/utils/log/UtilsLoggerInstance;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->logger:Lio/bidmachine/utils/log/UtilsLoggerInstance;

    return-object p0
.end method

.method public static final synthetic access$getMainDispatcher$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method private final getTaskManager()Lio/bidmachine/util/taskmanager/TaskManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseCacheParamsCollector;->taskManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/taskmanager/TaskManager;

    return-object v0
.end method


# virtual methods
.method public final collect(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponseCacheParamsCollector$Callback;)V
    .registers 6

    const-string v0, "trackEventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdResponseCacheParamsCollector;->getTaskManager()Lio/bidmachine/util/taskmanager/TaskManager;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdResponseCacheParamsCollector$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/AdResponseCacheParamsCollector$a;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponseCacheParamsCollector$Callback;)V

    invoke-interface {v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.Callback (io.bidmachine.AdResponseCacheParamsCollector$Callback)
.class public interface abstract Lio/bidmachine/AdResponseCacheParamsCollector$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseCacheParamsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCollected(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.Companion (io.bidmachine.AdResponseCacheParamsCollector$Companion)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseCacheParamsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdResponseCacheParamsCollector$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.a (io.bidmachine.AdResponseCacheParamsCollector$a)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$a;
.super Lio/bidmachine/util/taskmanager/SuspendCancellableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseCacheParamsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/TrackEventType;

.field public final b:Lio/bidmachine/AdResponse;

.field public final c:Lio/bidmachine/AdResponseCacheParamsCollector$Callback;

.field public final synthetic d:Lio/bidmachine/AdResponseCacheParamsCollector;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseCacheParamsCollector;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponseCacheParamsCollector$Callback;)V
    .registers 6

    const-string v0, "trackEventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->d:Lio/bidmachine/AdResponseCacheParamsCollector;

    .line 2
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->a:Lio/bidmachine/TrackEventType;

    .line 4
    iput-object p3, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->b:Lio/bidmachine/AdResponse;

    .line 5
    iput-object p4, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->c:Lio/bidmachine/AdResponseCacheParamsCollector$Callback;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/AdResponseCacheParamsCollector$a;)Lio/bidmachine/AdResponseCacheParamsCollector$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->c:Lio/bidmachine/AdResponseCacheParamsCollector$Callback;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/AdResponseCacheParamsCollector$a;)Lio/bidmachine/TrackEventType;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->a:Lio/bidmachine/TrackEventType;

    return-object p0
.end method


# virtual methods
.method public runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    instance-of p1, p2, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;

    iget v0, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    goto :goto_18

    :cond_13
    new-instance p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;

    invoke-direct {p1, p0, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_62

    if-eq v1, v4, :cond_4a

    if-eq v1, v3, :cond_39

    if-ne v1, v2, :cond_31

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_125

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->a:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/AdResponseCacheParamsCollector$a;

    :try_start_45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_ef

    goto/16 :goto_e5

    .line 2
    :cond_4a
    iget-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v6, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->b:Ljava/lang/Object;

    check-cast v7, Lio/bidmachine/AdResponseCacheParamsCollector;

    iget-object v8, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->a:Ljava/lang/Object;

    check-cast v8, Lio/bidmachine/AdResponseCacheParamsCollector$a;

    :try_start_5e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_a6

    goto :goto_96

    .line 3
    :cond_62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v7, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->d:Lio/bidmachine/AdResponseCacheParamsCollector;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsJVMKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-static {v7}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getAdResponseCacheEnabledEvents$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Ljava/util/List;

    move-result-object p2

    iget-object v6, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->a:Lio/bidmachine/TrackEventType;

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 8
    :try_start_77
    iget-object p2, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a;->b:Lio/bidmachine/AdResponse;

    if-eqz p2, :cond_99

    invoke-static {v7}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getAdResponseCacheParamsAdapter$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/internal/i;

    move-result-object v6

    iput-object p0, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->a:Ljava/lang/Object;

    iput-object v7, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->b:Ljava/lang/Object;

    iput-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->c:Ljava/lang/Object;

    iput-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->d:Ljava/lang/Object;

    iput-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->e:Ljava/lang/Object;

    iput v4, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    invoke-interface {v6, p2, p1}, Lio/bidmachine/internal/i;->getCacheParams(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_a3

    if-ne p2, v0, :cond_93

    goto/16 :goto_124

    :cond_93
    move-object v8, p0

    move-object v4, v1

    move-object v6, v4

    .line 9
    :goto_96
    :try_start_96
    check-cast p2, Ljava/util/Map;

    goto :goto_9d

    :cond_99
    move-object v8, p0

    move-object v4, v1

    move-object v6, v4

    move-object p2, v5

    .line 10
    :goto_9d
    invoke-static {v1, p2}, Lio/bidmachine/util/UtilsKt;->putAllIfNotEmpty(Ljava/util/Map;Ljava/util/Map;)V

    .line 13
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a2
    .catchall {:try_start_96 .. :try_end_a2} :catchall_a6

    goto :goto_a6

    :catchall_a3
    move-object v8, p0

    move-object v4, v1

    move-object v6, v4

    :catchall_a6
    :goto_a6
    move-object v1, v4

    move-object v4, v8

    goto :goto_ab

    :cond_a9
    move-object v4, p0

    move-object v6, v1

    .line 15
    :goto_ab
    invoke-static {v7}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getAdaptiveResourcesCacheEnabledEvents$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Ljava/util/List;

    move-result-object p2

    iget-object v8, v4, Lio/bidmachine/AdResponseCacheParamsCollector$a;->a:Lio/bidmachine/TrackEventType;

    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f3

    .line 18
    :try_start_b7
    iget-object p2, v4, Lio/bidmachine/AdResponseCacheParamsCollector$a;->b:Lio/bidmachine/AdResponse;

    if-eqz p2, :cond_e8

    invoke-virtual {p2}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object p2

    if-eqz p2, :cond_e8

    invoke-interface {p2}, Lio/bidmachine/models/AdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object p2

    if-eqz p2, :cond_e8

    invoke-virtual {p2}, Lio/bidmachine/models/AdObjectParams;->getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;

    move-result-object p2

    if-eqz p2, :cond_e8

    .line 19
    invoke-static {v7}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getAdaptiveResourcesCacheParamsAdapter$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/internal/i;

    move-result-object v7

    iput-object v4, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->a:Ljava/lang/Object;

    iput-object v6, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->b:Ljava/lang/Object;

    iput-object v1, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->c:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->d:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->e:Ljava/lang/Object;

    iput v3, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    invoke-interface {v7, p2, p1}, Lio/bidmachine/internal/i;->getCacheParams(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_e1
    .catchall {:try_start_b7 .. :try_end_e1} :catchall_f1

    if-ne p2, v0, :cond_e4

    goto :goto_124

    :cond_e4
    move-object v3, v6

    .line 20
    :goto_e5
    :try_start_e5
    check-cast p2, Ljava/util/Map;

    goto :goto_ea

    :cond_e8
    move-object p2, v5

    move-object v3, v6

    .line 21
    :goto_ea
    invoke-static {v1, p2}, Lio/bidmachine/util/UtilsKt;->putAllIfNotEmpty(Ljava/util/Map;Ljava/util/Map;)V

    .line 25
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_ef

    :catchall_ef
    :goto_ef
    move-object v6, v3

    goto :goto_f3

    :catchall_f1
    move-object v3, v6

    goto :goto_ef

    .line 26
    :cond_f3
    :goto_f3
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsJVMKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 44
    iget-object v1, v4, Lio/bidmachine/AdResponseCacheParamsCollector$a;->d:Lio/bidmachine/AdResponseCacheParamsCollector;

    invoke-static {v1}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getLogger$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lio/bidmachine/utils/log/UtilsLoggerInstance;

    move-result-object v1

    new-instance v3, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;

    invoke-direct {v3, v4, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Ljava/util/Map;)V

    const-string v6, "AdResponseCacheParamsCollector"

    invoke-virtual {v1, v6, v3}, Lio/bidmachine/utils/log/UtilsLoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 46
    iget-object v1, v4, Lio/bidmachine/AdResponseCacheParamsCollector$a;->d:Lio/bidmachine/AdResponseCacheParamsCollector;

    invoke-static {v1}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getMainDispatcher$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;

    invoke-direct {v3, v4, p2, v5}, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->a:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->b:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->c:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->d:Ljava/lang/Object;

    iput-object v5, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->e:Ljava/lang/Object;

    iput v2, p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_125

    :goto_124
    return-object v0

    .line 49
    :cond_125
    :goto_125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.a.C1099a (io.bidmachine.AdResponseCacheParamsCollector$a$a)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$a$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseCacheParamsCollector$a;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lio/bidmachine/AdResponseCacheParamsCollector$a;

.field public h:I


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->g:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->f:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->h:I

    iget-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$a;->g:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/AdResponseCacheParamsCollector$a;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.a.b (io.bidmachine.AdResponseCacheParamsCollector$a$b)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseCacheParamsCollector$a;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdResponseCacheParamsCollector$a;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Ljava/util/Map;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;->a:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    iput-object p2, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;->b:Ljava/util/Map;

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

    iget-object v1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;->a:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    invoke-static {v1}, Lio/bidmachine/AdResponseCacheParamsCollector$a;->b(Lio/bidmachine/AdResponseCacheParamsCollector$a;)Lio/bidmachine/TrackEventType;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Collected cache params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;->b:Ljava/util/Map;

    invoke-static {v1}, Lio/bidmachine/util/UtilsKt;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseCacheParamsCollector$a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.a.c (io.bidmachine.AdResponseCacheParamsCollector$a$c)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$a$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseCacheParamsCollector$a;->runTask(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/AdResponseCacheParamsCollector$a;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->b:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    iput-object p2, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->c:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;

    iget-object v0, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->b:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    iget-object v1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->c:Ljava/util/Map;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;-><init>(Lio/bidmachine/AdResponseCacheParamsCollector$a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->b:Lio/bidmachine/AdResponseCacheParamsCollector$a;

    invoke-static {p1}, Lio/bidmachine/AdResponseCacheParamsCollector$a;->a(Lio/bidmachine/AdResponseCacheParamsCollector$a;)Lio/bidmachine/AdResponseCacheParamsCollector$Callback;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdResponseCacheParamsCollector$a$c;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Lio/bidmachine/AdResponseCacheParamsCollector$Callback;->onCollected(Ljava/util/Map;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.AdResponseCacheParamsCollector.b (io.bidmachine.AdResponseCacheParamsCollector$b)
.class public final Lio/bidmachine/AdResponseCacheParamsCollector$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdResponseCacheParamsCollector;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseCacheParamsCollector;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$b;->a:Lio/bidmachine/AdResponseCacheParamsCollector;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    iget-object v1, p0, Lio/bidmachine/AdResponseCacheParamsCollector$b;->a:Lio/bidmachine/AdResponseCacheParamsCollector;

    invoke-static {v1}, Lio/bidmachine/AdResponseCacheParamsCollector;->access$getIoDispatcher$p(Lio/bidmachine/AdResponseCacheParamsCollector;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseCacheParamsCollector$b;->a()Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    move-result-object v0

    return-object v0
.end method
