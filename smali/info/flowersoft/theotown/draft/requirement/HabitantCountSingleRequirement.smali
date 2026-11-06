###### Class info.flowersoft.theotown.draft.requirement.HabitantCountSingleRequirement (info.flowersoft.theotown.draft.requirement.HabitantCountSingleRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "HabitantCountSingleRequirement.java"


# instance fields
.field public count:I

.field public final factors:[I

.field public hideIfFulfilled:Z

.field public hideIfNotFulfilled:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;-><init>()V

    const/4 v0, 0x3

    .line 22
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    .line 28
    const-string v1, "hide if fulfilled"

    iget-boolean v2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfFulfilled:Z

    .line 29
    const-string v1, "hide if not fulfilled"

    iget-boolean v2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfNotFulfilled:Z

    .line 30
    const-string v1, "count"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_44

    .line 33
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "factor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_44
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
    .registers 5

    .line 98
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 99
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    if-ne v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 8

    .line 49
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x9

    .line 50
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/People;

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_11
    const/4 v4, 0x3

    if-ge v2, v4, :cond_21

    .line 54
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    aget v4, v4, v2

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 57
    :cond_21
    iget p1, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    if-lt v3, p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 8

    const/4 p2, 0x0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    move v2, p2

    move v3, v2

    :goto_8
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1f

    .line 66
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 67
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    aget v4, v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    if-ne v3, v4, :cond_39

    const/16 p2, 0x602

    .line 73
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_39
    if-ne v3, v1, :cond_84

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    aget p2, v0, p2

    if-ne p2, v1, :cond_56

    const/16 p2, 0x50e

    .line 77
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 77
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_56
    aget p2, v0, v1

    if-ne p2, v1, :cond_6f

    const/16 p2, 0x4a3

    .line 80
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 80
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6f
    const/16 p2, 0xa9b

    .line 83
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 83
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_84
    const-string p1, "May not localize requirement :\'("

    return-object p1
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 5

    .line 108
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 109
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->factors:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;->count:I

    if-lt v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method
