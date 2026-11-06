###### Class info.flowersoft.theotown.draftloader.PedestrianDraftLoader (info.flowersoft.theotown.draftloader.PedestrianDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "PedestrianDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 12
    const-string v0, "pedestrian"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    .line 19
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 21
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {p0, v2, v3, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_ee

    .line 24
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "flag"

    iget-wide v4, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    invoke-virtual {v1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    .line 26
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "auto spawn"

    iget-boolean v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->autoSpawn:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->res:F

    .line 28
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->com:F

    .line 29
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->ind:F

    .line 30
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl1:F

    .line 31
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl2:F

    .line 32
    iput v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl3:F

    .line 35
    :cond_48
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "spawn factor"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 37
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->res:F

    float-to-double v3, v3

    const-string v5, "residential"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->res:F

    .line 38
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->com:F

    float-to-double v3, v3

    const-string v5, "commercial"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->com:F

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->ind:F

    float-to-double v3, v3

    const-string v5, "industrial"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->ind:F

    .line 40
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl1:F

    float-to-double v3, v3

    const-string v5, "level 1"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl1:F

    .line 41
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl2:F

    float-to-double v3, v3

    const-string v5, "level 2"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl2:F

    .line 42
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl3:F

    float-to-double v3, v3

    const-string v5, "level 3"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl3:F

    .line 46
    iget v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->res:F

    iget v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->com:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->ind:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl1:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl2:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl3:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d4

    const/4 v1, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v1, 0x0

    :goto_d5
    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->autoSpawn:Z

    .line 48
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    if-eqz v1, :cond_e8

    .line 50
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->PEDESTRIANS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_e8
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->PEDESTRIANS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 22
    :cond_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Got no frames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.draftloader.PedestrianDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.PedestrianDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PedestrianDraftLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/PedestrianDraft;-><init>()V

    return-object v0
.end method
