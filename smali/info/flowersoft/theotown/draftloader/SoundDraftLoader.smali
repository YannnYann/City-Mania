###### Class info.flowersoft.theotown.draftloader.SoundDraftLoader (info.flowersoft.theotown.draftloader.SoundDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/SoundDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "SoundDraftLoader.java"


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

    .line 15
    const-string v0, "sound"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draft/SoundDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SoundDraft;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 24
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadSound(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/SoundDraft;->sound:I

    .line 25
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "volume"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/SoundDraft;->volume:F

    .line 27
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SOUNDS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
