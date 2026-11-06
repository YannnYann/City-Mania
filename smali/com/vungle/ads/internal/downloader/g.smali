###### Class com.vungle.ads.internal.downloader.g (com.vungle.ads.internal.downloader.g)
.class public final Lcom/vungle/ads/internal/downloader/g;
.super Lcom/vungle/ads/internal/task/i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/i;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/l;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/e;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V
    .registers 4

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/g;->a:Lcom/vungle/ads/internal/downloader/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/g;->b:Lcom/vungle/ads/internal/downloader/l;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/g;->c:Lcom/vungle/ads/internal/downloader/e;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/g;->b:Lcom/vungle/ads/internal/downloader/l;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/downloader/l;->a:Lcom/vungle/ads/internal/downloader/k;

    .line 3
    iget v0, v0, Lcom/vungle/ads/internal/downloader/k;->a:I

    return v0
.end method

.method public final run()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/g;->a:Lcom/vungle/ads/internal/downloader/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/g;->b:Lcom/vungle/ads/internal/downloader/l;

    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/g;->c:Lcom/vungle/ads/internal/downloader/e;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/i;->b(Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)Lcom/vungle/ads/internal/downloader/c;

    move-result-object v3

    :goto_a
    const-string v4, "AssetDownloader"

    if-eqz v3, :cond_d8

    .line 3
    iget-object v5, v1, Lcom/vungle/ads/internal/downloader/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 5
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v5, "Download cancelled, not retrying"

    invoke-static {v4, v5}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 6
    :cond_1f
    iget-object v5, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, v1, Lcom/vungle/ads/internal/downloader/l;->d:I

    if-ge v5, v6, :cond_bf

    .line 15
    invoke-static {v3}, Lcom/vungle/ads/internal/downloader/a;->a(Lcom/vungle/ads/internal/downloader/c;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 16
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 17
    const-string v5, "Error reason "

    invoke-static {v5}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 18
    iget v6, v3, Lcom/vungle/ads/internal/downloader/c;->c:I

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not retryable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 20
    :cond_4a
    iget-object v5, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v6, v3, Lcom/vungle/ads/internal/downloader/c;->b:Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v6, v3, Lcom/vungle/ads/internal/downloader/c;->a:I

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v6, v3, Lcom/vungle/ads/internal/downloader/c;->c:I

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v1, v5}, Lcom/vungle/ads/internal/downloader/l;->a(Ljava/lang/String;)V

    .line 32
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 33
    const-string v5, "Download failed, retrying immediately. Attempt "

    invoke-static {v5}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 34
    iget-object v6, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget v6, v1, Lcom/vungle/ads/internal/downloader/l;->d:I

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v6, v1, Lcom/vungle/ads/internal/downloader/l;->b:Lcom/vungle/ads/internal/model/b;

    .line 39
    iget-object v6, v6, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, v3, Lcom/vungle/ads/internal/downloader/c;->b:Ljava/lang/Throwable;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v4, v3}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/i;->b(Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)Lcom/vungle/ads/internal/downloader/c;

    move-result-object v3

    goto/16 :goto_a

    .line 7
    :cond_bf
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 8
    const-string v5, "Max retry attempts reached ("

    invoke-static {v5}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9
    iget v6, v1, Lcom/vungle/ads/internal/downloader/l;->d:I

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    :goto_d8
    if-eqz v3, :cond_143

    .line 55
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 56
    const-string v5, "Download failed after "

    invoke-static {v5}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 57
    iget-object v6, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " attempts. URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v6, v1, Lcom/vungle/ads/internal/downloader/l;->b:Lcom/vungle/ads/internal/model/b;

    .line 60
    iget-object v6, v6, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Retry history: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Lcom/vungle/ads/internal/downloader/l;->d()Ljava/util/List;

    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {v4, v5}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_13e

    .line 66
    sget-object v5, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 67
    sget-object v6, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->ASSET_DOWNLOAD_RETRY_STATUS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 68
    iget-object v9, v1, Lcom/vungle/ads/internal/downloader/l;->c:Lcom/vungle/ads/internal/util/t;

    .line 69
    const-string v4, "retryCount="

    invoke-static {v4}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    iget-object v7, v1, Lcom/vungle/ads/internal/downloader/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 71
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v7, v1, Lcom/vungle/ads/internal/downloader/l;->b:Lcom/vungle/ads/internal/model/b;

    .line 73
    iget-object v7, v7, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v7, 0x2

    .line 75
    invoke-virtual/range {v5 .. v10}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    :cond_13e
    if-eqz v2, :cond_143

    .line 76
    invoke-interface {v2, v3, v1}, Lcom/vungle/ads/internal/downloader/e;->a(Lcom/vungle/ads/internal/downloader/c;Lcom/vungle/ads/internal/downloader/l;)V

    .line 77
    :cond_143
    iget-object v0, v0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
