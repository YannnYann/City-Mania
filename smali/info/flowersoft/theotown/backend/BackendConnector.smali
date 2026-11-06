###### Class info.flowersoft.theotown.backend.BackendConnector (info.flowersoft.theotown.backend.BackendConnector)
.class public Linfo/flowersoft/theotown/backend/BackendConnector;
.super Ljava/lang/Object;
.source "BackendConnector.java"


# static fields
.field public static final COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/backend/ResponseCollector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLLECT_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/backend/ResponseCollector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_REQUEST:Linfo/flowersoft/theotown/backend/Request;


# instance fields
.field public final clientId:Ljava/lang/String;

.field public final clientVI:Ljava/lang/String;

.field public final clientVersion:I

.field public final device:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Svge5htZs4Du1ytkaZExEVDBFcU(Ljava/lang/String;[BLjava/net/URLConnection;)V
    .registers 10

    .line 101
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 103
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "... ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackendConnector"

    invoke-interface {v2, v4, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 106
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UTF-8"

    .line 107
    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "+"

    const-string v5, "%20"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"\r\nContent-Type: image/jpeg\r\n\r\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    const-string v3, "\r\n-----------------------------4664151417711--\r\n"

    .line 111
    const-string v4, "Content-Type"

    const-string v5, "multipart/form-data; boundary=---------------------------4664151417711"

    invoke-virtual {p2, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "Content-Length"

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    array-length v6, p1

    add-int/2addr v5, v6

    .line 113
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 124
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 126
    sget-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p1, "FileUploader"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload took "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a3} :catch_a9
    .catchall {:try_start_2b .. :try_end_a3} :catchall_a7

    .line 131
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_b0

    return-void

    :catchall_a7
    move-exception p0

    goto :goto_b1

    :catch_a9
    move-exception p0

    .line 128
    :try_start_aa
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_a7

    .line 131
    :try_start_ad
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b0

    :catch_b0
    return-void

    :goto_b1
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b4

    .line 134
    :catch_b4
    throw p0
.end method

.method public static synthetic $r8$lambda$blBLZExnP82ufuj-LAIphhbD9Gc(Ljava/net/URLConnection;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$e07PEY3_59jaPFF4wzBpcVcg3uI(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 5

    .line 40
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 46
    :cond_20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNa0ov1zL5a4kjp42CLSDVns4Qo(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 6

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    invoke-static {p0, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    :goto_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 62
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/util/zip/ZipException; {:try_start_11 .. :try_end_3d} :catch_3e

    return-void

    .line 64
    :catch_3e
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/backend/BackendConnector;->EMPTY_REQUEST:Linfo/flowersoft/theotown/backend/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->path:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientId:Ljava/lang/String;

    .line 151
    iput p3, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVersion:I

    .line 152
    iput-object p4, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVI:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->device:Ljava/lang/String;

    return-void
.end method

.method public static applyHeaders(Ljava/net/URLConnection;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/backend/BackendConnector$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/backend/BackendConnector$1;-><init>(Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-object v0
.end method

.method public static createBinaryRequest(Ljava/lang/String;[BLio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Float;",
            ">;)",
            "Linfo/flowersoft/theotown/backend/Request;"
        }
    .end annotation

    .line 99
    new-instance p2, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;[B)V

    return-object p2
.end method


# virtual methods
.method public final prepareConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 165
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x4e20

    .line 166
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 168
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    return-object p1
.end method

.method public sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/Request;",
            "Linfo/flowersoft/theotown/backend/ResponseCollector<",
            "TT;>;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    const-string v0, "Backend"

    const/4 v1, 0x0

    .line 177
    :try_start_3
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector;->prepareConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 178
    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/backend/Request;->apply(Ljava/net/URLConnection;)V

    .line 179
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 180
    invoke-interface {p3, v1, p4}, Linfo/flowersoft/theotown/backend/ResponseCollector;->collect(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_11} :catch_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_11} :catch_1e
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    if-eqz v1, :cond_4d

    .line 192
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4d

    :catchall_1c
    move-exception p1

    goto :goto_4e

    :catch_1e
    move-exception p1

    goto :goto_24

    :catch_20
    move-exception p1

    goto :goto_32

    :catch_22
    move-exception p1

    goto :goto_40

    .line 188
    :goto_24
    :try_start_24
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 189
    invoke-interface {p4, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_1c

    if-eqz v1, :cond_4d

    .line 192
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_17

    goto :goto_4d

    .line 185
    :goto_32
    :try_start_32
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    invoke-interface {p4, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_1c

    if-eqz v1, :cond_4d

    .line 192
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_17

    goto :goto_4d

    .line 182
    :goto_40
    :try_start_40
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    invoke-interface {p4, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_1c

    if-eqz v1, :cond_4d

    .line 192
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_17

    :cond_4d
    :goto_4d
    return-void

    :goto_4e
    if-eqz v1, :cond_58

    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p2

    .line 194
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    :cond_58
    :goto_58
    throw p1
.end method

.method public sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Linfo/flowersoft/theotown/backend/TextRequest;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/TextRequest;-><init>()V

    .line 201
    const-string v1, "content"

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string p2, "clientid"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string p2, "cake"

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVersion:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "clientversion"

    invoke-virtual {v0, p3, p2}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string p2, "vi"

    iget-object p3, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVI:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string p2, "compress"

    const-string p3, "1"

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string p2, "model"

    iget-object p3, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->device:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object p2, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    invoke-static {p4}, Linfo/flowersoft/theotown/backend/BackendConnector;->buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p2, p3}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public sendSecureRequest(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/backend/User;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Session;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Linfo/flowersoft/theotown/backend/User;",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/Session;",
            ")V"
        }
    .end annotation

    .line 217
    const-string v0, ""

    new-instance v1, Linfo/flowersoft/theotown/backend/TextRequest;

    invoke-direct {v1}, Linfo/flowersoft/theotown/backend/TextRequest;-><init>()V

    .line 220
    :try_start_7
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 221
    invoke-virtual {p6, p2}, Linfo/flowersoft/theotown/backend/Session;->encrypt([B)[B

    move-result-object v2

    .line 223
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 224
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 225
    const-string p2, "CBEF5C85D3C6B342"

    invoke-static {p2}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 227
    const-string v3, "user"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v3, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string p4, "cake"

    invoke-virtual {v1, p4, p5}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string p4, "session"

    invoke-virtual {p6}, Linfo/flowersoft/theotown/backend/Session;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string p4, "content"

    new-instance p5, Ljava/lang/String;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v2

    invoke-direct {p5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p4, p5}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string p4, "sign"

    new-instance p5, Ljava/lang/String;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p2

    invoke-direct {p5, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p4, p5}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string p2, "clientid"

    iget-object p4, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientId:Ljava/lang/String;

    invoke-virtual {v1, p2, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string p2, "clientversion"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVersion:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p2, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string p2, "vi"

    iget-object p4, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->clientVI:Ljava/lang/String;

    invoke-virtual {v1, p2, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string p2, "compress"

    const-string p4, "1"

    invoke-virtual {v1, p2, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string p2, "model"

    iget-object p4, p0, Linfo/flowersoft/theotown/backend/BackendConnector;->device:Ljava/lang/String;

    invoke-virtual {v1, p2, p4}, Linfo/flowersoft/theotown/backend/TextRequest;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception p2

    .line 239
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    :goto_a1
    new-instance p2, Linfo/flowersoft/theotown/backend/BackendConnector$2;

    invoke-direct {p2, p0, p6, p3}, Linfo/flowersoft/theotown/backend/BackendConnector$2;-><init>(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/Session;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    .line 282
    sget-object p3, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    invoke-virtual {p0, p1, v1, p3, p2}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector.AnonymousClass1 (info.flowersoft.theotown.backend.BackendConnector$1)
.class public Linfo/flowersoft/theotown/backend/BackendConnector$1;
.super Ljava/lang/Object;
.source "BackendConnector.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/BackendConnector;->buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;
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
.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/BackendConnector$1;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/BackendConnector$1;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V

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

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector$1;->handle(Ljava/lang/String;)V

    return-void
.end method

.method public handle(Ljava/lang/String;)V
    .registers 6

    .line 75
    const-string v0, "content"

    :try_start_2
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 77
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    goto :goto_16

    :catch_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception v0

    goto :goto_20

    .line 79
    :cond_16
    :goto_16
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/BackendConnector$1;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V
    :try_end_1b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2 .. :try_end_1b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_12

    return-void

    .line 83
    :goto_1c
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector$1;->error(Ljava/lang/Exception;)V

    goto :goto_4a

    .line 81
    :goto_20
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read json object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/BackendConnector$1;->error(Ljava/lang/Exception;)V

    :goto_4a
    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector.AnonymousClass2 (info.flowersoft.theotown.backend.BackendConnector$2)
.class public Linfo/flowersoft/theotown/backend/BackendConnector$2;
.super Ljava/lang/Object;
.source "BackendConnector.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/BackendConnector;->sendSecureRequest(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/backend/User;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Session;)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/BackendConnector;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

.field public final synthetic val$session:Linfo/flowersoft/theotown/backend/Session;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/Session;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->this$0:Linfo/flowersoft/theotown/backend/BackendConnector;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->val$session:Linfo/flowersoft/theotown/backend/Session;

    iput-object p3, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V

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

    .line 242
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector$2;->handle(Ljava/lang/String;)V

    return-void
.end method

.method public handle(Ljava/lang/String;)V
    .registers 7

    .line 246
    const-string v0, ""

    const-string v1, "\n"

    const-string v2, "content"

    :try_start_6
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 248
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 249
    iget-object v4, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->val$session:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/backend/Session;->decrypt([B)[B

    move-result-object v2

    .line 250
    const-string v4, "sign"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 252
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 254
    const-string v3, "7B70BB55032D797A"

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 260
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 261
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    invoke-static {v0, v1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 264
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 265
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :catch_6d
    move-exception p1

    goto :goto_7f

    :catch_6f
    move-exception v0

    goto :goto_83

    .line 257
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sign didn\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_79
    :goto_79
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/BackendConnector$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, v3}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V
    :try_end_7e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_6 .. :try_end_7e} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7e} :catch_6d

    return-void

    .line 272
    :goto_7f
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/BackendConnector$2;->error(Ljava/lang/Exception;)V

    goto :goto_ad

    .line 270
    :goto_83
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read json object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/BackendConnector$2;->error(Ljava/lang/Exception;)V

    :goto_ad
    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda0 (info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseCollector;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/backend/BackendConnector;->$r8$lambda$e07PEY3_59jaPFF4wzBpcVcg3uI(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda1 (info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseCollector;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/backend/BackendConnector;->$r8$lambda$pNa0ov1zL5a4kjp42CLSDVns4Qo(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda2 (info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Request;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/net/URLConnection;)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/BackendConnector;->$r8$lambda$blBLZExnP82ufuj-LAIphhbD9Gc(Ljava/net/URLConnection;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda3 (info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Request;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;->f$1:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/net/URLConnection;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/BackendConnector$$ExternalSyntheticLambda3;->f$1:[B

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/backend/BackendConnector;->$r8$lambda$Svge5htZs4Du1ytkaZExEVDBFcU(Ljava/lang/String;[BLjava/net/URLConnection;)V

    return-void
.end method
