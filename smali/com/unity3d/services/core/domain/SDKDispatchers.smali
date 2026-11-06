###### Class com.unity3d.services.core.domain.SDKDispatchers (com.unity3d.services.core.domain.SDKDispatchers)
.class public final Lcom/unity3d/services/core/domain/SDKDispatchers;
.super Ljava/lang/Object;
.source "SDKDispatchers.kt"

# interfaces
.implements Lcom/unity3d/services/core/domain/ISDKDispatchers;


# instance fields
.field private final default:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final main:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->default:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 25
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->main:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public getDefault()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->default:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public getIo()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public getMain()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->main:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method
