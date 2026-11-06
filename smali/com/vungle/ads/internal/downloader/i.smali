###### Class com.vungle.ads.internal.downloader.i (com.vungle.ads.internal.downloader.i)
.class public final Lcom/vungle/ads/internal/downloader/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/downloader/n;


# instance fields
.field public final a:Lcom/vungle/ads/internal/executor/j;

.field public final b:Lcom/vungle/ads/internal/util/PathProvider;

.field public final c:Lkotlin/Lazy;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;)V
    .registers 4

    const-string v0, "downloadExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/i;->a:Lcom/vungle/ads/internal/executor/j;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/i;->b:Lcom/vungle/ads/internal/util/PathProvider;

    .line 4
    new-instance p1, Lcom/vungle/ads/internal/downloader/h;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/downloader/h;-><init>(Lcom/vungle/ads/internal/downloader/i;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/i;->c:Lkotlin/Lazy;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 7

    .line 233
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 235
    const-string v1, "Content-Encoding"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v4, "gzip"

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    .line 241
    new-instance v1, Lokio/GzipSource;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 242
    const-string v0, "Content-Type"

    invoke-static {p0, v0, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 243
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    :cond_31
    return-object v0
.end method

.method public static final a(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to execute download request: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/l;->a()Lcom/vungle/ads/internal/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/vungle/ads/internal/downloader/c;

    .line 9
    new-instance v1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {v1, p0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    const/4 p0, -0x1

    const/4 v2, 0x4

    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    if-eqz p2, :cond_34

    .line 11
    invoke-interface {p2, v0, p1}, Lcom/vungle/ads/internal/downloader/e;->a(Lcom/vungle/ads/internal/downloader/c;Lcom/vungle/ads/internal/downloader/l;)V

    :cond_34
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/l;

    if-eqz v1, :cond_6

    .line 230
    iget-object v2, v1, Lcom/vungle/ads/internal/downloader/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_6

    .line 231
    :cond_1d
    iget-object v1, v1, Lcom/vungle/ads/internal/downloader/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 232
    :cond_24
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/i;->a:Lcom/vungle/ads/internal/executor/j;

    new-instance v1, Lcom/vungle/ads/internal/downloader/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/g;-><init>(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V

    new-instance v2, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/executor/j;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)Lcom/vungle/ads/internal/downloader/c;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-string v4, "download status: "

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->a()Lcom/vungle/ads/internal/model/b;

    move-result-object v5

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v0, "launch request in thread: "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " request: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v6, "AssetDownloader"

    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->e()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_55

    .line 243
    const-string v0, "Request "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is cancelled before starting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 490
    :cond_55
    new-instance v8, Lcom/vungle/ads/internal/downloader/d;

    invoke-direct {v8}, Lcom/vungle/ads/internal/downloader/d;-><init>()V

    .line 493
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/b;->b()Ljava/lang/String;

    move-result-object v9

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, -0x1

    if-nez v10, :cond_6b

    goto :goto_71

    :cond_6b
    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8e

    .line 2003
    :goto_71
    new-instance v3, Lcom/vungle/ads/internal/downloader/c;

    .line 2005
    new-instance v4, Lcom/vungle/ads/InvalidAssetUrlError;

    .line 2006
    const-string v5, "invalid url: "

    invoke-static {v5, v0}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    invoke-direct {v4, v0}, Lcom/vungle/ads/InvalidAssetUrlError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    .line 2261
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    .line 2262
    invoke-direct {v3, v12, v0, v11}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    return-object v3

    .line 505
    :cond_8e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x3

    if-nez v10, :cond_b2

    .line 506
    new-instance v0, Lcom/vungle/ads/internal/downloader/c;

    .line 508
    new-instance v3, Lcom/vungle/ads/AssetWriteError;

    .line 509
    const-string v4, "invalid path: "

    invoke-static {v4, v9}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-direct {v3, v4}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    .line 772
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v2

    .line 773
    invoke-direct {v0, v12, v2, v13}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    return-object v0

    .line 774
    :cond_b2
    iget-object v10, v1, Lcom/vungle/ads/internal/downloader/i;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v10}, Lcom/vungle/ads/internal/util/PathProvider;->c()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v14, "pathProvider.getVungleDir().absolutePath"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/vungle/ads/internal/util/PathProvider;->a(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v16, 0x1400000

    cmp-long v10, v14, v16

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-gez v10, :cond_106

    .line 776
    new-instance v0, Lcom/vungle/ads/NoSpaceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient space "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 778
    new-instance v0, Lcom/vungle/ads/internal/downloader/c;

    .line 780
    new-instance v3, Lcom/vungle/ads/NoSpaceError;

    invoke-direct {v3, v7, v13, v7}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v2

    .line 781
    invoke-direct {v0, v12, v2, v11}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    return-object v0

    .line 787
    :cond_106
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_144

    .line 791
    const-string v9, "Deleting existing file before download: "

    invoke-static {v9}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1069
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_144

    .line 1071
    new-instance v0, Lcom/vungle/ads/internal/downloader/c;

    .line 1073
    new-instance v3, Lcom/vungle/ads/AssetWriteError;

    const-string v4, "Cannot delete partial file for restart"

    invoke-direct {v3, v4}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v2

    .line 1074
    invoke-direct {v0, v12, v2, v11}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    return-object v0

    .line 1089
    :cond_144
    :try_start_144
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_148} :catch_2eb
    .catchall {:try_start_144 .. :try_end_148} :catchall_2e6

    if-eqz v11, :cond_164

    .line 1090
    :try_start_14a
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_164

    .line 1091
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_153} :catch_15c
    .catchall {:try_start_14a .. :try_end_153} :catchall_154

    goto :goto_164

    :catchall_154
    move-exception v0

    move-object v11, v7

    move-object v14, v11

    move-object v15, v14

    :goto_158
    move-object/from16 v18, v15

    goto/16 :goto_3c5

    :catch_15c
    move-exception v0

    move-object v11, v7

    move-object v14, v11

    move-object v15, v14

    :goto_160
    move-object/from16 v18, v15

    goto/16 :goto_2f0

    .line 1093
    :cond_164
    :goto_164
    :try_start_164
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v11, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 1094
    iget-object v14, v1, Lcom/vungle/ads/internal/downloader/i;->c:Lkotlin/Lazy;

    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lokhttp3/OkHttpClient;

    .line 1095
    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v14, v11}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_17d} :catch_2eb
    .catchall {:try_start_164 .. :try_end_17d} :catchall_2e6

    .line 1096
    :try_start_17d
    invoke-interface {v11}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v14
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_181} :catch_2e0
    .catchall {:try_start_17d .. :try_end_181} :catchall_2d9

    .line 1098
    :try_start_181
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v12

    .line 1100
    invoke-virtual {v14}, Lokhttp3/Response;->isSuccessful()Z

    move-result v15

    if-eqz v15, :cond_2c0

    .line 1104
    invoke-virtual {v14}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v15
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18f} :catch_2bb
    .catchall {:try_start_181 .. :try_end_18f} :catchall_2b6

    if-eqz v15, :cond_1b0

    .line 1105
    :try_start_191
    sget-object v15, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 1106
    new-instance v9, Lcom/vungle/ads/internal/j2;

    sget-object v7, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CACHED_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v9, v7}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 1107
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v7

    .line 1108
    invoke-virtual {v15, v9, v7, v0}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1a1} :catch_1a9
    .catchall {:try_start_191 .. :try_end_1a1} :catchall_1a2

    goto :goto_1b0

    :catchall_1a2
    move-exception v0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    goto/16 :goto_3c5

    :catch_1a9
    move-exception v0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    goto/16 :goto_2f0

    .line 1115
    :cond_1b0
    :goto_1b0
    :try_start_1b0
    invoke-static {v14}, Lcom/vungle/ads/internal/downloader/i;->a(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v7
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_2ae
    .catchall {:try_start_1b0 .. :try_end_1b4} :catchall_2a5

    if-eqz v7, :cond_1bb

    .line 1117
    :try_start_1b6
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v7
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1ba} :catch_1a9
    .catchall {:try_start_1b6 .. :try_end_1ba} :catchall_1a2

    goto :goto_1bc

    :cond_1bb
    const/4 v7, 0x0

    .line 1119
    :goto_1bc
    :try_start_1bc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Start download from url: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1d0} :catch_29f
    .catchall {:try_start_1bc .. :try_end_1d0} :catchall_299

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 1122
    :try_start_1d2
    invoke-static {v10, v9, v13, v15}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v18
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1da} :catch_294
    .catchall {:try_start_1d2 .. :try_end_1da} :catchall_28f

    .line 1124
    :try_start_1da
    invoke-virtual {v8, v9}, Lcom/vungle/ads/internal/downloader/d;->a(I)V

    :goto_1dd
    if-eqz v7, :cond_200

    .line 1126
    invoke-interface/range {v18 .. v18}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v9
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e3} :catch_1fb
    .catchall {:try_start_1da .. :try_end_1e3} :catchall_1f6

    move-object/from16 v19, v14

    const-wide/16 v13, 0x2000

    :try_start_1e7
    invoke-interface {v7, v9, v13, v14}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v13

    goto :goto_204

    :catchall_1ec
    move-exception v0

    :goto_1ed
    move-object/from16 v14, v19

    goto/16 :goto_3c5

    :catch_1f1
    move-exception v0

    :goto_1f2
    move-object/from16 v14, v19

    goto/16 :goto_2f0

    :catchall_1f6
    move-exception v0

    move-object/from16 v19, v14

    goto/16 :goto_3c5

    :catch_1fb
    move-exception v0

    move-object/from16 v19, v14

    goto/16 :goto_2f0

    :cond_200
    move-object/from16 v19, v14

    const-wide/16 v13, -0x1

    :goto_204
    const-wide/16 v20, 0x0

    cmp-long v9, v13, v20

    if-lez v9, :cond_252

    .line 1127
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->e()Z

    move-result v9

    if-eqz v9, :cond_215

    const/4 v9, 0x3

    .line 1128
    invoke-virtual {v8, v9}, Lcom/vungle/ads/internal/downloader/d;->a(I)V

    goto :goto_252

    .line 1132
    :cond_215
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_229

    const/4 v9, 0x1

    .line 1138
    invoke-virtual {v8, v9}, Lcom/vungle/ads/internal/downloader/d;->a(I)V

    .line 1140
    invoke-interface/range {v18 .. v18}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 1141
    invoke-interface/range {v18 .. v18}, Lokio/BufferedSink;->flush()V

    move-object/from16 v14, v19

    const/4 v13, 0x1

    goto :goto_1dd

    .line 1142
    :cond_229
    new-instance v9, Lcom/vungle/ads/AssetWriteError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Asset save error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1144
    new-instance v0, Lcom/vungle/ads/internal/downloader/m;

    const-string v9, "File is not existing"

    invoke-direct {v0, v9}, Lcom/vungle/ads/internal/downloader/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_252
    :goto_252
    invoke-interface/range {v18 .. v18}, Lokio/BufferedSink;->flush()V

    .line 1155
    invoke-virtual {v8}, Lcom/vungle/ads/internal/downloader/d;->a()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_260

    const/4 v0, 0x4

    .line 1156
    invoke-virtual {v8, v0}, Lcom/vungle/ads/internal/downloader/d;->a(I)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_260} :catch_1f1
    .catchall {:try_start_1e7 .. :try_end_260} :catchall_1ec

    .line 1164
    :cond_260
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_26f

    .line 1165
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_26f

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 1168
    :cond_26f
    invoke-interface {v11}, Lokhttp3/Call;->cancel()V

    .line 1170
    invoke-static/range {v18 .. v18}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1171
    invoke-static {v7}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1173
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1174
    invoke-static {v4}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1541
    invoke-virtual {v8}, Lcom/vungle/ads/internal/downloader/d;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v15

    goto/16 :goto_350

    :catchall_28f
    move-exception v0

    move-object/from16 v19, v14

    goto/16 :goto_158

    :catch_294
    move-exception v0

    move-object/from16 v19, v14

    goto/16 :goto_160

    :catchall_299
    move-exception v0

    move-object/from16 v19, v14

    const/4 v15, 0x0

    goto/16 :goto_158

    :catch_29f
    move-exception v0

    move-object/from16 v19, v14

    const/4 v15, 0x0

    goto/16 :goto_160

    :catchall_2a5
    move-exception v0

    move-object/from16 v19, v14

    const/4 v15, 0x0

    move-object v7, v15

    :goto_2aa
    move-object/from16 v18, v7

    goto/16 :goto_3c5

    :catch_2ae
    move-exception v0

    move-object/from16 v19, v14

    const/4 v15, 0x0

    move-object v7, v15

    :goto_2b3
    move-object/from16 v18, v7

    goto :goto_2f0

    :catchall_2b6
    move-exception v0

    move-object v15, v7

    move-object/from16 v19, v14

    goto :goto_2aa

    :catch_2bb
    move-exception v0

    move-object v15, v7

    move-object/from16 v19, v14

    goto :goto_2b3

    :cond_2c0
    move-object v15, v7

    move-object/from16 v19, v14

    .line 1542
    :try_start_2c3
    new-instance v0, Lcom/vungle/ads/internal/downloader/m;

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/vungle/ads/internal/downloader/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_2cd} :catch_2d3
    .catchall {:try_start_2c3 .. :try_end_2cd} :catchall_2cd

    :catchall_2cd
    move-exception v0

    move-object v7, v15

    move-object/from16 v18, v7

    goto/16 :goto_1ed

    :catch_2d3
    move-exception v0

    move-object v7, v15

    move-object/from16 v18, v7

    goto/16 :goto_1f2

    :catchall_2d9
    move-exception v0

    move-object v15, v7

    move-object v14, v7

    :goto_2dc
    move-object/from16 v18, v14

    goto/16 :goto_3c5

    :catch_2e0
    move-exception v0

    move-object v15, v7

    move-object v14, v7

    :goto_2e3
    move-object/from16 v18, v14

    goto :goto_2f0

    :catchall_2e6
    move-exception v0

    move-object v15, v7

    move-object v11, v7

    move-object v14, v11

    goto :goto_2dc

    :catch_2eb
    move-exception v0

    move-object v15, v7

    move-object v11, v7

    move-object v14, v11

    goto :goto_2e3

    .line 1589
    :goto_2f0
    :try_start_2f0
    sget-boolean v9, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download exception for "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x7

    .line 1590
    invoke-virtual {v8, v5}, Lcom/vungle/ads/internal/downloader/d;->a(I)V

    .line 1591
    new-instance v5, Lcom/vungle/ads/internal/downloader/c;

    const/4 v9, 0x1

    invoke-direct {v5, v12, v0, v9}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V
    :try_end_31c
    .catchall {:try_start_2f0 .. :try_end_31c} :catchall_3c4

    if-eqz v14, :cond_323

    .line 1593
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    goto :goto_324

    :cond_323
    move-object v0, v15

    :goto_324
    if-eqz v0, :cond_32f

    .line 1594
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_32f

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_32f
    if-eqz v11, :cond_334

    .line 1597
    invoke-interface {v11}, Lokhttp3/Call;->cancel()V

    .line 1599
    :cond_334
    invoke-static/range {v18 .. v18}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1600
    invoke-static {v7}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/vungle/ads/internal/downloader/d;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_350
    invoke-virtual {v8}, Lcom/vungle/ads/internal/downloader/d;->a()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_358

    goto :goto_35a

    :cond_358
    if-nez v0, :cond_35c

    :goto_35a
    move-object v7, v5

    goto :goto_3c3

    :cond_35c
    const/4 v9, 0x3

    if-ne v0, v9, :cond_375

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On cancel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_373
    :goto_373
    move-object v7, v15

    goto :goto_3c3

    .line 1615
    :cond_375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On success "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_38e

    .line 1616
    invoke-interface {v3, v10, v2}, Lcom/vungle/ads/internal/downloader/e;->a(Ljava/io/File;Lcom/vungle/ads/internal/downloader/l;)V

    .line 1617
    :cond_38e
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/l;->b()I

    move-result v0

    if-lez v0, :cond_373

    .line 1619
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 1620
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->ASSET_DOWNLOAD_RETRY_STATUS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 1622
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/l;->c()Lcom/vungle/ads/internal/util/t;

    move-result-object v6

    .line 1623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " url="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/l;->a()Lcom/vungle/ads/internal/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, 0x1

    .line 1624
    invoke-virtual/range {v2 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    goto :goto_373

    :goto_3c3
    return-object v7

    :catchall_3c4
    move-exception v0

    :goto_3c5
    if-eqz v14, :cond_3cc

    .line 1625
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    move-object v15, v2

    :cond_3cc
    if-eqz v15, :cond_3d7

    .line 1626
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_3d7

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    :cond_3d7
    if-eqz v11, :cond_3dc

    .line 1629
    invoke-interface {v11}, Lokhttp3/Call;->cancel()V

    .line 1631
    :cond_3dc
    invoke-static/range {v18 .. v18}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1632
    invoke-static {v7}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 1634
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1635
    invoke-static {v4}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2002
    invoke-virtual {v8}, Lcom/vungle/ads/internal/downloader/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

###### Class com.vungle.ads.internal.downloader.i$$ExternalSyntheticLambda0 (com.vungle.ads.internal.downloader.i$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/downloader/i;

.field public final synthetic f$1:Lcom/vungle/ads/internal/downloader/l;

.field public final synthetic f$2:Lcom/vungle/ads/internal/downloader/e;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/downloader/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$1:Lcom/vungle/ads/internal/downloader/l;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$2:Lcom/vungle/ads/internal/downloader/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/downloader/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$1:Lcom/vungle/ads/internal/downloader/l;

    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/i$$ExternalSyntheticLambda0;->f$2:Lcom/vungle/ads/internal/downloader/e;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/i;->a(Lcom/vungle/ads/internal/downloader/i;Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V

    return-void
.end method
