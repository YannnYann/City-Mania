###### Class info.flowersoft.theotown.draft.requirement.BuildingRequirement (info.flowersoft.theotown.draft.requirement.BuildingRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "BuildingRequirement.java"


# instance fields
.field public final count:I

.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final draftId:Ljava/lang/String;

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

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfFulfilled:Z

    .line 31
    const-string v0, "hide if not fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfNotFulfilled:Z

    .line 32
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    .line 33
    const-string v0, "count"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->resolveDraft()V

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
    .registers 5

    .line 97
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 98
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;

    .line 99
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    if-ne v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 6

    .line 49
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 50
    :cond_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->resolveDraft()V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return v2

    .line 55
    :cond_f
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    iget-object v3, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 56
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 58
    :cond_38
    iget p1, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    if-lt v0, p1, :cond_3d

    return v1

    :cond_3d
    return v2
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 4

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->resolveDraft()V

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez v0, :cond_20

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    const/16 v0, 0x4c

    .line 70
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 71
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->resolveDraftTitle(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 69
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final resolveDraft()V
    .registers 3

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez v0, :cond_1a

    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    :cond_1a
    return-void
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 5

    .line 87
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 88
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;

    .line 89
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;->count:I

    if-lt v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method
