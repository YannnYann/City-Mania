###### Class info.flowersoft.theotown.draft.requirement.DraftRequirement (info.flowersoft.theotown.draft.requirement.DraftRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;
.super Ljava/lang/Object;
.source "DraftRequirement.java"


# instance fields
.field public final singleRequirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    :goto_b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 32
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 33
    const-string v2, "type"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    move-result-object v2

    .line 34
    const-string v3, "data"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 35
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 37
    :cond_35
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-virtual {v2, v1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_41
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    .line 20
    const-string v0, "requirements"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 22
    :goto_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 23
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 24
    const-string v2, "type"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    move-result-object v2

    .line 25
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_37
    return-void
.end method


# virtual methods
.method public getSingleRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    return-object v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;Ljava/lang/Object;)Z
    .registers 7

    .line 44
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 45
    :cond_6
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 46
    invoke-virtual {v2, p2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->setContext(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->hasRequirements()Z

    move-result v3

    if-nez v3, :cond_32

    .line 49
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->autoFulfilledInSandboxMode()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_c

    :cond_32
    const/4 p1, 0x0

    return p1

    :cond_34
    return v1
.end method

.method public isFulfilledBecauseOfSandMode(Linfo/flowersoft/theotown/city/City;)Z
    .registers 4

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 60
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public mergeFrom(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->setStrongest(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V

    .line 72
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->removeDuplicates()V

    return-void
.end method

.method public final removeDuplicates()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 108
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 109
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move v3, v0

    :goto_13
    if-ge v3, v1, :cond_2e

    .line 112
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 113
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 114
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_31
    return-void
.end method

.method public final setStrongest(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 76
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 77
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move v3, v0

    .line 79
    :goto_13
    iget-object v4, p1, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 80
    iget-object v4, p1, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 81
    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z

    move-result v5

    if-nez v5, :cond_30

    move-object v2, v4

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 86
    :cond_33
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    move v1, v0

    .line 89
    :goto_3c
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 90
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    move v3, v0

    .line 93
    :goto_4d
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 94
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 95
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_72

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 102
    :cond_6d
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->singleRequirements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_75
    return-void
.end method
