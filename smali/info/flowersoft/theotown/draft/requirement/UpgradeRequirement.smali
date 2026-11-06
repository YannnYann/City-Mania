###### Class info.flowersoft.theotown.draft.requirement.UpgradeRequirement (info.flowersoft.theotown.draft.requirement.UpgradeRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "UpgradeRequirement.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

.field public final draftId:Ljava/lang/String;

.field public hideIfFulfilled:Z

.field public hideIfNotFulfilled:Z

.field public final invert:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;-><init>()V

    .line 29
    const-string v0, "hide if fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfFulfilled:Z

    .line 30
    const-string v0, "hide if not fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfNotFulfilled:Z

    .line 31
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    .line 32
    const-string v0, "invert"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->invert:Z

    return-void
.end method

.method private resolveDraft()V
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-nez v0, :cond_1a

    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    const-class v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    :cond_1a
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

    .line 91
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 92
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->invert:Z

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->invert:Z

    if-ne v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 7

    .line 47
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    return v0

    .line 48
    :cond_6
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->context:Ljava/lang/Object;

    instance-of v1, p1, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 49
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    move v1, v2

    .line 50
    :goto_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 52
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 53
    iget-boolean p1, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->invert:Z

    xor-int/2addr p1, v0

    return p1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_35
    return v2
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 4

    .line 74
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->resolveDraft()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-nez v0, :cond_20

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->draftId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_20
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->resolveDraftTitle(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object p2

    .line 82
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->invert:Z

    if-eqz v0, :cond_37

    const/16 v0, 0xe0

    .line 83
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    const/16 v0, 0x196

    .line 85
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
