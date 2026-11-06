###### Class io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager"
    f = "MediaFileCacheManager.kt"
    l = {
        0xb4
    }
    m = "getMediaFile-gIAlu-s"
.end annotation


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->result:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
