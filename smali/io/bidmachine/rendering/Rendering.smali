###### Class io.bidmachine.rendering.Rendering (io.bidmachine.rendering.Rendering)
.class public final Lio/bidmachine/rendering/Rendering;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/rendering/Rendering;

.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Lio/bidmachine/rendering/utils/UserAgentProvider;

.field public static c:Lio/bidmachine/rendering/utils/NetworkRequestBuilder;

.field public static volatile d:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/rendering/Rendering;

    invoke-direct {v0}, Lio/bidmachine/rendering/Rendering;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/Rendering;->INSTANCE:Lio/bidmachine/rendering/Rendering;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/rendering/Rendering;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMediaFileCacheManagerProvider()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->d:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getNetworkRequestBuilder()Lio/bidmachine/rendering/utils/NetworkRequestBuilder;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->c:Lio/bidmachine/rendering/utils/NetworkRequestBuilder;

    return-object v0
.end method

.method public static final getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->b:Lio/bidmachine/rendering/utils/UserAgentProvider;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/rendering/utils/UserAgentProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final setUserAgentProvider(Lio/bidmachine/rendering/utils/UserAgentProvider;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/rendering/Rendering;->b:Lio/bidmachine/rendering/utils/UserAgentProvider;

    return-void
.end method


# virtual methods
.method public final createRepository(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/rendering/Repository;
    .registers 5

    const-string v0, "mediaFileCacheManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a;

    .line 2
    new-instance v1, Lio/bidmachine/rendering/Rendering$a;

    invoke-direct {v1, p1}, Lio/bidmachine/rendering/Rendering$a;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    sget-object v2, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {v2}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 6
    sget-object v2, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v2

    .line 7
    invoke-direct {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/repository/a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lio/bidmachine/rendering/utils/NetworkRequestBuilder;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/rendering/utils/NetworkRequestBuilder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkRequestBuilder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaFileCacheManagerProvider"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lio/bidmachine/rendering/Rendering;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    .line 4
    :cond_1a
    sput-object p2, Lio/bidmachine/rendering/Rendering;->c:Lio/bidmachine/rendering/utils/NetworkRequestBuilder;

    .line 5
    sput-object p3, Lio/bidmachine/rendering/Rendering;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setLoggingEnabled(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/rendering/internal/t;->a(Z)V

    .line 2
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidLog;->setEnabled(Z)V

    return-void
.end method

###### Class io.bidmachine.rendering.Rendering.a (io.bidmachine.rendering.Rendering$a)
.class public final Lio/bidmachine/rendering/Rendering$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/Rendering;->createRepository(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/rendering/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/Rendering$a;->a:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/Rendering$a;->a:Lio/bidmachine/util/cache/MediaFileCacheManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/Rendering$a;->a()Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v0

    return-object v0
.end method
