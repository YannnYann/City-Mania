###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Ljava/io/File;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4"
    f = "MediaFileCacheManager.kt"
    l = {
        0xb5,
        0xb8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->$mediaUrlList:Ljava/util/List;

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
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->$mediaUrlList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "+",
            "Ljava/io/File;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 180
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_36

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->$mediaUrlList:Ljava/util/List;

    iput v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->label:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileInternal-gIAlu-s(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_36

    goto :goto_59

    .line 182
    :cond_36
    :goto_36
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3e
    move-object v1, p1

    :goto_3f
    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_67

    iget-object v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    .line 183
    invoke-static {v1}, Lio/bidmachine/util/file/FileUtilsKt;->existsSafely(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 184
    invoke-static {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v3

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;->label:I

    invoke-virtual {v3, v1, p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->trackUsage(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5a

    :goto_59
    return-object v0

    :cond_5a
    move-object v0, p1

    move-object p1, v1

    :goto_5c
    check-cast p1, Lkotlin/Unit;

    move-object p1, v0

    goto :goto_67

    .line 186
    :cond_60
    invoke-static {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->deleteMediaFileMetadata(Ljava/io/File;)V

    .line 189
    :cond_67
    :goto_67
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
