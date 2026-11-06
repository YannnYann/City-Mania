###### Class info.flowersoft.theotown.util.ScreenshotUploader (info.flowersoft.theotown.util.ScreenshotUploader)
.class public Linfo/flowersoft/theotown/util/ScreenshotUploader;
.super Ljava/lang/Object;
.source "ScreenshotUploader.java"


# instance fields
.field public abortReason:Ljava/lang/String;

.field public aborted:Z

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public progress:F

.field public running:Z

.field public success:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    .line 49
    iput-object p2, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/ScreenshotUploader;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->aborted:Z

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/util/ScreenshotUploader;F)F
    .registers 2

    .line 35
    iput p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->progress:F

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/util/ScreenshotUploader;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V
    .registers 4

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->upload(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/util/ScreenshotUploader;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->running:Z

    return p1
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/util/ScreenshotUploader;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->success:Z

    return p1
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->aborted:Z

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->running:Z

    .line 95
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abortReason:Ljava/lang/String;

    return-void
.end method

.method public final buildHeader()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 8

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPeople;

    .line 151
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 152
    iget-object v2, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 153
    iget-object v3, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 155
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 157
    :try_start_2a
    const-string v5, "id"

    iget-object v6, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 158
    const-string v5, "name"

    iget-object v6, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 159
    const-string v5, "people"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 160
    const-string v0, "gamemode"

    iget-object v5, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 161
    const-string v0, "day"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v5

    invoke-virtual {v4, v0, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 162
    const-string v0, "budget"

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 163
    const-string v0, "happiness"

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v4, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 164
    const-string v0, "diamonds"

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 165
    const-string v0, "seed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_a1
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2a .. :try_end_a1} :catch_a2

    return-object v4

    :catch_a2
    move-exception v0

    .line 167
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Header"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v4
.end method

.method public final compress(Ljava/lang/String;)[B
    .registers 5

    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 177
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 178
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_27

    :catch_18
    move-exception p1

    .line 180
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Compress"

    invoke-interface {v1, v2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    .line 183
    :goto_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getAbortReason()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abortReason:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .line 115
    iget v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->progress:F

    return v0
.end method

.method public isAborted()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->aborted:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->running:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->success:Z

    return v0
.end method

.method public final requestUpload([B)V
    .registers 7

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 123
    :try_start_b
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 124
    const-string v2, "id"

    iget-object v3, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 125
    const-string v2, "size"

    array-length v3, p1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 126
    const-string v2, "md5"

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_2e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v2

    .line 128
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Upload request"

    invoke-interface {v3, v4, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 131
    :goto_37
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/backend/Backend$Task;

    new-instance v4, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;

    invoke-direct {v4, p0, v0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;-><init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;Ljava/lang/String;[B)V

    const-string p1, "gallery/upload_scr_request"

    invoke-direct {v3, p1, v1, v4}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public upload(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 18

    move-object/from16 v1, p0

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "gallery"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 55
    iget-boolean v2, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->running:Z

    if-nez v2, :cond_d5

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->running:Z

    const/4 v3, 0x0

    .line 57
    iput-boolean v3, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->aborted:Z

    .line 58
    iput-boolean v3, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->success:Z

    .line 59
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    new-instance v5, Linfo/flowersoft/theotown/resources/ResolutionManager;

    iget-object v6, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getWidth()I

    move-result v6

    iget-object v7, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Linfo/flowersoft/theotown/resources/ResolutionManager;-><init>(II)V

    sget v6, Linfo/flowersoft/theotown/resources/Settings;->displayResolution:I

    .line 62
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getFactor(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 63
    iget-object v6, v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/2addr v5, v6

    .line 64
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v3

    .line 66
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/2addr v7, v5

    const-string v8, "max upload size"

    const/16 v9, 0x400

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-le v7, v8, :cond_6a

    mul-int/lit8 v5, v5, 0x2

    move v6, v2

    goto :goto_4f

    :cond_6a
    if-le v5, v2, :cond_a7

    move v2, v6

    .line 72
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v6, v0, v7, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 73
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    if-eqz v2, :cond_88

    .line 74
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    goto :goto_8a

    :cond_88
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    :goto_8a
    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v14

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    goto :goto_a9

    :cond_a7
    move-object/from16 v6, p1

    .line 78
    :goto_a9
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>()V

    const/16 v2, 0x9

    .line 79
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 80
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    .line 82
    :try_start_b6
    invoke-virtual {v0, v4, v6}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 83
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->requestUpload([B)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c0} :catch_c3

    :goto_c0
    move-object/from16 v7, p1

    goto :goto_cf

    :catch_c3
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    goto :goto_c0

    :goto_cf
    if-eq v6, v7, :cond_d4

    .line 89
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_d4
    return-void

    .line 55
    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Can only upload one at a time"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final upload(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V
    .registers 8

    .line 187
    const-string v0, "file id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    const-string v1, "key"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gallery/upload_scr?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&user_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->buildHeader()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->compress(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    :try_start_4b
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5f} :catch_60

    goto :goto_6f

    :catch_60
    move-exception p3

    .line 203
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Upload"

    invoke-interface {v0, v2, p3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    .line 206
    :goto_6f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 209
    new-instance v0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;-><init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V

    .line 228
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->getConnector()Linfo/flowersoft/theotown/backend/BackendConnector;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/util/ScreenshotUploader$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/util/ScreenshotUploader$3;-><init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V

    .line 230
    invoke-static {p2, p3, v2}, Linfo/flowersoft/theotown/backend/BackendConnector;->createBinaryRequest(Ljava/lang/String;[BLio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Request;

    move-result-object p2

    sget-object p3, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    .line 237
    invoke-static {v0}, Linfo/flowersoft/theotown/backend/BackendConnector;->buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v0

    .line 228
    invoke-virtual {v1, p1, p2, p3, v0}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.ScreenshotUploader.AnonymousClass1 (info.flowersoft.theotown.util.ScreenshotUploader$1)
.class Linfo/flowersoft/theotown/util/ScreenshotUploader$1;
.super Ljava/lang/Object;
.source "ScreenshotUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/ScreenshotUploader;->requestUpload([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

.field public final synthetic val$data:[B

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;Ljava/lang/String;[B)V
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

    .line 134
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 137
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$000(Linfo/flowersoft/theotown/util/ScreenshotUploader;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 138
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$102(Linfo/flowersoft/theotown/util/ScreenshotUploader;F)F

    .line 140
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->val$name:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->val$data:[B

    invoke-static {p1, p2, v0, v1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$200(Linfo/flowersoft/theotown/util/ScreenshotUploader;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V

    return-void

    .line 142
    :cond_26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$1;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    const-string v1, "Unknown"

    invoke-virtual {p2, p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

###### Class info.flowersoft.theotown.util.ScreenshotUploader.AnonymousClass2 (info.flowersoft.theotown.util.ScreenshotUploader$2)
.class Linfo/flowersoft/theotown/util/ScreenshotUploader$2;
.super Ljava/lang/Object;
.source "ScreenshotUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/ScreenshotUploader;->upload(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    .line 224
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "General"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$302(Linfo/flowersoft/theotown/util/ScreenshotUploader;Z)Z

    .line 214
    const-string v0, "status"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 215
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$402(Linfo/flowersoft/theotown/util/ScreenshotUploader;Z)Z

    return-void

    .line 217
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

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

    .line 209
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader$2;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.ScreenshotUploader.AnonymousClass3 (info.flowersoft.theotown.util.ScreenshotUploader$3)
.class Linfo/flowersoft/theotown/util/ScreenshotUploader$3;
.super Ljava/lang/Object;
.source "ScreenshotUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/ScreenshotUploader;->upload(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$3;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Float;)V
    .registers 3

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenshotUploader$3;->this$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->access$102(Linfo/flowersoft/theotown/util/ScreenshotUploader;F)F

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 230
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ScreenshotUploader$3;->set(Ljava/lang/Float;)V

    return-void
.end method
