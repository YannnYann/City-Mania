###### Class info.flowersoft.theotown.backend.FileUploader (info.flowersoft.theotown.backend.FileUploader)
.class public Linfo/flowersoft/theotown/backend/FileUploader;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;
    }
.end annotation


# instance fields
.field public final pendingFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;",
            ">;"
        }
    .end annotation
.end field

.field public taskIsRunning:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    .line 36
    const-string v0, "connection"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 37
    const-string v1, "file api url"

    const-string v2, "https://api.theotown.com/user"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/backend/FileUploader;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/FileUploader;->scheduleTask()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/backend/FileUploader;Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/backend/FileUploader;->retry(Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_4c

    .line 50
    new-instance v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;-><init>(Linfo/flowersoft/theotown/backend/FileUploader$1;)V

    .line 51
    iput-object p2, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->file:Ljava/io/File;

    .line 52
    iput-object p1, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->role:Ljava/lang/String;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->name:Ljava/lang/String;

    .line 54
    iput-object v1, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->md5:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->size:I

    .line 56
    iput-object p3, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->onSuccess:Lio/blueflower/stapel2d/util/Setter;

    .line 57
    iput-object p4, v2, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->onError:Lio/blueflower/stapel2d/util/Setter;

    if-nez p1, :cond_47

    return v0

    .line 61
    :cond_47
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/FileUploader;->appendPendingFile(Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;)V

    const/4 p1, 0x1

    return p1

    :catch_4c
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final appendPendingFile(Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;)V
    .registers 4

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-boolean p1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->taskIsRunning:Z

    if-nez p1, :cond_17

    .line 72
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/FileUploader;->scheduleTask()V

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 74
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p1
.end method

.method public primitiveStreamUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 16

    .line 151
    const-string v0, "status"

    .line 154
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileUploader"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    const/4 v4, 0x0

    .line 160
    :try_start_2c
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Linfo/flowersoft/theotown/backend/FileUploader;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/4 v5, 0x1

    .line 161
    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"\r\nContent-Type: image/jpeg\r\n\r\n"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 167
    const-string v5, "\r\n-----------------------------4664151417711--\r\n"

    .line 169
    const-string v6, "Content-Type"

    const-string v7, "multipart/form-data; boundary=---------------------------4664151417711"

    invoke-virtual {p1, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "Content-Length"

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x30

    add-int/2addr v7, p4

    .line 172
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_82} :catch_145
    .catchall {:try_start_2c .. :try_end_82} :catchall_142

    .line 177
    :try_start_82
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/OutputStream;->write([B)V

    .line 181
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object p2

    const/4 v7, 0x0

    move v8, v7

    .line 183
    :cond_8f
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_a3

    .line 185
    invoke-virtual {v6, p2, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v8, v9

    goto :goto_a6

    :catchall_9a
    move-exception p1

    move-object p2, v4

    :goto_9c
    move-object v4, v6

    goto/16 :goto_16e

    :catch_9f
    move-exception p1

    move-object p2, v4

    goto/16 :goto_148

    :cond_a3
    if-gez v9, :cond_a6

    goto :goto_ae

    :cond_a6
    :goto_a6
    if-ge v8, p4, :cond_ae

    .line 190
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v9

    if-nez v9, :cond_8f

    .line 192
    :cond_ae
    :goto_ae
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {v6, p4}, Ljava/io/OutputStream;->write([B)V

    .line 193
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_bc} :catch_9f
    .catchall {:try_start_82 .. :try_end_bc} :catchall_9a

    .line 197
    :try_start_bc
    sget-object p4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "Read..."

    invoke-interface {p4, v3, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    :cond_c8
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_e1

    .line 202
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 203
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    :catchall_d7
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_9c

    :catch_dc
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_148

    .line 205
    :cond_e1
    :goto_e1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_c8

    .line 206
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_eb} :catch_dc
    .catchall {:try_start_bc .. :try_end_eb} :catchall_d7

    .line 208
    :try_start_eb
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v5, v3, p4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object p4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upload took "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v3, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance p4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p4, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_123} :catch_13d
    .catchall {:try_start_eb .. :try_end_123} :catchall_d7

    if-eqz v1, :cond_12f

    .line 222
    :try_start_125
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_128

    .line 226
    :catch_128
    :try_start_128
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_12b

    .line 230
    :catch_12b
    :try_start_12b
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_12e

    :catch_12e
    return-object v4

    .line 215
    :cond_12f
    :try_start_12f
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_133} :catch_13d
    .catchall {:try_start_12f .. :try_end_133} :catchall_d7

    .line 222
    :try_start_133
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_136} :catch_136

    .line 226
    :catch_136
    :try_start_136
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_139

    .line 230
    :catch_139
    :try_start_139
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13c

    :catch_13c
    return-object p2

    :catch_13d
    move-exception p4

    move-object v4, p2

    move-object p2, p1

    move-object p1, p4

    goto :goto_148

    :catchall_142
    move-exception p1

    move-object p2, v4

    goto :goto_16e

    :catch_145
    move-exception p1

    move-object p2, v4

    move-object v6, p2

    .line 218
    :goto_148
    :try_start_148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v4, :cond_153

    .line 219
    const-string p1, "No response"

    goto :goto_164

    :catchall_150
    move-exception p1

    goto/16 :goto_9c

    :cond_153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Response: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_164
    .catchall {:try_start_148 .. :try_end_164} :catchall_150

    .line 222
    :goto_164
    :try_start_164
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_167

    .line 226
    :catch_167
    :try_start_167
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16a

    .line 230
    :catch_16a
    :try_start_16a
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_16d} :catch_16d

    :catch_16d
    return-object p1

    .line 222
    :goto_16e
    :try_start_16e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_171} :catch_171

    .line 226
    :catch_171
    :try_start_171
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_174} :catch_174

    .line 230
    :catch_174
    :try_start_174
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_177} :catch_177

    .line 233
    :catch_177
    throw p1
