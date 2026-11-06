###### Class info.flowersoft.theotown.draftloader.FenceDraftLoader (info.flowersoft.theotown.draftloader.FenceDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/FenceDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "FenceDraftLoader.java"


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

    .line 12
    const-string v0, "fence"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/FenceDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FenceDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FenceDraft;

    .line 19
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 21
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {p0, v2, v3, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 22
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "price"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/FenceDraft;->price:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 23
    iput-wide v3, v0, Linfo/flowersoft/theotown/draft/FenceDraft;->price:J

    .line 25
    :cond_30
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 26
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/FenceDraft;->animationSpots:Ljava/util/List;

    .line 27
    iget-object v3, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v5, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "frame animation indices"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/FenceDraft;->animationSpotIndices:[[I

    .line 30
    :cond_58
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_68

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_fence00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    :cond_68
    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.FenceDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.FenceDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/FenceDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/FenceDraft;-><init>()V

    return-object v0
.end method
