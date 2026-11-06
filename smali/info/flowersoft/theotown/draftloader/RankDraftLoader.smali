###### Class info.flowersoft.theotown.draftloader.RankDraftLoader (info.flowersoft.theotown.draftloader.RankDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/RankDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "RankDraftLoader.java"


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
    const-string v0, "rank"

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
    new-instance v0, Linfo/flowersoft/theotown/draft/RankDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/RankDraft;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 23
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    invoke-virtual {p0, v3, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 28
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 30
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    mul-int/lit8 v3, v1, 0x46

    mul-int/2addr v3, v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    mul-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x15e

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 31
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RankDraft;->award:Linfo/flowersoft/theotown/util/SpecialInt;

    iget v2, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 33
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RankDraft;->awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "award diamonds"

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 34
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "xp"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 37
    :cond_56
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "achievement"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RankDraft;->achievementId:Ljava/lang/String;

    .line 39
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
