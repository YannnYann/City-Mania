###### Class info.flowersoft.theotown.resources.StaticFiles (info.flowersoft.theotown.resources.StaticFiles)
.class public Linfo/flowersoft/theotown/resources/StaticFiles;
.super Ljava/lang/Object;
.source "StaticFiles.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/StaticFiles;


# instance fields
.field public keys:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$OsyMLfD8rVHx9dFr_4iFEeKr6vg(Linfo/flowersoft/theotown/resources/StaticFiles;J)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getConnector()Linfo/flowersoft/theotown/backend/BackendConnector;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/backend/BackendConnector;->EMPTY_REQUEST:Linfo/flowersoft/theotown/backend/Request;

    sget-object v2, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    new-instance v3, Linfo/flowersoft/theotown/resources/StaticFiles$1;

    invoke-direct {v3, p0, p1, p2}, Linfo/flowersoft/theotown/resources/StaticFiles$1;-><init>(Linfo/flowersoft/theotown/resources/StaticFiles;J)V

    const-string p0, "static_files/static_files.php"

    invoke-virtual {v0, p0, v1, v2, v3}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/resources/StaticFiles;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/StaticFiles;->onReceive(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 238
    sput-object v0, Linfo/flowersoft/theotown/resources/StaticFiles;->instance:Linfo/flowersoft/theotown/resources/StaticFiles;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/StaticFiles;
    .registers 1

    .line 231
    sget-object v0, Linfo/flowersoft/theotown/resources/StaticFiles;->instance:Linfo/flowersoft/theotown/resources/StaticFiles;

    if-nez v0, :cond_b

    .line 232
    new-instance v0, Linfo/flowersoft/theotown/resources/StaticFiles;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/StaticFiles;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/StaticFiles;->instance:Linfo/flowersoft/theotown/resources/StaticFiles;

    .line 234
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/StaticFiles;->instance:Linfo/flowersoft/theotown/resources/StaticFiles;

    return-object v0
.end method


# virtual methods
.method public final download(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_77
    .catchall {:try_start_2 .. :try_end_d} :catchall_73

    .line 184
    :try_start_d
    invoke-static {p2}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    .line 185
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    .line 191
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_40

    .line 192
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "StaticFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_3e
    .catchall {:try_start_d .. :try_end_37} :catchall_3b

    .line 226
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :catchall_3b
    move-exception p1

    move-object v2, v1

    goto :goto_7a

    :catch_3e
    move-object v2, v1

    goto :goto_8a

    .line 198
    :cond_40
    :try_start_40
    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    .line 201
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_3e
    .catchall {:try_start_40 .. :try_end_47} :catchall_3b

    .line 202
    :try_start_47
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_8a
    .catchall {:try_start_47 .. :try_end_4c} :catchall_71

    .line 204
    :try_start_4c
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object p1

    move v1, v0

    .line 207
    :goto_51
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_66

    const/high16 v5, 0x1400000

    if-ge v1, v5, :cond_66

    add-int/2addr v1, v4

    .line 209
    invoke-virtual {v3, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_60} :catch_64
    .catchall {:try_start_4c .. :try_end_60} :catchall_61

    goto :goto_51

    :catchall_61
    move-exception p1

    move-object v1, v3

    goto :goto_7a

    :catch_64
    move-object v1, v3

    goto :goto_8a

    .line 219
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 221
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6c} :catch_6c

    .line 226
    :catch_6c
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 p1, 0x1

    return p1

    :catchall_71
    move-exception p1

    goto :goto_7a

    :catchall_73
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    goto :goto_7a

    :catch_77
    move-object p2, v1

    move-object v2, p2

    goto :goto_8a

    :goto_7a
    if-eqz v1, :cond_7f

    .line 219
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_7f
    if-eqz v2, :cond_84

    .line 221
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_84} :catch_84

    :catch_84
    :cond_84
    if-eqz p2, :cond_89

    .line 226
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 227
    :cond_89
    throw p1

    :catch_8a
    :goto_8a
    if-eqz v1, :cond_8f

    .line 219
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_8f
    if-eqz v2, :cond_94

    .line 221
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_94} :catch_94

    :catch_94
    :cond_94
    if-eqz p2, :cond_99

    .line 226
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_99
    return v0
.end method

