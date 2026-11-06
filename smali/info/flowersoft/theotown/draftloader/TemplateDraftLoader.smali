###### Class info.flowersoft.theotown.draftloader.TemplateDraftLoader (info.flowersoft.theotown.draftloader.TemplateDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TemplateDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TemplateDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "template"

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

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/draft/TemplateDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TemplateDraft;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 25
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/TemplateDraft;->additive:Z

    const-string v3, "additive"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/TemplateDraft;->additive:Z

    .line 27
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->copy()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 28
    const-string v2, "type"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TemplateDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method
