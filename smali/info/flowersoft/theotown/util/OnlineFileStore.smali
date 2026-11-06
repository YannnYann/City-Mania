###### Class info.flowersoft.theotown.util.OnlineFileStore (info.flowersoft.theotown.util.OnlineFileStore)
.class public Linfo/flowersoft/theotown/util/OnlineFileStore;
.super Ljava/lang/Object;
.source "OnlineFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;,
        Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;,
        Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;
    }
.end annotation


# instance fields
.field public final cacheDir:Ljava/io/File;

.field public final cachedFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final virtualFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XGG7kEaQ7WR0LHSWp_2TylmGBBg(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;F)V
    .registers 2

    .line 278
    iput p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->progress:F

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->executor:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->loadPref()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/OnlineFileStore;)Ljava/io/File;
    .registers 1

    .line 33
    iget-object p0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/util/OnlineFileStore;Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->download(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V

    return-void
.end method

.method public static downloadRaw(Ljava/lang/String;Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;)[B
    .registers 14

    const/4 v0, 0x0

    .line 296
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_c8
    .catchall {:try_start_1 .. :try_end_c} :catchall_c4

    .line 299
    :try_start_c
    invoke-static {p0}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    const/4 v1, 0x1

    .line 300
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 301
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 302
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 303
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 309
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_51

    .line 310
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "OnlineFileStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    move-object v1, p1

    goto/16 :goto_b1

    :catchall_48
    move-exception p1

    move-object v1, v0

    goto/16 :goto_e7

    :catch_4c
    move-exception p1

    move-object v1, v0

    :goto_4e
    move-object v2, v1

    goto/16 :goto_cc

    .line 312
    :cond_51
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6b

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5f} :catch_4c
    .catchall {:try_start_c .. :try_end_5f} :catchall_48

    if-nez v4, :cond_6b

    .line 316
    :try_start_61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_67
    .catchall {:try_start_61 .. :try_end_65} :catchall_48

    int-to-long v4, v1

    goto :goto_6c

    :catch_67
    move-exception v1

    .line 318
    :try_start_68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6b
    move-wide v4, v2

    .line 323
    :goto_6c
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_4c
    .catchall {:try_start_68 .. :try_end_70} :catchall_48

    .line 324
    :try_start_70
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_c1
    .catchall {:try_start_70 .. :try_end_75} :catchall_bf

    .line 326
    :try_start_75
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    .line 329
    :cond_7b
    :goto_7b
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a4

    const/high16 v11, 0x1400000

    if-ge v9, v11, :cond_a4

    add-int/2addr v9, v10

    .line 331
    invoke-virtual {v6, v7, v8, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p1, :cond_7b

    cmp-long v10, v4, v2

    if-lez v10, :cond_9e

    int-to-float v10, v9

    long-to-float v11, v4

    div-float/2addr v10, v11

    .line 334
    invoke-interface {p1, v10}, Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;->progress(F)V

    goto :goto_7b

    :catchall_97
    move-exception p1

    move-object v0, v6

    goto :goto_e7

    :catch_9a
    move-exception p1

    move-object v2, v0

    move-object v0, v6

    goto :goto_cc

    :cond_9e
    const/high16 v10, 0x3f000000    # 0.5f

    .line 336
    invoke-interface {p1, v10}, Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;->progress(F)V

    goto :goto_7b

    .line 341
    :cond_a4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_af

    const/high16 v2, 0x3f800000    # 1.0f

    .line 342
    invoke-interface {p1, v2}, Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;->progress(F)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_af} :catch_9a
    .catchall {:try_start_75 .. :try_end_af} :catchall_97

    :cond_af
    move-object p1, v0

    move-object v0, v6

    :goto_b1
    if-eqz v0, :cond_b6

    .line 352
    :try_start_b3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b6
    if-eqz v1, :cond_bb

    .line 354
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bb} :catch_bb

    .line 359
    :catch_bb
    :cond_bb
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_e6

    :catchall_bf
    move-exception p1

    goto :goto_e7

    :catch_c1
    move-exception p1

    move-object v2, v0

    goto :goto_cc

    :catchall_c4
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_e7

    :catch_c8
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_4e

    .line 347
    :goto_cc
    :try_start_cc
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Download"

    invoke-interface {v3, v4, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_bf

    if-eqz v0, :cond_db

    .line 352
    :try_start_d8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_db
    if-eqz v1, :cond_e0

    .line 354
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e0} :catch_e0

    :catch_e0
    :cond_e0
    if-eqz p0, :cond_e5

    .line 359
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e5
    move-object p1, v2

    :goto_e6
    return-object p1

    :goto_e7
    if-eqz v0, :cond_ec

    .line 352
    :try_start_e9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_ec
    if-eqz v1, :cond_f1

    .line 354
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f1} :catch_f1

    :catch_f1
    :cond_f1
    if-eqz p0, :cond_f6

    .line 359
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_f6
    throw p1
