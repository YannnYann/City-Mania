###### Class info.flowersoft.theotown.draftloader.WireDraftLoader (info.flowersoft.theotown.draftloader.WireDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/WireDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "WireDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 18
    const-string v0, "wire"

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

    .line 14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/WireDraftLoader;->load()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/WireDraft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/WireDraft;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 26
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    invoke-virtual {p0, v3, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 28
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "width"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->width:I

    .line 29
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->height:I

    .line 31
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "spacing"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->spacing:I

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max spacing"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->maxSpacing:I

    .line 34
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "price"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->price:I

    .line 35
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "monthly price"

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->monthlyPrice:I

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "connectable"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->connectable:Z

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    const/4 v2, -0x1

    if-lt v1, v2, :cond_bb

    if-gt v1, v3, :cond_bb

    .line 44
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "energy radius"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->energyRadius:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_8a

    .line 45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_8a

    iput v2, v0, Linfo/flowersoft/theotown/draft/WireDraft;->energyRadius:I

    .line 47
    :cond_8a
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "power"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->power:F

    .line 49
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/WireDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v4, "add price"

    invoke-virtual {p0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/WireDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 51
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_b5

    .line 52
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_energy00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 55
    :cond_b5
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->WIRES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 40
    :cond_bb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire level must be in -1..1 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
