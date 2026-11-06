###### Class com.unity3d.ads.core.domain.AndroidScreenshotUploader (com.unity3d.ads.core.domain.AndroidScreenshotUploader)
.class public final Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;
.super Ljava/lang/Object;
.source "AndroidScreenshotUploader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

.field public static final SCREENSHOT_PATH:Ljava/lang/String; = "adviewer/screenshots"

.field public static final SESSION_TOKEN_HEADER:Ljava/lang/String; = "uads_session_token"

.field private static final UPLOAD_TIMEOUT_MS:I = 0x2710


# instance fields
.field private final httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->Companion:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/HttpClientProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 6

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

    .line 25
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 26
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getHttpClientProvider$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/domain/HttpClientProvider;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->httpClientProvider:Lcom/unity3d/ads/core/domain/HttpClientProvider;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/log/Logger;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidScreenshotUploader.Companion (com.unity3d.ads.core.domain.AndroidScreenshotUploader$Companion)
.class public final Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;
.super Ljava/lang/Object;
.source "AndroidScreenshotUploader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.AndroidScreenshotUploader.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidScreenshotUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2"
    f = "AndroidScreenshotUploader.kt"
    l = {
        0x32,
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bytes:[B

.field final synthetic $contentType:Ljava/lang/String;

.field final synthetic $id:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v3, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 29
    iget v0, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    if-eq v0, v1, :cond_1f

    if-ne v0, v2, :cond_17

    :try_start_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception v0

    goto/16 :goto_c5

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/services/core/network/model/HttpRequest;

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_14

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_b3

    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    :try_start_2e
    iget-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 31
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v7, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 36
    iget-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v4}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v4

    invoke-interface {v4}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGatewayUrl()Ljava/lang/String;

    move-result-object v8

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adviewer/screenshots/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 38
    sget-object v10, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 39
    iget-object v11, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$bytes:[B

    .line 41
    const-string v4, "Content-Type"

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 42
    const-string v5, "uads_session_token"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v4, v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    .line 44
    iget-object v15, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$contentType:Ljava/lang/String;

    const v26, 0x3e360

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2710

    const/16 v19, 0x2710

    const/16 v20, 0x2710

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 35
    invoke-direct/range {v7 .. v27}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    iget-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getHttpClientProvider$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/domain/HttpClientProvider;

    move-result-object v0

    iput-object v7, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    iput v1, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    invoke-interface {v0, v3}, Lcom/unity3d/ads/core/domain/HttpClientProvider;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_b2

    goto :goto_c3

    :cond_b2
    move-object v1, v7

    :goto_b3
    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->L$0:Ljava/lang/Object;

    iput v2, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/core/network/core/HttpClient$DefaultImpls;->execute$default(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/services/core/network/model/HttpRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_c1} :catch_14

    if-ne v0, v6, :cond_c4

    :goto_c3
    return-object v6

    :cond_c4
    return-object v0

    .line 52
    :goto_c5
    iget-object v1, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->access$getLogger$p(Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screenshot upload failed for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader$invoke$2;->$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