.end method

.method public final retry(Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;Ljava/lang/String;)V
    .registers 6

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    monitor-enter v0

    .line 79
    :try_start_3
    iget v1, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->tries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->tries:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_21

    .line 81
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_21

    .line 85
    :cond_15
    iget-object p2, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/FileUploader;->scheduleTask()V

    goto :goto_2b

    :catchall_1f
    move-exception p1

    goto :goto_2d

    .line 82
    :cond_21
    :goto_21
    iget-object p1, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->onError:Lio/blueflower/stapel2d/util/Setter;

    if-eqz p1, :cond_28

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 83
    :cond_28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/FileUploader;->scheduleTask()V

    .line 88
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_1f

    throw p1
.end method

.method public final scheduleTask()V
    .registers 8

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 94
    iput-boolean v2, p0, Linfo/flowersoft/theotown/backend/FileUploader;->taskIsRunning:Z

    .line 95
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    goto :goto_58

    .line 98
    :cond_12
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader;->pendingFiles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    const/4 v2, 0x1

    .line 99
    iput-boolean v2, p0, Linfo/flowersoft/theotown/backend/FileUploader;->taskIsRunning:Z

    .line 101
    new-instance v2, Linfo/flowersoft/theotown/backend/Service;

    const-string v3, "user/upload_request"

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v3

    const-string v4, "upload file"

    .line 103
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v4

    const-string v5, "name"

    iget-object v6, v1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->name:Ljava/lang/String;

    .line 104
    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v4

    const-string v5, "size"

    iget v6, v1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->size:I

    .line 105
    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v4

    const-string v5, "md5"

    iget-object v6, v1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->md5:Ljava/lang/String;

    .line 106
    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/backend/FileUploader$1;

    invoke-direct {v5, p0, v1}, Linfo/flowersoft/theotown/backend/FileUploader$1;-><init>(Linfo/flowersoft/theotown/backend/FileUploader;Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;)V

    .line 102
    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 138
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_10

    throw v1
.end method

###### Class info.flowersoft.theotown.backend.FileUploader.AnonymousClass1 (info.flowersoft.theotown.backend.FileUploader$1)
.class public Linfo/flowersoft/theotown/backend/FileUploader$1;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/FileUploader;->scheduleTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/FileUploader;

.field public final synthetic val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/FileUploader;Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;)V
    .registers 3
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

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->this$0:Linfo/flowersoft/theotown/backend/FileUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 133
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUploader"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->this$0:Linfo/flowersoft/theotown/backend/FileUploader;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    const-string v2, "status"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/backend/FileUploader;->access$200(Linfo/flowersoft/theotown/backend/FileUploader;Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 8

    .line 110
    const-string v0, "file id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    const-string v1, "key"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :try_start_c
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    iget-object v3, v3, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    iget-object v2, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->this$0:Linfo/flowersoft/theotown/backend/FileUploader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload_file?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "&key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    iget-object v4, v3, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->name:Ljava/lang/String;

    iget v3, v3, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->size:I

    .line 114
    invoke-virtual {v2, p1, v4, v1, v3}, Linfo/flowersoft/theotown/backend/FileUploader;->primitiveStreamUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6b

    .line 121
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->onSuccess:Lio/blueflower/stapel2d/util/Setter;

    if-eqz p1, :cond_65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_65

    :catch_63
    move-exception p1

    goto :goto_73

    .line 122
    :cond_65
    :goto_65
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->this$0:Linfo/flowersoft/theotown/backend/FileUploader;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/FileUploader;->access$100(Linfo/flowersoft/theotown/backend/FileUploader;)V

    return-void

    .line 124
    :cond_6b
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->this$0:Linfo/flowersoft/theotown/backend/FileUploader;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/FileUploader$1;->val$pendingFile:Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/backend/FileUploader;->access$200(Linfo/flowersoft/theotown/backend/FileUploader;Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_72} :catch_63

    return-void

    .line 127
    :goto_73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.FileUploader.PendingFile (info.flowersoft.theotown.backend.FileUploader$PendingFile)
.class public Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingFile"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public md5:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public onError:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onSuccess:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public role:Ljava/lang/String;

.field public size:I

.field public tries:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/backend/FileUploader$1;)V
    .registers 2

    .line 237
    invoke-direct {p0}, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 249
    instance-of v0, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    if-eqz v0, :cond_f

    .line 250
    check-cast p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;

    .line 251
    iget-object p1, p1, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->name:Ljava/lang/String;

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/FileUploader$PendingFile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
