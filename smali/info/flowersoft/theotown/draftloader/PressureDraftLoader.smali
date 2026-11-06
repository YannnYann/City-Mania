###### Class info.flowersoft.theotown.draftloader.PressureDraftLoader (info.flowersoft.theotown.draftloader.PressureDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "PressureDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "pressure"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draft/PressureDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/PressureDraft;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 25
    :try_start_8
    const-string v1, "weights"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;->loadPressureArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/PressureDraft;->weights:[F

    .line 26
    const-string v1, "tolerances"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;->loadPressureArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/PressureDraft;->tolerances:[F

    .line 27
    const-string v1, "neutrals"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;->loadPressureArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/PressureDraft;->neutrals:[F
    :try_end_20
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_8 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v1

    .line 29
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In PressureDraft "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final loadPressureArray(Ljava/lang/String;)[F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/16 v0, 0x12

    .line 37
    new-array v1, v0, [F

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ne v0, v2, :cond_22

    const/4 v0, 0x0

    .line 43
    :goto_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 44
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    return-object v1

    .line 40
    :cond_22
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Wrong vector size in draft"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
