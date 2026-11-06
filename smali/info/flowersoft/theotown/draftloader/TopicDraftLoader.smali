###### Class info.flowersoft.theotown.draftloader.TopicDraftLoader (info.flowersoft.theotown.draftloader.TopicDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TopicDraftLoader.java"


# instance fields
.field public final HELPFUL_COLOR:Lio/blueflower/stapel2d/drawing/Color;

.field public final HELPFUL_WEIGHT:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    .line 10
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v1, 0x94

    const/16 v2, 0xe8

    const/16 v3, 0xbb

    invoke-direct {v0, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;->HELPFUL_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    .line 11
    sget-wide v0, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    long-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;->HELPFUL_WEIGHT:F

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "topic"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;->load()Linfo/flowersoft/theotown/draft/TopicDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/TopicDraft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/TopicDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TopicDraft;

    .line 21
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 23
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "helpful"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->helpful:Z

    if-eqz v1, :cond_27

    .line 25
    iget v1, p0, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;->HELPFUL_WEIGHT:F

    iput v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->weight:F

    .line 26
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/TopicDraftLoader;->HELPFUL_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 29
    :cond_27
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->weight:F

    float-to-double v2, v2

    const-string v4, "weight"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->weight:F

    .line 30
    const-string v1, "color"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 32
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    if-nez v1, :cond_4f

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    if-nez v1, :cond_4f

    .line 33
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->textId:Ljava/lang/String;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    .line 34
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    .line 37
    :cond_4f
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "url"

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->url:Ljava/lang/String;

    .line 39
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/TopicDraft;

    if-eqz v1, :cond_6c

    .line 41
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->TOPICS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_6c
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TOPICS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.TopicDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.TopicDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/TopicDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/TopicDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TopicDraft;-><init>()V

    return-object v0
.end method
