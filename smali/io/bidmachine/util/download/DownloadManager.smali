###### Class io.bidmachine.util.download.DownloadManager (io.bidmachine.util.download.DownloadManager)
.class public interface abstract Lio/bidmachine/util/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/download/DownloadManager$DownloadTask;,
        Lio/bidmachine/util/download/DownloadManager$DownloadData;,
        Lio/bidmachine/util/download/DownloadManager$CallData;
    }
.end annotation


# virtual methods
.method public abstract download-moChb0s(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;
.end method

.method public abstract getActiveDownloadTask(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;
.end method

.method public abstract getHeadCallData-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$CallData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class io.bidmachine.util.download.DownloadManager.CallData (io.bidmachine.util.download.DownloadManager$CallData)
.class public final Lio/bidmachine/util/download/DownloadManager$CallData;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallData"
.end annotation


# instance fields
.field public final executionTime:J

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    .line 35
    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/util/download/DownloadManager$CallData;-><init>(JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic optLongHeader$default(Lio/bidmachine/util/download/DownloadManager$CallData;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 38
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManager$CallData;->optLongHeader(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic optStringHeader$default(Lio/bidmachine/util/download/DownloadManager$CallData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 42
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManager$CallData;->optStringHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final contentLength()Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 47
    const-string v2, "Content-Length"

    invoke-static {p0, v2, v0, v1, v0}, Lio/bidmachine/util/download/DownloadManager$CallData;->optLongHeader$default(Lio/bidmachine/util/download/DownloadManager$CallData;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final contentType()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 51
    const-string v2, "Content-Type"

    invoke-static {p0, v2, v0, v1, v0}, Lio/bidmachine/util/download/DownloadManager$CallData;->optStringHeader$default(Lio/bidmachine/util/download/DownloadManager$CallData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/download/DownloadManager$CallData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/download/DownloadManager$CallData;

    iget-wide v3, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    iget-wide v5, p1, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    iget-object p1, p1, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getExecutionTime-UwyO8pc()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final optLongHeader(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1f

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1f

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object p1

    :cond_1f
    :goto_1f
    return-object p2
.end method

.method public final optStringHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_19

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_18

    goto :goto_19

    :cond_18
    return-object p1

    :cond_19
    :goto_19
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallData(executionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->executionTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$CallData;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManager.DownloadData (io.bidmachine.util.download.DownloadManager$DownloadData)
.class public final Lio/bidmachine/util/download/DownloadManager$DownloadData;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadData"
.end annotation


# instance fields
.field public final executionTime:J

.field public final output:Ljava/io/File;


# direct methods
.method public constructor <init>(JLjava/io/File;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    .line 29
    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/util/download/DownloadManager$DownloadData;-><init>(JLjava/io/File;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    iget-wide v3, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    iget-wide v5, p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    iget-object p1, p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getExecutionTime-UwyO8pc()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    return-wide v0
.end method

.method public final getOutput()Ljava/io/File;
    .registers 2

    .line 29
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadData(executionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->executionTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadData;->output:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManager.DownloadTask (io.bidmachine.util.download.DownloadManager$DownloadTask)
.class public final Lio/bidmachine/util/download/DownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadTask"
.end annotation


# instance fields
.field public final deferred:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/Deferred;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deferred"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    iget-object p1, p1, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getDeferred()Lkotlinx/coroutines/Deferred;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
