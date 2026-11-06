###### Class info.flowersoft.theotown.draftloader.ShipDraftLoader (info.flowersoft.theotown.draftloader.ShipDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/ShipDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ShipDraftLoader.java"


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
    const-string v0, "ship"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draft/ShipDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/ShipDraft;-><init>()V

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

    const-string v2, "length"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/ShipDraft;->length:I

    .line 27
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SHIPS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
