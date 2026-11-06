###### Class info.flowersoft.theotown.draftloader.ScriptDraftLoader (info.flowersoft.theotown.draftloader.ScriptDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/ScriptDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ScriptDraftLoader.java"


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

    .line 9
    const-string v0, "script"

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

    .line 6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/ScriptDraftLoader;->load()Linfo/flowersoft/theotown/draft/ScriptDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/ScriptDraft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/draft/ScriptDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/ScriptDraft;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    return-object v0
.end method
