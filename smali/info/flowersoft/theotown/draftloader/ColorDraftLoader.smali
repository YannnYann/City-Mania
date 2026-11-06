###### Class info.flowersoft.theotown.draftloader.ColorDraftLoader (info.flowersoft.theotown.draftloader.ColorDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/ColorDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ColorDraftLoader.java"


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

    .line 14
    const-string v0, "color"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/draft/ColorDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/ColorDraft;-><init>()V

    .line 21
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 23
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ColorDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method
