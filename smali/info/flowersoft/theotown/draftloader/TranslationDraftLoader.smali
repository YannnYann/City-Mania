###### Class info.flowersoft.theotown.draftloader.TranslationDraftLoader (info.flowersoft.theotown.draftloader.TranslationDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TranslationDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TranslationDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 13
    const-string v0, "translation"

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

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/draft/TranslationDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TranslationDraft;-><init>()V

    .line 20
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 22
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "translation"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TranslationDraft;->translation:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-nez v1, :cond_21

    .line 24
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TranslationDraft;->translation:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 27
    :cond_21
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "immediately"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 28
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TRANSLATIONS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object v0
.end method
