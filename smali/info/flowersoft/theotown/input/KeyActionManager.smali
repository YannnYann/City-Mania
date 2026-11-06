###### Class info.flowersoft.theotown.input.KeyActionManager (info.flowersoft.theotown.input.KeyActionManager)
.class public final Linfo/flowersoft/theotown/input/KeyActionManager;
.super Ljava/lang/Object;
.source "KeyActionManager.java"


# direct methods
.method public static getTargetFile()Ljava/io/File;
    .registers 3

    .line 20
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v2, "key_mapping.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/input/KeyActionManager;->getTargetFile()Ljava/io/File;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_25

    .line 44
    :try_start_12
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string p0, "mapping"

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p0

    .line 46
    invoke-static {p0}, Linfo/flowersoft/theotown/input/KeyAction;->load(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_20
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_12 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_25
    return-void
.end method

.method public static save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 25
    :try_start_0
    new-instance p0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 26
    const-string v0, "mapping version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 27
    const-string v0, "version code"

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 28
    const-string v0, "version name"

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 29
    const-string v0, "time"

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 31
    invoke-static {v0}, Linfo/flowersoft/theotown/input/KeyAction;->save(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 32
    const-string v1, "mapping"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/input/KeyActionManager;->getTargetFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Linfo/flowersoft/theotown/util/Files;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
