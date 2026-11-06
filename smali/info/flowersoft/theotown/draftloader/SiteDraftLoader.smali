###### Class info.flowersoft.theotown.draftloader.SiteDraftLoader (info.flowersoft.theotown.draftloader.SiteDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/SiteDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "SiteDraftLoader.java"


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
    const-string v0, "site"

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

    .line 11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/SiteDraftLoader;->load()Linfo/flowersoft/theotown/draft/SiteDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/SiteDraft;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draft/SiteDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SiteDraft;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 24
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    invoke-virtual {p0, v3, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 25
    const-string v1, "color"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v1, :cond_22

    .line 26
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 28
    :cond_22
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesFG:[I

    const-string v2, "frames fg"

    invoke-virtual {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesFG:[I

    .line 29
    const-string v1, "color fg"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->colorFG:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v1, :cond_3a

    .line 30
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->colorFG:Lio/blueflower/stapel2d/drawing/Color;

    .line 32
    :cond_3a
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "height per floor"

    iget v3, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    .line 33
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frames per floor"

    iget v3, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    .line 34
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frames per progress"

    iget v3, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    .line 36
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SITES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
