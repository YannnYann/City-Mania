###### Class info.flowersoft.theotown.draftloader.TaskDraftLoader (info.flowersoft.theotown.draftloader.TaskDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TaskDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TaskDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 19
    const-string v0, "task"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/draft/TaskDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TaskDraft;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TaskDraft;->commands:Ljava/util/List;

    .line 29
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "commands"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "task"

    const/4 v5, 0x0

    if-eqz v1, :cond_49

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    move v2, v5

    .line 31
    :goto_24
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_49

    .line 32
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    .line 33
    new-instance v7, Linfo/flowersoft/theotown/draft/TaskDraft$Command;

    invoke-direct {v7}, Linfo/flowersoft/theotown/draft/TaskDraft$Command;-><init>()V

    .line 34
    const-string v8, "id"

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Linfo/flowersoft/theotown/draft/TaskDraft$Command;->id:Ljava/lang/String;

    .line 35
    invoke-virtual {v6, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Linfo/flowersoft/theotown/draft/TaskDraft$Command;->task:Ljava/lang/String;

    .line 36
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/TaskDraft;->commands:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 40
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TaskDraft;->actions:Ljava/util/List;

    .line 41
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 42
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 43
    :goto_60
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_91

    .line 44
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 45
    new-instance v6, Linfo/flowersoft/theotown/draft/TaskDraft$Action;

    invoke-direct {v6}, Linfo/flowersoft/theotown/draft/TaskDraft$Action;-><init>()V

    .line 46
    const-string v7, "requirement"

    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v7

    iget-object v8, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v9

    iget-object v10, v6, Linfo/flowersoft/theotown/draft/TaskDraft$Action;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {p0, v7, v8, v9, v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;ZLinfo/flowersoft/theotown/draft/requirement/DraftRequirement;)Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v7

    iput-object v7, v6, Linfo/flowersoft/theotown/draft/TaskDraft$Action;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    .line 47
    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Linfo/flowersoft/theotown/draft/TaskDraft$Action;->task:Ljava/lang/String;

    .line 48
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/TaskDraft;->actions:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_91
    return-object v0
.end method
