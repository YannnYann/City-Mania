###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DownloadManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher"
    f = "DownloadManagerImpl.kt"
    l = {
        0x102
    }
    m = "head-2Ivn440"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