.end method


# virtual methods
.method public final declared-synchronized append(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;
    .registers 8

    monitor-enter p0

    .line 211
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->evictMemoryData()V

    .line 212
    new-instance v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;-><init>(Linfo/flowersoft/theotown/util/OnlineFileStore$1;)V

    .line 213
    iput-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->url:Ljava/lang/String;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    .line 215
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 219
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 221
    invoke-static {v2}, Linfo/flowersoft/theotown/util/Files;->readBinaryFile(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez v1, :cond_47

    .line 224
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->savePref()V

    goto :goto_4e

    :catchall_45
    move-exception p1

    goto :goto_61

    .line 228
    :cond_47
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 233
    :cond_4e
    :goto_4e
    iget-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez p1, :cond_5f

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    .line 235
    iget-object p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Linfo/flowersoft/theotown/util/OnlineFileStore$2;

    invoke-direct {v1, p0, p2, v0}, Linfo/flowersoft/theotown/util/OnlineFileStore$2;-><init>(Linfo/flowersoft/theotown/util/OnlineFileStore;ILinfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_45

    .line 243
    :cond_5f
    monitor-exit p0

    return-object v0

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_45

    throw p1
.end method

.method public final appendSync(Ljava/lang/String;)Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;
    .registers 6

    .line 247
    new-instance v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;-><init>(Linfo/flowersoft/theotown/util/OnlineFileStore$1;)V

    .line 248
    iput-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->url:Ljava/lang/String;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    .line 251
    monitor-enter p0

    .line 252
    :try_start_f
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 256
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Files;->readBinaryFile(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez v1, :cond_38

    .line 258
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->savePref()V

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_44

    .line 262
    :cond_38
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_36

    .line 264
    iget-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez p1, :cond_43

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    .line 266
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->download(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V

    :cond_43
    return-object v0

    .line 262
    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_36

    throw p1
.end method

.method public final declared-synchronized cacheVirtualFile(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)Z
    .registers 6

    monitor-enter p0

    .line 145
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomLowercaseString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ofs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3d

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    monitor-exit p0

    return v3

    .line 148
    :cond_28
    :try_start_28
    iget-object v2, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Files;->writeBinaryFile(Ljava/io/File;[B)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 149
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->url:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->savePref()V
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3d

    .line 151
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_3d
    move-exception p1

    goto :goto_41

    .line 153
    :cond_3f
    monitor-exit p0

    return v3

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3d

    throw p1
.end method

.method public final download(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V
    .registers 6

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_11

    .line 274
    iput-boolean v1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    return-void

    .line 278
    :cond_11
    iget-object v0, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->url:Ljava/lang/String;

    new-instance v2, Linfo/flowersoft/theotown/util/OnlineFileStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->downloadRaw(Ljava/lang/String;Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;)[B

    move-result-object v0

    .line 280
    monitor-enter p0

    .line 281
    :try_start_1d
    iput-boolean v1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    .line 282
    iput-object v0, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-eqz v0, :cond_29

    .line 284
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheVirtualFile(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)Z

    goto :goto_29

    :catchall_27
    move-exception p1

    goto :goto_2b

    .line 286
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_27

    throw p1
.end method

.method public downloadSync(Ljava/lang/String;)[B
    .registers 5

    .line 194
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    .line 196
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    if-eqz v0, :cond_1e

    .line 197
    iget-boolean v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    if-nez v1, :cond_15

    iget-object v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez v1, :cond_15

    goto :goto_1e

    .line 201
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    .line 202
    iget-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    return-object p1

    .line 198
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->appendSync(Ljava/lang/String;)Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    move-result-object p1

    .line 199
    iget-object p1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    return-object p1

    :catchall_25
    move-exception p1

    .line 196
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public downloadSyncUncached(Ljava/lang/String;Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;)[B
    .registers 3

    .line 207
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->downloadRaw(Ljava/lang/String;Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;)[B

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized ensureCacheSize()V
    .registers 10

    monitor-enter p0

    .line 71
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_3b
    move-exception v0

    goto :goto_ad

    .line 78
    :cond_3d
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_12

    .line 81
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    iget-object v4, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_59
    const-wide/32 v0, 0x2000000

    cmp-long v4, v2, v0

    if-lez v4, :cond_a8

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    new-instance v5, Linfo/flowersoft/theotown/util/OnlineFileStore$1;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/util/OnlineFileStore$1;-><init>(Linfo/flowersoft/theotown/util/OnlineFileStore;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 104
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_a4

    sub-long/2addr v2, v7

    .line 108
    iget-object v6, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    cmp-long v5, v2, v0

    if-gtz v5, :cond_77

    .line 114
    :cond_a8
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->savePref()V
    :try_end_ab
    .catchall {:try_start_1 .. :try_end_ab} :catchall_3b

    .line 115
    monitor-exit p0

    return-void

    :goto_ad
    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_3b

    throw v0
.end method

.method public final declared-synchronized evictMemoryData()V
    .registers 9

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_40

    const/16 v1, 0x20

    if-ge v0, v1, :cond_d

    monitor-exit p0

    return-void

    .line 120
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    .line 124
    iget-wide v5, v5, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_1f

    .line 126
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-wide v0, v5

    goto :goto_1f

    :catchall_40
    move-exception v0

    goto :goto_4b

    :cond_42
    if-eqz v3, :cond_49

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_40

    .line 133
    :cond_49
    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_40

    throw v0
.end method

.method public declared-synchronized getProgress(Ljava/lang/String;)F
    .registers 3

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    if-nez p1, :cond_e

    .line 184
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_e
    :try_start_e
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    if-eqz v0, :cond_18

    .line 186
    iget p1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->progress:F
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_16

    monitor-exit p0

    return p1

    :catchall_16
    move-exception p1

    goto :goto_1c

    .line 188
    :cond_18
    monitor-exit p0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw p1
.end method

.method public final declared-synchronized loadPref()V
    .registers 6

    monitor-enter p0

    .line 54
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "info.flowersoft.theotown.theotown.onlinefilestore"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->get()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 61
    iget-object v3, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :catchall_58
    move-exception v0

    goto :goto_5f

    .line 66
    :cond_5a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->ensureCacheSize()V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_58

    .line 67
    monitor-exit p0

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_58

    throw v0
.end method

.method public declared-synchronized request(Ljava/lang/String;I)[B
    .registers 5

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    if-eqz v0, :cond_20

    .line 172
    iget-boolean v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->pending:Z

    if-nez v1, :cond_16

    iget-object v1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B

    if-nez v1, :cond_16

    goto :goto_20

    :catchall_14
    move-exception p1

    goto :goto_28

    .line 176
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->lastAccess:J

    .line 177
    iget-object p1, v0, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_14

    monitor-exit p0

    return-object p1

    .line 173
    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->append(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    move-result-object p1

    .line 174
    iget-object p1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;->data:[B
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_14

    monitor-exit p0

    return-object p1

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_14

    throw p1
.end method

.method public final declared-synchronized savePref()V
    .registers 5

    monitor-enter p0

    .line 136
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "info.flowersoft.theotown.theotown.onlinefilestore"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->clear()V

    .line 138
    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    goto :goto_1a

    :catchall_36
    move-exception v0

    goto :goto_3d

    .line 141
    :cond_38
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_36

    .line 142
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_36

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 167
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->ensureCacheSize()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 168
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public tidyUp()V
    .registers 5

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_a

    .line 160
    :cond_21
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->cachedFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore;->virtualFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 162
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore;->savePref()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore.AnonymousClass1 (info.flowersoft.theotown.util.OnlineFileStore$1)
.class Linfo/flowersoft/theotown/util/OnlineFileStore$1;
.super Ljava/lang/Object;
.source "OnlineFileStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/OnlineFileStore;->ensureCacheSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/OnlineFileStore;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$1;->this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/OnlineFileStore$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$1;->this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->access$000(Linfo/flowersoft/theotown/util/OnlineFileStore;)Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$1;->this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->access$000(Linfo/flowersoft/theotown/util/OnlineFileStore;)Ljava/io/File;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_30

    const/4 p1, 0x1

    return p1

    :cond_30
    cmp-long p1, p1, v0

    if-lez p1, :cond_36

    const/4 p1, -0x1

    return p1

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore.AnonymousClass2 (info.flowersoft.theotown.util.OnlineFileStore$2)
.class Linfo/flowersoft/theotown/util/OnlineFileStore$2;
.super Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;
.source "OnlineFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/OnlineFileStore;->append(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

.field public final synthetic val$vf:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/OnlineFileStore;ILinfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$2;->this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

    iput-object p3, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$2;->val$vf:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$2;->this$0:Linfo/flowersoft/theotown/util/OnlineFileStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$2;->val$vf:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->access$200(Linfo/flowersoft/theotown/util/OnlineFileStore;Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore.PriorityRunnable (info.flowersoft.theotown.util.OnlineFileStore$PriorityRunnable)
.class abstract Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;
.super Ljava/lang/Object;
.source "OnlineFileStore.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/OnlineFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PriorityRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field public priority:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;->priority:I

    return-void
.end method


# virtual methods
.method public compareTo(Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;)I
    .registers 3

    .line 374
    iget p1, p1, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;->priority:I

    iget v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 365
    check-cast p1, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;->compareTo(Linfo/flowersoft/theotown/util/OnlineFileStore$PriorityRunnable;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore.ProgressCallback (info.flowersoft.theotown.util.OnlineFileStore$ProgressCallback)
.class public interface abstract Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;
.super Ljava/lang/Object;
.source "OnlineFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/OnlineFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract progress(F)V
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore.VirtualFile (info.flowersoft.theotown.util.OnlineFileStore$VirtualFile)
.class public Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;
.super Ljava/lang/Object;
.source "OnlineFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/OnlineFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualFile"
.end annotation


# instance fields
.field public data:[B

.field public lastAccess:J

.field public pending:Z

.field public progress:F

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/OnlineFileStore$1;)V
    .registers 2

    .line 378
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.OnlineFileStore$$ExternalSyntheticLambda0 (info.flowersoft.theotown.util.OnlineFileStore$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/util/OnlineFileStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    return-void
.end method


# virtual methods
.method public final progress(F)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/OnlineFileStore$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;->$r8$lambda$XGG7kEaQ7WR0LHSWp_2TylmGBBg(Linfo/flowersoft/theotown/util/OnlineFileStore$VirtualFile;F)V

    return-void
.end method
