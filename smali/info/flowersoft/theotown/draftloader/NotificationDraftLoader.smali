###### Class info.flowersoft.theotown.draftloader.NotificationDraftLoader (info.flowersoft.theotown.draftloader.NotificationDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "NotificationDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 13
    const-string v0, "notification"

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

    .line 10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader;->load()Linfo/flowersoft/theotown/draft/NotificationDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/NotificationDraft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/NotificationDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/NotificationDraft;

    .line 20
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 22
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {p0, v2, v3, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 24
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "question"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->question:Z

    .line 25
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "immersive"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->immersive:Z

    .line 26
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->question:Z

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "closeable"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->closeable:Z

    .line 27
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "important"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->important:Z

    .line 28
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "show once"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->showOnce:Z

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "ok fun"

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->okFun:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->okFun:Ljava/util/List;

    .line 31
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "cancel fun"

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.NotificationDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.NotificationDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/NotificationDraftLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/draft/NotificationDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/NotificationDraft;-><init>()V

    return-object v0
.end method
