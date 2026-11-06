###### Class info.flowersoft.theotown.components.management.LeaveBuildCommand (info.flowersoft.theotown.components.management.LeaveBuildCommand)
.class public Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;
.super Linfo/flowersoft/theotown/components/management/BuildCommand;
.source "LeaveBuildCommand.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/management/BuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    return-void
.end method


# virtual methods
.method public run()Linfo/flowersoft/theotown/components/BuildCommandResult;
    .registers 25

    move-object/from16 v0, p0

    .line 32
    new-instance v1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 36
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_19

    .line 37
    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    goto :goto_38

    .line 38
    :cond_19
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v2, v3, :cond_28

    .line 39
    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    goto :goto_38

    .line 40
    :cond_28
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v2, v3, :cond_37

    .line 41
    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    goto :goto_38

    :cond_37
    move-object v2, v4

    .line 44
    :goto_38
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfBaseType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    .line 46
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x1

    if-eqz v3, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 47
    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v3, v6, v7}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v6

    .line 49
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 50
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v8

    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v8, v9, :cond_4b

    .line 51
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v8

    iget v9, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    if-ne v8, v9, :cond_4b

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_4b

    .line 53
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4b

    .line 54
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v8, :cond_4b

    .line 57
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getHappiness()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    const-wide v10, -0x407b851ec0000000L    # -0.009999999776482582

    mul-double/2addr v6, v10

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v8, v6

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v9

    div-float/2addr v8, v6

    .line 59
    invoke-virtual {v1, v3, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_4b

    .line 65
    :cond_bc
    invoke-virtual {v1, v4, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 69
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 70
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v1, :cond_107

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->getLowDemand()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    .line 73
    new-instance v7, Linfo/flowersoft/theotown/components/BuildCommandResult;

    iget-object v8, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v9, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    iget v11, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    .line 74
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v14

    .line 75
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v16

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v17

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v18

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallPeople()I

    move-result v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v7 .. v23}, Linfo/flowersoft/theotown/components/BuildCommandResult;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;IZFZIJIIIIIIZLinfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    move-object v4, v7

    :cond_107
    if-nez v4, :cond_134

    .line 80
    new-instance v7, Linfo/flowersoft/theotown/components/BuildCommandResult;

    iget-object v8, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v9, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    iget v11, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    .line 81
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v7 .. v23}, Linfo/flowersoft/theotown/components/BuildCommandResult;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;IZFZIJIIIIIIZLinfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    return-object v7

    :cond_134
    return-object v4
.end method
