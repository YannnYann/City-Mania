###### Class info.flowersoft.theotown.draftloader.DataDraftLoader (info.flowersoft.theotown.draftloader.DataDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/DataDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "DataDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 10
    const-string v0, "data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/DataDraft;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/draft/DataDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/DataDraft;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->copy()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

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

    .line 6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/DataDraftLoader;->load()Linfo/flowersoft/theotown/draft/DataDraft;

    move-result-object v0

    return-object v0
.end method
