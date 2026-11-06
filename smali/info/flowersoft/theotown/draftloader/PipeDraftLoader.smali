###### Class info.flowersoft.theotown.draftloader.PipeDraftLoader (info.flowersoft.theotown.draftloader.PipeDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/PipeDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "PipeDraftLoader.java"


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
    const-string v0, "pipe"

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
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/PipeDraftLoader;->load()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/PipeDraft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/PipeDraft;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 23
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    invoke-virtual {p0, v3, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 25
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "width"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->width:I

    .line 26
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->height:I

    .line 28
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "price"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->price:I

    .line 29
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "monthly price"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->monthlyPrice:I

    .line 31
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "water radius"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->waterRadius:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_5d

    .line 32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_5d

    iput v2, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->waterRadius:I

    .line 34
    :cond_5d
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v4, "add price"

    invoke-virtual {p0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/PipeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 36
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_7b

    .line 37
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_water00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 40
    :cond_7b
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->PIPES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
