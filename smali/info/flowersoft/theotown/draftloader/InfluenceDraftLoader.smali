###### Class info.flowersoft.theotown.draftloader.InfluenceDraftLoader (info.flowersoft.theotown.draftloader.InfluenceDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "InfluenceDraftLoader.java"


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

    .line 14
    const-string v0, "influence"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    .line 21
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences()[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/InfluenceDraft;->induceVector:[I

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.InfluenceDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.InfluenceDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/InfluenceDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/InfluenceDraft;-><init>()V

    return-object v0
.end method
