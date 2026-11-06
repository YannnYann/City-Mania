###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileInternal-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,595:1\n179#2,2:596\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2\n*L\n206#1:596,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0xe3,
        0xe8,
        0xeb,
        0xfb
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
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

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
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;-><init>(Ljava/util/List;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 194
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_49

    if-eq v1, v5, :cond_3d

    if-eq v1, v4, :cond_33

    if-eq v1, v3, :cond_29

    if-ne v1, v2, :cond_21

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    move-object v11, p0

    goto/16 :goto_1a3

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    goto/16 :goto_134

    :cond_33
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    goto/16 :goto_125

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    move-object v11, p0

    goto/16 :goto_110

    :cond_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 195
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 196
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Url list is empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 199
    :cond_6a
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getConfiguration$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 203
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 204
    new-instance v7, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;

    iget-object v8, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-direct {v7, v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    invoke-static {v1, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlin/Pair;

    .line 207
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_87

    goto :goto_b2

    :cond_b1
    move-object v7, v6

    .line 206
    :goto_b2
    check-cast v7, Lkotlin/Pair;

    if-eqz v7, :cond_d5

    .line 210
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p1

    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;

    invoke-direct {v0, v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;-><init>(Lkotlin/Pair;)V

    const-string v1, "MediaFileCacheManager"

    invoke-interface {p1, v1, v0}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 211
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 217
    :cond_d5
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v6

    :cond_dc
    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 218
    iget-object v9, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-virtual {v9, v8}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_f1

    goto :goto_dc

    .line 219
    :cond_f1
    iget-object v7, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getDownloadManager$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/download/DownloadManager;

    move-result-object v7

    invoke-interface {v7, v8, v9}, Lio/bidmachine/util/download/DownloadManager;->getActiveDownloadTask(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    move-result-object v7

    if-eqz v7, :cond_dc

    :cond_fd
    move-object v9, v7

    if-eqz v9, :cond_115

    .line 227
    iget-object v8, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput v5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->label:I

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v11, p0

    invoke-static/range {v8 .. v13}, Lio/bidmachine/util/cache/MediaFileCacheManager;->awaitDownloadTask-0E7RQCE$default(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_110

    goto/16 :goto_1a2

    :cond_110
    :goto_110
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    :cond_115
    move-object v11, p0

    .line 232
    iget-object v1, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p1, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->L$0:Ljava/lang/Object;

    iput v4, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->label:I

    invoke-static {v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$onCachingStart(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_124

    goto/16 :goto_1a2

    :cond_124
    move-object v1, p1

    .line 235
    :goto_125
    iget-object p1, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v4, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->$mediaUrlList:Ljava/util/List;

    iput-object v1, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->L$0:Ljava/lang/Object;

    iput v3, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->label:I

    invoke-static {p1, v1, v4, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$pickRemoteMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_134

    goto :goto_1a2

    .line 194
    :cond_134
    :goto_134
    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 236
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 238
    iget-object v4, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-virtual {v4, v3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_14f

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_14f

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_14f
    if-nez v4, :cond_17b

    .line 242
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t create file for media file by url ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 244
    :cond_17b
    iget-object v5, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v5}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getDownloadManager$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/download/DownloadManager;

    move-result-object v5

    .line 247
    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getConnectionConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->getDownloadRequestTimeout-UwyO8pc()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v1

    .line 244
    invoke-interface {v5, v3, v4, v1}, Lio/bidmachine/util/download/DownloadManager;->download-moChb0s(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    move-result-object v1

    .line 251
    iget-object v3, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    new-instance v4, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;

    invoke-direct {v4, v3, p1, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->L$0:Ljava/lang/Object;

    iput v2, v11, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->label:I

    invoke-static {v3, v1, v4, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$awaitDownloadTask-0E7RQCE(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1a3

    :goto_1a2
    return-object v0

    :cond_1a3
    :goto_1a3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2.AnonymousClass1 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cachedMediaFile:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Pair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;->$cachedMediaFile:Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 210
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$1;->$cachedMediaFile:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2.AnonymousClass2 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0xfc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->$remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->$remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/bidmachine/util/download/DownloadManager$DownloadData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->invoke(Lio/bidmachine/util/download/DownloadManager$DownloadData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 251
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    if-ne v2, v3, :cond_17

    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_3c

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    .line 252
    iget-object v4, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v4}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v4

    .line 253
    invoke-virtual {v2}, Lio/bidmachine/util/download/DownloadManager$DownloadData;->getOutput()Ljava/io/File;

    move-result-object v5

    .line 252
    iput-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->label:I

    invoke-virtual {v4, v5, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3b

    return-object v1

    :cond_3b
    move-object v1, v2

    :goto_3c
    move-object v4, v3

    check-cast v4, Lio/bidmachine/util/cache/MediaFileMetadata;

    if-nez v4, :cond_44

    .line 254
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 255
    :cond_44
    invoke-virtual {v4}, Lio/bidmachine/util/cache/MediaFileMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 257
    sget-object v3, Lio/bidmachine/util/MimeTypes;->INSTANCE:Lio/bidmachine/util/MimeTypes;

    invoke-virtual {v3, v2}, Lio/bidmachine/util/MimeTypes;->isVisual(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    :goto_50
    move-object v6, v2

    goto :goto_6e

    .line 258
    :cond_52
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->$remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    invoke-virtual {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/bidmachine/util/MimeTypes;->isVisual(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->$remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    invoke-virtual {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    .line 259
    :cond_65
    invoke-virtual {v1}, Lio/bidmachine/util/download/DownloadManager$DownloadData;->getOutput()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    .line 261
    :goto_6e
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v2

    .line 264
    iget-object v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$2;->$remoteMediaFile:Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getPingTime-UwyO8pc()J

    move-result-wide v11

    .line 265
    invoke-virtual {v1}, Lio/bidmachine/util/download/DownloadManager$DownloadData;->getExecutionTime-UwyO8pc()J

    move-result-wide v13

    const/16 v17, 0xcd

    const/16 v18, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 262
    invoke-static/range {v4 .. v18}, Lio/bidmachine/util/cache/MediaFileMetadata;->copy-77cDFVw$default(Lio/bidmachine/util/cache/MediaFileMetadata;Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object v1

    .line 261
    invoke-virtual {v2, v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->saveMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadata;)V

    .line 268
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,595:1\n1#2:596\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 204
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;->invoke(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "mediaUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2$cachedMediaFile$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method
