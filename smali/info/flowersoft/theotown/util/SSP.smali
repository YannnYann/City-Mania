###### Class info.flowersoft.theotown.util.SSP (info.flowersoft.theotown.util.SSP)
.class public Linfo/flowersoft/theotown/util/SSP;
.super Ljava/lang/Object;
.source "SSP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/SSP$Writer;,
        Linfo/flowersoft/theotown/util/SSP$Reader;
    }
.end annotation


# instance fields
.field public final compress:Z

.field public final disguise:Z

.field public final encrypt:Z

.field public final name:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0, v0, v0}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP;->token:Ljava/lang/String;

    .line 74
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v1, :cond_2b

    .line 75
    iput-object v0, p0, Linfo/flowersoft/theotown/util/SSP;->token:Ljava/lang/String;

    .line 78
    :cond_2b
    iput-boolean p2, p0, Linfo/flowersoft/theotown/util/SSP;->disguise:Z

    .line 79
    iput-boolean p3, p0, Linfo/flowersoft/theotown/util/SSP;->encrypt:Z

    .line 80
    iput-boolean p4, p0, Linfo/flowersoft/theotown/util/SSP;->compress:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SSP;->saveSecured(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public static migratePrefFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 40
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_PREFS_DIR:Ljava/io/File;

    if-eqz v0, :cond_56

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".prefs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 42
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1b

    goto :goto_56

    .line 47
    :cond_1b
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_PREFS_DIR:Ljava/io/File;

    const-string v2, "theotown"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    new-instance v1, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_PREFS_DIR:Ljava/io/File;

    invoke-direct {v1, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 53
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 56
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_56
    :goto_56
    return-object p0
.end method


# virtual methods
.method public edit()Linfo/flowersoft/theotown/util/SSP$Writer;
    .registers 3

    .line 265
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 266
    new-instance v1, Linfo/flowersoft/theotown/util/SSP$3;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/util/SSP$3;-><init>(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-object v1
.end method

.method public final getSecureName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 84
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/SSP;->disguise:Z

    const/16 v1, 0x2d

    const/16 v2, 0x2b

    const/16 v3, 0x5f

    const/16 v4, 0x2f

    if-eqz v0, :cond_3c

    .line 85
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/util/SSP;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 86
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_3c
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public load()Linfo/flowersoft/theotown/util/SSP$Reader;
    .registers 5

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/SSP;->getSecureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/SSP;->getSecureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 106
    :try_start_35
    const-string v1, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    iget-boolean v1, p0, Linfo/flowersoft/theotown/util/SSP;->encrypt:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/SSP;->xorBytes([BLjava/lang/String;)V

    goto :goto_55

    :catch_4f
    move-exception v0

    goto :goto_a1

    :catch_51
    move-exception v0

    goto :goto_a5

    :catch_53
    move-exception v0

    goto :goto_a9

    .line 111
    :cond_55
    :goto_55
    iget-boolean v1, p0, Linfo/flowersoft/theotown/util/SSP;->compress:Z

    if-eqz v1, :cond_6f

    .line 112
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    invoke-static {v1, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 122
    :cond_6f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x10

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 123
    array-length v2, v0

    add-int/lit8 v2, v2, -0x10

    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 125
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 126
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 127
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v0, "prefs"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 130
    new-instance v1, Linfo/flowersoft/theotown/util/SSP$1;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/util/SSP$1;-><init>(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_a0} :catch_53
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_a0} :catch_51
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_35 .. :try_end_a0} :catch_4f

    return-object v1

    .line 202
    :goto_a1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ac

    .line 200
    :goto_a5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ac

    .line 198
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    :cond_ac
    :goto_ac
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 208
    new-instance v1, Linfo/flowersoft/theotown/util/SSP$2;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/util/SSP$2;-><init>(Linfo/flowersoft/theotown/util/SSP;Lcom/badlogic/gdx/Preferences;)V

    return-object v1
.end method

.method public final saveSecured(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 342
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 344
    :try_start_5
    const-string v1, "prefs"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 345
    const-string p1, "version"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 346
    const-string p1, "version code"

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 347
    const-string p1, "time"

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 348
    const-string p1, "extra"

    const-string v1, "Lobby was here"

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_2b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    :goto_30
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 354
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    :try_start_3d
    iget-boolean v1, p0, Linfo/flowersoft/theotown/util/SSP;->compress:Z

    if-eqz v1, :cond_49

    new-instance v1, Linfo/flowersoft/theotown/util/SSP$4;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/util/SSP$4;-><init>(Linfo/flowersoft/theotown/util/SSP;Ljava/io/OutputStream;)V

    goto :goto_4a

    :catch_47
    move-exception p1

    goto :goto_58

    :cond_49
    move-object v1, v0

    .line 362
    :goto_4a
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 363
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 364
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_57} :catch_47

    goto :goto_5b

    .line 366
    :goto_58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    :goto_5b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 370
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/SSP;->encrypt:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/SSP;->xorBytes([BLjava/lang/String;)V

    .line 371
    :cond_68
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 373
    iget-object p1, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SSP;->getSecureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object p1

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/util/SSP;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/SSP;->getSecureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 376
    invoke-interface {p1}, Lcom/badlogic/gdx/Preferences;->flush()V

    return-void
.end method

.method public final xorBytes([BLjava/lang/String;)V
    .registers 6

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":some text"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object p2

    const/4 v0, 0x0

    .line 94
    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 95
    aget-byte v1, p1, v0

    array-length v2, p2

    rem-int v2, v0, v2

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-void
.end method

###### Class info.flowersoft.theotown.util.SSP.AnonymousClass1 (info.flowersoft.theotown.util.SSP$1)
.class Linfo/flowersoft/theotown/util/SSP$1;
.super Ljava/lang/Object;
.source "SSP.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SSP$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/SSP;

.field public final synthetic val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V
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

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP$1;->this$0:Linfo/flowersoft/theotown/util/SSP;

    iput-object p2, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    iget-object v1, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x0

    .line 171
    :goto_e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 172
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v4, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 175
    instance-of v5, v4, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v5, :cond_2d

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/util/SSP$1;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 178
    :cond_2d
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_33
    return-object v0
.end method

.method public getArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$1;->val$prefs:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 156
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    .line 157
    :goto_e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 158
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-object p2
.end method

###### Class info.flowersoft.theotown.util.SSP.AnonymousClass2 (info.flowersoft.theotown.util.SSP$2)
.class Linfo/flowersoft/theotown/util/SSP$2;
.super Ljava/lang/Object;
.source "SSP.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SSP$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/SSP;

.field public final synthetic val$pref:Lcom/badlogic/gdx/Preferences;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SSP;Lcom/badlogic/gdx/Preferences;)V
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

    .line 208
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP$2;->this$0:Linfo/flowersoft/theotown/util/SSP;

    iput-object p2, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Preferences;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    .line 222
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    .line 225
    :catch_7
    :try_start_7
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    long-to-int v1, p2

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/Preferences;->getInteger(Ljava/lang/String;I)I

    move-result p1
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_16} :catch_17

    int-to-long p2, p1

    :catch_17
    :cond_17
    return-wide p2
.end method

.method public getObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$2;->val$pref:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->get()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_11

    .line 241
    check-cast p1, Ljava/util/Set;

    return-object p1

    :cond_11
    return-object p2
.end method

###### Class info.flowersoft.theotown.util.SSP.AnonymousClass3 (info.flowersoft.theotown.util.SSP$3)
.class Linfo/flowersoft/theotown/util/SSP$3;
.super Ljava/lang/Object;
.source "SSP.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SSP$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/SSP;

.field public final synthetic val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V
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

    .line 266
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP$3;->this$0:Linfo/flowersoft/theotown/util/SSP;

    iput-object p2, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->this$0:Linfo/flowersoft/theotown/util/SSP;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/SSP;->access$000(Linfo/flowersoft/theotown/util/SSP;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public putArray(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 4

    .line 328
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 270
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .line 279
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5

    .line 288
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putObject(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 319
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 297
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 307
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_9

    :catch_19
    move-exception p1

    goto :goto_21

    .line 310
    :cond_1b
    iget-object p2, p0, Linfo/flowersoft/theotown/util/SSP$3;->val$dst:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_20
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_20} :catch_19

    return-void

    .line 312
    :goto_21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.SSP.AnonymousClass4 (info.flowersoft.theotown.util.SSP$4)
.class public Linfo/flowersoft/theotown/util/SSP$4;
.super Ljava/util/zip/GZIPOutputStream;
.source "SSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/SSP;->saveSecured(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/SSP;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SSP;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SSP$4;->this$0:Linfo/flowersoft/theotown/util/SSP;

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 359
    iget-object p1, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.SSP.Reader (info.flowersoft.theotown.util.SSP$Reader)
.class public interface abstract Linfo/flowersoft/theotown/util/SSP$Reader;
.super Ljava/lang/Object;
.source "SSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Reader"
.end annotation


# virtual methods
.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.util.SSP.Writer (info.flowersoft.theotown.util.SSP$Writer)
.class public interface abstract Linfo/flowersoft/theotown/util/SSP$Writer;
.super Ljava/lang/Object;
.source "SSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Writer"
.end annotation


# virtual methods
.method public abstract apply()V
.end method

.method public abstract putArray(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONArray;)V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract putObject(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
