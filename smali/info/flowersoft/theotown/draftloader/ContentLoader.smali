###### Class info.flowersoft.theotown.draftloader.ContentLoader (info.flowersoft.theotown.draftloader.ContentLoader)
.class public final Linfo/flowersoft/theotown/draftloader/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;


# static fields
.field public static appendFunction:Lvm2/lib/OneArgFunction;

.field public static mergeFunction:Lvm2/lib/ThreeArgFunction;


# instance fields
.field public final PLATFORM_ID:Ljava/lang/String;

.field public currentObject:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draftloader/DraftLoader;",
            ">;"
        }
    .end annotation
.end field

.field public patchTime:J

.field public final tagToLoader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/draftloader/DraftLoader;",
            ">;"
        }
    .end annotation
.end field

.field public final watchdog:Linfo/flowersoft/theotown/util/Watchdog;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->PLATFORM_ID:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loaders:Ljava/util/List;

    const-wide/16 v3, 0x0

    .line 83
    iput-wide v3, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    .line 86
    new-instance v1, Linfo/flowersoft/theotown/util/Watchdog;

    const-string v3, "loading"

    .line 87
    invoke-static {v3}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    const-string v4, "content watchdog timeout"

    const/16 v5, 0x2710

    .line 88
    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4, p0}, Linfo/flowersoft/theotown/util/Watchdog;-><init>(JLinfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    .line 90
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ColorDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ColorDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/PressureDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ShipDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ShipDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Linfo/flowersoft/theotown/draftloader/SiteDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/SiteDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Linfo/flowersoft/theotown/draftloader/WireDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/WireDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PipeDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/PipeDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ZoneDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ZoneDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Linfo/flowersoft/theotown/draftloader/RailDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/RailDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TrainDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TrainDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Linfo/flowersoft/theotown/draftloader/RankDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/RankDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TaskDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TaskDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ToolDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ToolDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Linfo/flowersoft/theotown/draftloader/SoundDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/SoundDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Linfo/flowersoft/theotown/draftloader/MusicDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/MusicDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TemplateDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TemplateDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Linfo/flowersoft/theotown/draftloader/DataDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/DataDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ScriptDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ScriptDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TranslationDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TranslationDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FenceDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FenceDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ToolGroupDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ToolGroupDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Linfo/flowersoft/theotown/draftloader/ScenarioDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ScenarioDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Linfo/flowersoft/theotown/draftloader/HeightMapDraftLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/HeightMapDraftLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;-><init>()V

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->tagToLoader:Ljava/util/Map;

    move v1, v2

    .line 136
    :goto_199
    iget-object v3, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e0

    .line 137
    iget-object v3, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;

    .line 139
    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->setup(Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;)V

    .line 141
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getLoadingTags()[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 142
    :goto_1b1
    array-length v6, v4

    if-ge v5, v6, :cond_1dd

    .line 143
    aget-object v6, v4, v5

    .line 144
    iget-object v7, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->tagToLoader:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c6

    .line 147
    iget-object v7, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->tagToLoader:Ljava/util/Map;

    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b1

    .line 145
    :cond_1c6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple use of draft type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_199

    :cond_1e0
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/draftloader/ContentLoader;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->currentObject:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public final addPatches(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 25

    move-object/from16 v0, p1

    if-eqz v0, :cond_141

    const/4 v1, 0x0

    move v2, v1

    .line 419
    :goto_6
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_141

    .line 420
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_138

    .line 422
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->copy()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 423
    const-string v4, "patch config"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 425
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_23

    :cond_22
    move-object v5, v3

    .line 429
    :goto_23
    const-string v4, "ids"

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v6

    .line 430
    const-string v7, "filter ids"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v8

    .line 431
    const-string v9, "mdc"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 432
    const-string v12, "min version"

    invoke-virtual {v5, v12, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 433
    const-string v14, "max version"

    invoke-virtual {v5, v14, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const/4 v1, 0x0

    .line 434
    const-string v10, "experiment name"

    invoke-virtual {v5, v10, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v0, "experiment value"

    move/from16 v17, v2

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v18, v3

    .line 437
    const-string v3, "start day"

    move-object/from16 v19, v6

    move/from16 v16, v11

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v20, v8

    .line 438
    const-string v8, "start month"

    move/from16 v21, v2

    invoke-virtual {v5, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v22, v1

    .line 439
    const-string v1, "day length"

    invoke-virtual {v5, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 441
    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v5, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    invoke-virtual {v5, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v5, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    invoke-virtual {v5, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v19, :cond_13a

    .line 453
    invoke-virtual/range {v19 .. v19}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_13a

    :cond_98
    if-gez v11, :cond_9e

    if-gez v2, :cond_9e

    if-ltz v6, :cond_a8

    .line 458
    :cond_9e
    sget-object v0, Linfo/flowersoft/theotown/util/DateUtil;->INSTANCE:Linfo/flowersoft/theotown/util/DateUtil;

    .line 459
    invoke-virtual {v0, v11, v2, v6}, Linfo/flowersoft/theotown/util/DateUtil;->checkDate(III)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_13a

    :cond_a8
    if-lez v13, :cond_b0

    .line 464
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-ge v0, v13, :cond_b0

    goto/16 :goto_13a

    :cond_b0
    if-lez v15, :cond_b8

    .line 466
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-le v0, v15, :cond_b8

    goto/16 :goto_13a

    :cond_b8
    if-eqz v22, :cond_d0

    .line 471
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d0

    .line 472
    invoke-static {}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getValue(Ljava/lang/String;)I

    move-result v0

    move/from16 v1, v21

    if-eq v0, v1, :cond_d0

    goto/16 :goto_13a

    :cond_d0
    if-nez v20, :cond_d4

    if-lez v16, :cond_10b

    :cond_d4
    const/4 v0, 0x1

    if-eqz v20, :cond_f7

    .line 481
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->getNumId()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 482
    :goto_df
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_f8

    if-nez v4, :cond_f8

    move-object/from16 v5, v20

    .line 483
    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-nez v6, :cond_f2

    move v4, v0

    :cond_f2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v5

    goto :goto_df

    :cond_f7
    const/4 v4, 0x0

    :cond_f8
    if-ltz v16, :cond_107

    .line 488
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    move/from16 v2, v16

    if-lt v1, v2, :cond_107

    goto :goto_108

    :cond_107
    move v0, v4

    :goto_108
    if-nez v0, :cond_10b

    goto :goto_13a

    :cond_10b
    const/4 v0, 0x0

    .line 494
    :goto_10c
    invoke-virtual/range {v19 .. v19}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_13a

    move-object/from16 v1, v19

    .line 495
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->PATCHES:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_12c

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 499
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->PATCHES:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12c
    move-object/from16 v2, v18

    .line 501
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    goto :goto_10c

    :cond_138
    move/from16 v17, v2

    :cond_13a
    :goto_13a
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p1

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_141
    return-void
.end method

.method public analyzeContents()V
    .registers 10

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    const-string v2, "Residential"

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->RESIDENTIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-direct {v1, v2, v3}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    const-string v2, "Commercial"

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->COMMERCIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-direct {v1, v2, v3}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    const-string v2, "Industrial"

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->INDUSTRIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-direct {v1, v2, v3}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/Tuple;

    const/4 v2, 0x3

    .line 640
    new-array v3, v2, [I

    .line 641
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 642
    iget v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    goto :goto_46

    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v2, :cond_2d

    .line 645
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ContentAnalyzer"

    invoke-interface {v5, v6, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    goto :goto_5e

    .line 649
    :cond_8f
    new-instance v0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    return-void
.end method

.method public fixDrafts()V
    .registers 5

    const/4 v0, 0x0

    .line 620
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 621
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 622
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v2, :cond_25

    .line 623
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->needsRoad:Z

    if-nez v3, :cond_25

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-nez v3, :cond_1e

    goto :goto_25

    .line 625
    :cond_1e
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    .line 626
    iput-boolean v1, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->needsRoad:Z

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method public handle(JLjava/lang/Object;)V
    .registers 8

    .line 654
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Watchdog"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms when processing "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadContents(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Linfo/flowersoft/theotown/util/ProgressSetter;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 205
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Watchdog;->start()V

    const/4 v3, 0x1

    .line 207
    new-array v4, v3, [I

    .line 210
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;

    invoke-direct {v0, v1, v2, v4}, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;-><init>(Linfo/flowersoft/theotown/draftloader/ContentLoader;Ljava/util/List;[I)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->appendFunction:Lvm2/lib/OneArgFunction;

    .line 217
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ContentLoader$2;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/draftloader/ContentLoader$2;-><init>(Linfo/flowersoft/theotown/draftloader/ContentLoader;)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->mergeFunction:Lvm2/lib/ThreeArgFunction;

    const/4 v5, 0x0

    .line 230
    :try_start_1b
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    const-string v6, "Add native patches"

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move v7, v6

    .line 231
    :goto_24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_52
    .catchall {:try_start_1b .. :try_end_28} :catchall_3b

    if-ge v7, v0, :cond_57

    .line 233
    :try_start_2a
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2c} :catch_42
    .catchall {:try_start_2a .. :try_end_2c} :catchall_3b

    move-object/from16 v8, p1

    :try_start_2e
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->addPatches(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_40
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3b

    goto :goto_4f

    :catchall_3b
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_3e5

    :catch_40
    move-exception v0

    goto :goto_45

    :catch_42
    move-exception v0

    move-object/from16 v8, p1

    .line 236
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    sget-object v9, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v10, "Add patches"

    invoke-interface {v9, v10, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :catch_52
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_3e1

    .line 243
    :cond_57
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    const-string v7, "Add config patches"

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    .line 244
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v7, "patches"

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->addPatches(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 245
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_78

    .line 246
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v7, "test patches"

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->addPatches(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 251
    :cond_78
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    const-string v7, "Prepare loaders"

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    .line 252
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draftloader/DraftLoader;

    .line 253
    iget-object v8, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " loader"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->beforeLoading()V

    goto :goto_85

    .line 258
    :cond_b0
    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;->getActive()Z

    move-result v7

    const-wide/16 v8, 0x0

    move v10, v6

    move-wide v11, v8

    move-wide v13, v11

    .line 261
    :goto_bb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_27f

    .line 262
    aput v10, v4, v6

    add-int/lit8 v0, v10, 0x1

    .line 263
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v16, v6

    move-object/from16 v6, p3

    invoke-interface {v6, v0, v15}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    .line 264
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/ContentData;

    cmp-long v15, v11, v8

    if-nez v15, :cond_de

    .line 267
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v11

    .line 270
    :cond_de
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/CurrentDirContentData;

    if-eqz v15, :cond_ec

    .line 272
    check-cast v0, Linfo/flowersoft/theotown/resources/CurrentDirContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/CurrentDirContentData;->getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    goto/16 :goto_1ae

    .line 274
    :cond_ec
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/CurrentFileContentData;

    if-eqz v15, :cond_fa

    .line 276
    check-cast v0, Linfo/flowersoft/theotown/resources/CurrentFileContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/CurrentFileContentData;->getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    goto/16 :goto_1ae

    .line 278
    :cond_fa
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/PrivateMarker;

    if-eqz v15, :cond_102

    .line 279
    sput-boolean v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    goto/16 :goto_1ae

    .line 281
    :cond_102
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/PublicMarker;

    if-eqz v15, :cond_10a

    .line 282
    sput-boolean v16, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    goto/16 :goto_1ae

    .line 284
    :cond_10a
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    if-eqz v15, :cond_127

    .line 285
    move-object v15, v0

    check-cast v15, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/resources/RootPluginFile;->getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v15

    sput-object v15, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 286
    sput-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 287
    sget-object v15, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    sput-object v15, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 288
    check-cast v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/RootPluginFile;->getExternalPluginData()Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->EXTERNAL_PLUGIN_DATA:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    goto/16 :goto_1ae

    .line 290
    :cond_127
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;

    if-eqz v15, :cond_135

    .line 291
    check-cast v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/PluginIdContentData;->getId()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    goto/16 :goto_1ae

    .line 293
    :cond_135
    instance-of v15, v0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;

    if-eqz v15, :cond_26a

    .line 294
    check-cast v0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/BeginManifestContentData;->getJson()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v15
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_13f} :catch_52
    .catchall {:try_start_45 .. :try_end_13f} :catchall_3b

    .line 296
    :try_start_13f
    new-instance v0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-direct {v0, v15}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 297
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz v8, :cond_19a

    .line 298
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isOnce()Z

    move-result v9

    if-nez v9, :cond_19a

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isOnce()Z

    move-result v9

    if-eqz v9, :cond_15f

    goto :goto_19a

    .line 299
    :cond_15f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A manifest of id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was defined before in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    .line 300
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getPluginPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; ensure that you have no duplicates"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_197
    move-exception v0

    goto/16 :goto_262

    :cond_19a
    :goto_19a
    if-eqz v8, :cond_1b2

    :goto_19c
    add-int/lit8 v0, v10, 0x1

    .line 303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1ae

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Linfo/flowersoft/theotown/resources/EndManifestContentData;

    if-nez v8, :cond_1ae

    move v10, v0

    goto :goto_19c

    :cond_1ae
    :goto_1ae
    move-object/from16 v17, v5

    goto/16 :goto_33f

    .line 306
    :cond_1b2
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getMinVersion()I

    move-result v8

    sget v9, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-gt v8, v9, :cond_23d

    .line 310
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v8}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->supportsPlatform(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21c

    .line 313
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setManifestPath(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 315
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    sget-object v9, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ed

    .line 316
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v8

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setPluginPath(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 317
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->overallSize()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setSize(J)V

    goto :goto_1fc

    .line 319
    :cond_1ed
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setPluginPath(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 320
    sget-object v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->length()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setSize(J)V

    .line 323
    :goto_1fc
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v8

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/store/PluginUnloader;->shouldPluginBeActive(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setActive(Z)V

    .line 324
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    goto :goto_1ae

    .line 311
    :cond_21c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This plugins does not support your current platform: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_23d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This plugin requires TheoTown version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getMinVersion()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to run, you are using "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_262} :catch_197
    .catchall {:try_start_13f .. :try_end_262} :catchall_3b

    .line 328
    :goto_262
    :try_start_262
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->reportError(Ljava/lang/Exception;Ljava/lang/String;)Z

    goto :goto_27f

    .line 332
    :cond_26a
    instance-of v8, v0, Linfo/flowersoft/theotown/resources/EndManifestContentData;

    if-eqz v8, :cond_272

    .line 333
    sput-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    goto/16 :goto_1ae

    .line 335
    :cond_272
    instance-of v8, v0, Linfo/flowersoft/theotown/resources/ErrorContentData;

    if-eqz v8, :cond_283

    .line 336
    check-cast v0, Linfo/flowersoft/theotown/resources/ErrorContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ErrorContentData;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0, v5}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->reportError(Ljava/lang/Exception;Ljava/lang/String;)Z

    :cond_27f
    :goto_27f
    move-object/from16 v17, v5

    goto/16 :goto_348

    .line 339
    :cond_283
    instance-of v8, v0, Linfo/flowersoft/theotown/resources/JsonContentData;

    if-eqz v8, :cond_1ae

    .line 340
    check-cast v0, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/JsonContentData;->getJson()Ljava/lang/String;

    move-result-object v8

    .line 342
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    const-string v9, "Loading drafts"

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_294} :catch_52
    .catchall {:try_start_262 .. :try_end_294} :catchall_3b

    .line 344
    :try_start_294
    sget-object v9, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-nez v9, :cond_2a5

    .line 345
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->isPlugin()Z

    move-result v0

    if-eqz v0, :cond_2af

    if-eqz v7, :cond_2af

    goto :goto_2a5

    :catch_2a1
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_2e8

    :cond_2a5
    :goto_2a5
    if-eqz v9, :cond_1ae

    .line 346
    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1ae

    if-nez v7, :cond_1ae

    .line 348
    :cond_2af
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v17
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2b3} :catch_2a1
    .catchall {:try_start_294 .. :try_end_2b3} :catchall_3b

    sub-long v13, v13, v17

    .line 353
    :try_start_2b5
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2ba
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2b5 .. :try_end_2ba} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2ba} :catch_2a1
    .catchall {:try_start_2b5 .. :try_end_2ba} :catchall_3b

    move-object/from16 v17, v5

    goto :goto_2ce

    :catch_2bd
    move-exception v0

    .line 355
    :try_start_2be
    new-instance v15, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c3} :catch_2a1
    .catchall {:try_start_2be .. :try_end_2c3} :catchall_3b

    move-object/from16 v17, v5

    .line 357
    :try_start_2c5
    new-instance v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v5, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_2cd
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2c5 .. :try_end_2cd} :catch_2e2
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_2cd} :catch_2e0
    .catchall {:try_start_2c5 .. :try_end_2cd} :catchall_2dd

    move-object v0, v15

    .line 364
    :goto_2ce
    :try_start_2ce
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v18

    add-long v13, v13, v18

    .line 365
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->readArray(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    if-eqz v9, :cond_33f

    .line 367
    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setLoaded(Z)V

    goto :goto_33f

    :catchall_2dd
    move-exception v0

    goto/16 :goto_3e5

    :catch_2e0
    move-exception v0

    goto :goto_2e8

    .line 360
    :catch_2e2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2e8} :catch_2e0
    .catchall {:try_start_2ce .. :try_end_2e8} :catchall_2dd

    .line 371
    :goto_2e8
    :try_start_2e8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    if-lez v5, :cond_322

    .line 373
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v5

    sget v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    invoke-virtual {v5, v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setError(Ljava/lang/String;)V

    .line 374
    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v8, "Managed plugin"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v8, v9, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33f

    :catch_31f
    move-exception v0

    goto/16 :goto_3e1

    .line 375
    :cond_322
    invoke-static {v0, v8}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->reportError(Ljava/lang/Exception;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_334

    .line 379
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "LOADING JSON ARRAY"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_348

    .line 376
    :cond_334
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 377
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_33f
    :goto_33f
    add-int/2addr v10, v3

    move/from16 v6, v16

    move-object/from16 v5, v17

    const-wide/16 v8, 0x0

    goto/16 :goto_bb

    .line 386
    :goto_348
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    sub-long/2addr v4, v11

    .line 387
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "ContentLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Needed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms to load plugins, fill ratio is "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getFillRatio(I)F

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "% in "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " areas. Parsing time is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms. Patching time is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_399
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_399} :catch_31f
    .catchall {:try_start_2e8 .. :try_end_399} :catchall_2dd

    .line 394
    :try_start_399
    sput-object v17, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 395
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "drafts"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->readArray(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 396
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_3c1

    .line 397
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "test drafts"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->readArray(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3b5} :catch_3b6
    .catchall {:try_start_399 .. :try_end_3b5} :catchall_2dd

    goto :goto_3c1

    :catch_3b6
    move-exception v0

    .line 400
    :try_start_3b7
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Get config drafts"

    invoke-interface {v2, v3, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    :cond_3c1
    :goto_3c1
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;

    .line 405
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->afterLoading()V
    :try_end_3d6
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3d6} :catch_31f
    .catchall {:try_start_3b7 .. :try_end_3d6} :catchall_2dd

    goto :goto_3c7

    .line 411
    :cond_3d7
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Watchdog;->stop()V

    .line 412
    sput-object v17, Linfo/flowersoft/theotown/draftloader/ContentLoader;->appendFunction:Lvm2/lib/OneArgFunction;

    .line 413
    sput-object v17, Linfo/flowersoft/theotown/draftloader/ContentLoader;->mergeFunction:Lvm2/lib/ThreeArgFunction;

    return-void

    .line 408
    :goto_3e1
    :try_start_3e1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    throw v0
    :try_end_3e5
    .catchall {:try_start_3e1 .. :try_end_3e5} :catchall_2dd

    .line 411
    :goto_3e5
    iget-object v2, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/Watchdog;->stop()V

    .line 412
    sput-object v17, Linfo/flowersoft/theotown/draftloader/ContentLoader;->appendFunction:Lvm2/lib/OneArgFunction;

    .line 413
    sput-object v17, Linfo/flowersoft/theotown/draftloader/ContentLoader;->mergeFunction:Lvm2/lib/ThreeArgFunction;

    .line 414
    throw v0
.end method

.method public logPlugins()V
    .registers 14

    .line 153
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ContentLoader"

    const-string v2, "The following plugins have been loaded:"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ")"

    const-string v3, ":"

    const-string v4, " ("

    const-string v5, " by "

    const-string v6, "] "

    const-string v7, " "

    const-string v8, "X"

    const-string v9, "["

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 155
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v10

    if-nez v10, :cond_15

    .line 156
    sget-object v10, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v9

    if-eqz v9, :cond_48

    move-object v7, v8

    :cond_48
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ManagedPlugin"

    invoke-interface {v10, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 160
    :cond_80
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 161
    sget-object v10, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isActive()Z

    move-result v12

    if-eqz v12, :cond_a4

    move-object v12, v8

    goto :goto_a5

    :cond_a4
    move-object v12, v7

    :goto_a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getAuthor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getVersion()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "ExternalPlugin"

    invoke-interface {v10, v11, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    .line 164
    :cond_dd
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ec
    :goto_ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 166
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v3, :cond_ec

    iget v3, v2, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-nez v3, :cond_ec

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    if-nez v3, :cond_ec

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-nez v3, :cond_ec

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 167
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[X] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "File"

    invoke-interface {v3, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :cond_12b
    return-void
.end method

.method public final readArray(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_8

    goto/16 :goto_241

    .line 510
    :cond_8
    new-instance v3, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 512
    :goto_f
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_238

    .line 513
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 514
    iput-object v0, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->currentObject:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 515
    const-string v6, "id"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_54

    .line 518
    iget-wide v10, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iput-wide v10, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    .line 519
    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->PATCHES:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_4b

    move v11, v4

    .line 521
    :goto_39
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4b

    .line 522
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 523
    invoke-static {v0, v12, v9, v4}, Linfo/flowersoft/theotown/util/JSONUtil;->mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 526
    :cond_4b
    iget-wide v10, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->patchTime:J

    .line 530
    :cond_54
    const-string v10, "active"

    invoke-virtual {v0, v10, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 531
    const-string v11, "premium"

    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 532
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    sget-boolean v13, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-ne v12, v13, :cond_6c

    move v12, v9

    goto :goto_6d

    :cond_6c
    move v12, v4

    :goto_6d
    and-int/2addr v10, v12

    .line 534
    :cond_6e
    invoke-virtual {v0, v11, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 535
    const-string v12, "platform"

    const-string v13, "aid"

    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 536
    const-string v13, "not defined"

    const-string v14, "type"

    invoke-virtual {v0, v14, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 537
    const-string v15, "once"

    invoke-virtual {v0, v15, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 538
    const-string v9, "inherit"

    invoke-virtual {v0, v9, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 539
    const-string v7, "mute"

    invoke-virtual {v0, v7, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 540
    const-string v4, "is defined"

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v5

    .line 541
    const-string v5, "is not defined"

    invoke-virtual {v0, v5, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_b7

    .line 542
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b7

    .line 543
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b5

    const/4 v2, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v2, 0x0

    :goto_b6
    and-int/2addr v10, v2

    :cond_b7
    if-eqz v5, :cond_ce

    .line 545
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 546
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_ca

    const/16 v16, 0x1

    goto :goto_cc

    :cond_ca
    const/16 v16, 0x0

    :goto_cc
    and-int v10, v10, v16

    .line 548
    :cond_ce
    iget-object v2, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->PLATFORM_ID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    and-int/2addr v2, v10

    .line 550
    iget-object v4, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Draft "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    .line 552
    const-string v4, "<unknown id>"

    const-string v5, "ContentLoader"

    if-eqz v2, :cond_1f7

    if-eqz v8, :cond_107

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    if-nez v15, :cond_1f7

    :cond_107
    if-eqz v9, :cond_11e

    .line 555
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    if-nez v2, :cond_115

    goto/16 :goto_238

    .line 557
    :cond_115
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 558
    invoke-virtual {v0, v14, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 561
    :cond_11e
    iget-object v2, v1, Linfo/flowersoft/theotown/draftloader/ContentLoader;->tagToLoader:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;

    if-eqz v2, :cond_1be

    .line 563
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    .line 566
    :try_start_12c
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->setSource(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 567
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->load()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_133} :catch_140
    .catchall {:try_start_12c .. :try_end_133} :catchall_13e

    .line 574
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    neg-long v4, v9

    long-to-float v0, v4

    .line 575
    invoke-virtual {v3, v8, v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    goto :goto_14e

    :catchall_13e
    move-exception v0

    goto :goto_1b3

    :catch_140
    move-exception v0

    if-eqz v7, :cond_18d

    .line 574
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    neg-long v4, v6

    long-to-float v0, v4

    .line 575
    invoke-virtual {v3, v8, v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    const/4 v7, 0x0

    :goto_14e
    if-eqz v7, :cond_231

    .line 579
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v0, :cond_171

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/SortedList;->absoluteContains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_171

    .line 580
    iget v0, v7, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_16c

    .line 581
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iput v0, v7, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 582
    :cond_16c
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/draft/CategoryDraft;->addChild(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 585
    :cond_171
    iput-boolean v11, v7, Linfo/flowersoft/theotown/draft/Draft;->premium:Z

    .line 586
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_231

    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    const-string v2, "template"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_231

    .line 588
    invoke-static {v7}, Linfo/flowersoft/theotown/resources/Drafts;->addTaggedDraft(Linfo/flowersoft/theotown/draft/Draft;)V

    goto/16 :goto_231

    .line 570
    :cond_18d
    :try_start_18d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 571
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "When loading \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1b3
    .catchall {:try_start_18d .. :try_end_1b3} :catchall_13e

    .line 574
    :goto_1b3
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    neg-long v4, v6

    long-to-float v2, v4

    .line 575
    invoke-virtual {v3, v8, v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    .line 576
    throw v0

    .line 593
    :cond_1be
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "May not find loader for type "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not find a loader for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_1f7
    sget-object v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v7, :cond_231

    if-nez v2, :cond_200

    .line 600
    const-string v2, "it is inactive"

    goto :goto_207

    :cond_200
    if-eqz v15, :cond_205

    .line 602
    const-string v2, "it was defined before with \"once\": true"

    goto :goto_207

    .line 601
    :cond_205
    const-string v2, "<unkown>"

    .line 604
    :goto_207
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip draft "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of type "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_231
    :goto_231
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v2, p1

    const/4 v4, 0x0

    goto/16 :goto_f

    .line 609
    :cond_238
    :goto_238
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_241

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    :cond_241
    :goto_241
    return-void
.end method

.method public validateDrafts()V
    .registers 9

    .line 173
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorOccured()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_de

    .line 175
    :cond_8
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>()V

    .line 177
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 178
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->mustBeInherited:Z

    if-eqz v3, :cond_4a

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->inherited:Z

    if-eqz v3, :cond_2c

    goto :goto_4a

    .line 179
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draft "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not implemented!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_4a
    :goto_4a
    iget v3, v2, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-nez v3, :cond_17

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-nez v3, :cond_17

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    instance-of v4, v3, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v4, :cond_17

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 183
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    check-cast v3, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/badlogic/gdx/utils/ObjectLongMap;->get(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 185
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getModificationTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->put(Ljava/lang/Object;J)V

    goto :goto_17

    .line 190
    :cond_84
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    .line 191
    :cond_88
    :goto_88
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    if-eqz v1, :cond_de

    .line 192
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    move-result-object v1

    .line 193
    iget-wide v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    const-wide v4, 0x173a7517400L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_88

    .line 194
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing manifest in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", latest content "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ContentLoader"

    invoke-interface {v3, v4, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->reportPluginWithoutManifest(Ljava/lang/String;)V

    goto :goto_88

    :cond_de
    :goto_de
    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.ContentLoader.AnonymousClass1 (info.flowersoft.theotown.draftloader.ContentLoader$1)
.class public Linfo/flowersoft/theotown/draftloader/ContentLoader$1;
.super Lvm2/lib/OneArgFunction;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/draftloader/ContentLoader;->loadContents(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/draftloader/ContentLoader;

.field public final synthetic val$contentStrings:Ljava/util/List;

.field public final synthetic val$currentIndex:[I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draftloader/ContentLoader;Ljava/util/List;[I)V
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

    .line 210
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;->this$0:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    iput-object p2, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;->val$contentStrings:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;->val$currentIndex:[I

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;->val$contentStrings:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$1;->val$currentIndex:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    new-instance v1, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/resources/JsonContentData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.draftloader.ContentLoader.AnonymousClass2 (info.flowersoft.theotown.draftloader.ContentLoader$2)
.class public Linfo/flowersoft/theotown/draftloader/ContentLoader$2;
.super Lvm2/lib/ThreeArgFunction;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/draftloader/ContentLoader;->loadContents(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/draftloader/ContentLoader;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draftloader/ContentLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$2;->this$0:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 221
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/ContentLoader$2;->this$0:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->access$000(Linfo/flowersoft/theotown/draftloader/ContentLoader;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    invoke-static {v0, v1, p1, p2}, Linfo/flowersoft/theotown/util/JSONUtil;->mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V
    :try_end_1c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 225
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :catch_1f
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method
