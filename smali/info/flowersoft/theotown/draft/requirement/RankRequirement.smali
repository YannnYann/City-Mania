###### Class info.flowersoft.theotown.draft.requirement.RankRequirement (info.flowersoft.theotown.draft.requirement.RankRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/RankRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "RankRequirement.java"


# instance fields
.field public hideIfFulfilled:Z

.field public hideIfNotFulfilled:Z

.field public rank:Linfo/flowersoft/theotown/draft/RankDraft;

.field public rankId:Ljava/lang/String;

.field public rankLvl:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;-><init>()V

    .line 32
    const-string v0, "hide if fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfFulfilled:Z

    .line 33
    const-string v0, "hide if not fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfNotFulfilled:Z

    .line 34
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 35
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankId:Ljava/lang/String;

    .line 36
    const-class v0, Linfo/flowersoft/theotown/draft/RankDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 37
    const-string v0, "In "

    const-string v1, "RankRequirement"

    if-eqz p1, :cond_60

    .line 38
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 39
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Usage of id is deprecated! "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " matches \"lvl\": "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_60
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Usage of id is deprecated!"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_7a
    const-string p2, "lvl"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankLvl:I

    return-void
.end method

.method private resolveDraft()V
    .registers 4

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-nez v0, :cond_33

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankId:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 92
    const-class v1, Linfo/flowersoft/theotown/draft/RankDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RankDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 94
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-nez v0, :cond_33

    .line 95
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    iget v1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankLvl:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RankDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    :cond_33
    return-void
.end method


# virtual methods
.method public autoFulfilledInSandboxMode()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 102
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 103
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method public getRank()Linfo/flowersoft/theotown/draft/RankDraft;
    .registers 2

    .line 59
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->resolveDraft()V

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    return-object v0
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 4

    .line 66
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 67
    :cond_6
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->resolveDraft()V

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-eqz v0, :cond_1c

    .line 73
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-lt p1, v0, :cond_1a

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1

    .line 70
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rank "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rankId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be resolved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 4

    .line 78
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->resolveDraft()V

    const/16 v0, 0x6dc

    .line 79
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 80
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 79
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 4

    .line 112
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 113
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 116
    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-lt v0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method
