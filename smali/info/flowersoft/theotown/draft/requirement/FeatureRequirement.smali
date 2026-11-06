###### Class info.flowersoft.theotown.draft.requirement.FeatureRequirement (info.flowersoft.theotown.draft.requirement.FeatureRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "FeatureRequirement.java"


# instance fields
.field public feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final featureId:Ljava/lang/String;

.field public hideIfFulfilled:Z

.field public hideIfNotFulfilled:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;-><init>()V

    .line 30
    const-string v0, "hide if fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfFulfilled:Z

    .line 31
    const-string v0, "hide if not fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfNotFulfilled:Z

    .line 32
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public autoFulfilledInSandboxMode()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 84
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v0, :cond_f

    .line 85
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public getFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 3

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v0, :cond_10

    .line 47
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 49
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object v0
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 4

    .line 54
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    return v0

    .line 55
    :cond_6
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez p1, :cond_16

    .line 56
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 59
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public isImportant()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 5

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v0, :cond_10

    .line 65
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->featureId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    :cond_10
    const/16 v0, 0xa54

    .line 68
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 69
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