.method public init(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/StaticFiles;->worker:Ljava/lang/Thread;

    if-nez v0, :cond_1f

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/StaticFiles;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 45
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->downloadStaticFiles:Z

    if-nez p1, :cond_b

    return-void

    .line 47
    :cond_b
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 49
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/StaticFiles;J)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/StaticFiles;->worker:Ljava/lang/Thread;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 41
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to re-init static files"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onReceive(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 79
    const-string v0, "mb"

    const-string v3, "Not enough space left for static files: "

    const-string v4, "Left space"

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "StaticFiles"

    if-nez v6, :cond_50

    .line 81
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TheoTown dir doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "Main dir"

    invoke-interface {v0, v3, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_50
    :try_start_50
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    div-long/2addr v8, v10

    .line 88
    sget-object v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v4, v10}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    cmp-long v6, v8, v10

    if-gez v6, :cond_bb

    .line 90
    sget-object v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v10, "Left MB"

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v10, v11}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a9} :catch_aa

    return-void

    :catch_aa
    move-exception v0

    .line 95
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v6, "General"

    invoke-interface {v3, v6, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 96
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v7, v4, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "files"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sign"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_eb

    goto :goto_ed

    :cond_eb
    move-object v3, v0

    move-object v8, v4

    .line 109
    :cond_ed
    :goto_ed
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 110
    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2b4

    .line 112
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_2b4

    if-eqz v2, :cond_2b4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b4

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v6, v4

    .line 114
    :goto_10e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    const-string v9, "md5"

    const-string v10, "size"

    const-string v11, "name"

    const-string v12, "path"

    if-ge v6, v8, :cond_159

    .line 115
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x23

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_10e

    .line 120
    :cond_159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v6, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;

    iget-object v8, v1, Linfo/flowersoft/theotown/resources/StaticFiles;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v13, "static files private key2"

    invoke-virtual {v8, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;-><init>([B)V

    .line 123
    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v6, v8, v13}, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;->verifySign([B[B)Z

    move-result v6

    if-nez v6, :cond_1c0

    .line 124
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong signature in static file list, hash:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", sign:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v5, "Verify"

    invoke-interface {v0, v5, v4}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c0
    move v2, v4

    .line 130
    :goto_1c1
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_2ab

    .line 131
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 135
    invoke-virtual {v3, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    const-string v3, ".."

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_288

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_288

    .line 138
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 140
    new-instance v14, Ljava/io/File;

    const-string v15, ".nofilecreation"

    invoke-direct {v14, v6, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_20e

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v15

    move/from16 p1, v4

    move-object/from16 v17, v5

    int-to-long v4, v13

    cmp-long v4, v15, v4

    if-eqz v4, :cond_282

    goto :goto_212

    :cond_20e
    move/from16 p1, v4

    move-object/from16 v17, v5

    :goto_212
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_282

    add-int/lit8 v2, v2, 0x1

    .line 144
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_226

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_282

    :cond_226
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_232

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_282

    .line 145
    :cond_232
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_25d

    .line 146
    invoke-virtual {v1, v4, v8}, Linfo/flowersoft/theotown/resources/StaticFiles;->download(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25d

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    int-to-long v13, v13

    cmp-long v5, v5, v13

    if-nez v5, :cond_25d

    .line 147
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_259

    .line 148
    invoke-static {v4, v3}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 149
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 151
    :cond_259
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/resources/StaticFiles;->successfullyDownloaded(Ljava/io/File;)V

    goto :goto_282

    :cond_25d
    if-eqz v4, :cond_268

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_268

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 154
    :cond_268
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_282
    :goto_282
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v5, v17

    goto/16 :goto_1c1

    .line 159
    :cond_288
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "File name"

    invoke-interface {v0, v3, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_2ab
    if-nez v2, :cond_2b4

    .line 165
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "All files are up to date"

    invoke-interface {v0, v7, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b4
    return-void
.end method

.method public final successfullyDownloaded(Ljava/io/File;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.resources.StaticFiles.AnonymousClass1 (info.flowersoft.theotown.resources.StaticFiles$1)
.class public Linfo/flowersoft/theotown/resources/StaticFiles$1;
.super Ljava/lang/Object;
.source "StaticFiles.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/StaticFiles;->init(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/StaticFiles;

.field public final synthetic val$ms:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/StaticFiles;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/StaticFiles$1;->this$0:Linfo/flowersoft/theotown/resources/StaticFiles;

    iput-wide p2, p0, Linfo/flowersoft/theotown/resources/StaticFiles$1;->val$ms:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    .line 71
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "General"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/StaticFiles$1;->handle(Ljava/lang/String;)V

    return-void
.end method

.method public handle(Ljava/lang/String;)V
    .registers 10

    .line 56
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got file list after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v4, p0, Linfo/flowersoft/theotown/resources/StaticFiles$1;->val$ms:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StaticFiles"

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_24
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string p1, "content"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 60
    const-string v0, "status"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/StaticFiles$1;->this$0:Linfo/flowersoft/theotown/resources/StaticFiles;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/resources/StaticFiles;->access$000(Linfo/flowersoft/theotown/resources/StaticFiles;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 62
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    iget-wide v6, p0, Linfo/flowersoft/theotown/resources/StaticFiles$1;->val$ms:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_24 .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception p1

    .line 65
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Handle"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6b
    return-void
.end method

###### Class info.flowersoft.theotown.resources.StaticFiles$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.StaticFiles$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/StaticFiles;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/StaticFiles;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/StaticFiles;

    iput-wide p2, p0, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/StaticFiles;

    iget-wide v1, p0, Linfo/flowersoft/theotown/resources/StaticFiles$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/StaticFiles;->$r8$lambda$OsyMLfD8rVHx9dFr_4iFEeKr6vg(Linfo/flowersoft/theotown/resources/StaticFiles;J)V

    return-void
.end method
