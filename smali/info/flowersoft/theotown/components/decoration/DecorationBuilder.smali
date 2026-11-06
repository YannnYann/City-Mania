###### Class info.flowersoft.theotown.components.decoration.DecorationBuilder (info.flowersoft.theotown.components.decoration.DecorationBuilder)
.class public Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;
.super Ljava/lang/Object;
.source "DecorationBuilder.java"


# instance fields
.field public final decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/components/decoration/Decorator;",
            ">;"
        }
    .end annotation
.end field

.field public decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/decoration/Decorator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    return-void
.end method


# virtual methods
.method public onBuildBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 64
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 65
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/decoration/Decorator;

    .line 66
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;->canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 67
    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/decoration/Decorator;->getProbability()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 71
    :cond_24
    :goto_24
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getDepth()I

    move-result v1

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 72
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/decoration/Decorator;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;->decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 75
    :cond_42
    iget-object p1, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decoSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    return-void
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 10

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    .line 32
    new-instance v1, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v1, "decorator"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 37
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 38
    const-string v4, "zones"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 41
    :try_start_47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 42
    :goto_4d
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_89

    .line 43
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72

    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_72

    .line 45
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v6, :cond_6f

    .line 47
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :catch_6d
    move-exception v2

    goto :goto_9a

    :cond_6f
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 50
    :cond_72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal zone id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_89
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 54
    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->decorators:Ljava/util/List;

    new-instance v5, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;

    invoke-direct {v5, p1, v2, v4}, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_99} :catch_6d

    goto :goto_2f

    .line 58
    :goto_9a
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Set city"

    invoke-interface {v3, v4, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2f

    :cond_a2
    return-void
.end method
