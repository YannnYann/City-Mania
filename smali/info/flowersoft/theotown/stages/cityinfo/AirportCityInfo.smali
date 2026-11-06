###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "AirportCityInfo.java"


# instance fields
.field public final TOWER_BUILDING:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$1vWepLh115kNGQPFRAi2OVX7HVE(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 1

    .line 381
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V

    return-void
.end method

.method public static synthetic $r8$lambda$2-F3MU88xr2358HcbSopPHkT1aM(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;
    .registers 1

    .line 385
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2PJYU_7tEyl1j7iI_G2hRG8SBFo(Ljava/lang/String;)Z
    .registers 2

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$4R8knNBOP-9L7AomkMlr7fQJGok(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 351
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 351
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->unassignLane(Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZHeRh-U_r3FK9HsChaArgrgwsk(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)Ljava/lang/Boolean;
    .registers 2

    .line 242
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->isLaneAddable()Z

    move-result p0

    if-nez p0, :cond_a

    if-eqz p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    .line 242
    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7sbxKgz0xcYbvvb1OH7yYM_FBdk(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 259
    :cond_a
    new-instance v1, Linfo/flowersoft/theotown/ui/UnlockDialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getTimeUnlockable()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object v2

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda27;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v6, "somdId"

    const-string v7, "Airport_Unlock_Time"

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/UnlockDialog;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 261
    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9eEh_J6QnQ3s9p6GQDOc0Cw4cA(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    .line 213
    :cond_10
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getPriceForNewLane()J

    move-result-wide v0

    long-to-double v0, v0

    const-string v2, "build airport lane"

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    .line 214
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->addLane()Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getTimeUnlockable()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getUnlockTimeForNewLane(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->lock(J)V

    .line 216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V

    return-void
.end method

.method public static synthetic $r8$lambda$FlUPQtOloq_RtnoKmJG3takGTxE()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$GgMDPcjJ5N6D5VHp1g325_EpoX4(Linfo/flowersoft/theotown/components/airport/Lane;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .registers 4

    .line 390
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 391
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_a
    if-eqz p2, :cond_f

    .line 393
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$LRxPCtpjL_nBoPSCGHFdHU_R0Xw()Ljava/lang/Boolean;
    .registers 1

    .line 241
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic $r8$lambda$LTlw06CUQ1J62qjGRgVENW7iTKw(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;
    .registers 3

    .line 266
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->getTimeUnlockable()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MInKwhpXr2gHUJct3F7naobluoA(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 5

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 309
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 310
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getSx()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getTx()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 311
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getSy()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getTy()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    int-to-float p1, v2

    div-float/2addr p1, v1

    .line 310
    invoke-virtual {p0, v0, p1, v1}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$N3P0EUpPXHMuyKOVImaJhX9LVTQ(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 6

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 290
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    .line 292
    new-instance v1, Linfo/flowersoft/theotown/tools/AirportLaneTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/AirportLaneTool;-><init>()V

    .line 293
    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, p1, p2, v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;Lio/blueflower/stapel2d/gamestack/Stage;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Tool;->registerClickListener(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V

    .line 305
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p0

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SDlJ_-oChXvkyjIs04687lUvlCU(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;
    .registers 1

    .line 345
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XIUTPMIR3PGNfmOJU9rBhPOi8o4(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 260
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 260
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aejJO8hbcu5PbiPSxPBu-5K4gIk(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;
    .registers 1

    .line 353
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dvJBcdsM4PdmtXijCpi89KzoXLM(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 6

    .line 329
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 329
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 329
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 330
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 331
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 333
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x64d

    .line 334
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa55

    .line 335
    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->getName()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {v0, v1, v2, p0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2mKz6Fys57HaMuVYy3X7KohWeg(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 1

    .line 368
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V

    return-void
.end method

.method public static synthetic $r8$lambda$gcTjZbri49_1NHdh1FdABcAdoNQ(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;
    .registers 1

    .line 316
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gmiOEmclqNGRmnkjSgrzGDJTZ-0(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getPriceForNewLane()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lO6osfh7Hq2pggRlaUWId-VV5x4(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    new-instance v0, Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/ui/AirplaneDialog;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    .line 368
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 369
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$omFM_EclGNpGpTbcNZF0xMMooUg(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;
    .registers 2

    .line 372
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ph---EvB1GTDvkYRunhcnFz1u1I(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    new-instance v0, Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/ui/AirplaneDialog;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    .line 381
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda22;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 382
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGwYVhC-OCDli9dscgcjP6v677k(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;
    .registers 1

    .line 360
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uBj41fvMvAikAlVw3sxO6up6DCc(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result v0

    if-nez v0, :cond_12

    .line 319
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p1, 0xd37

    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_12
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->hasAirplane()Z

    move-result v0

    if-nez v0, :cond_21

    .line 321
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p1, 0xb12

    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Lane;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_PwMWMfaZLimjNh3Ok1oXECq9I(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)Ljava/lang/Boolean;
    .registers 2

    .line 208
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->isLaneAddable()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    .line 208
    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yxDodCCey7ncchc_N1ybZepcx8A(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;Lio/blueflower/stapel2d/gamestack/Stage;Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p7, 0x0

    .line 294
    invoke-virtual {p1, p5, p6, p7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 295
    iget-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object p7, p7, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {p7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 296
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p1, p5, p6}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInVirtualLanes(II)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 297
    invoke-virtual {p1, p5, p6}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInLanes(II)Z

    move-result p1

    if-nez p1, :cond_42

    .line 298
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p1, p2, p5, p6}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->assignLane(Linfo/flowersoft/theotown/components/airport/Lane;II)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 299
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 300
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {p0, p3}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_42
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    .line 51
    const-string v0, "$ap_tower00"

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->TOWER_BUILDING:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Linfo/flowersoft/theotown/components/airport/DefaultAirport;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Z
    .registers 1

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->isLaneAddable()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 1

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    move-object/from16 v2, p4

    const/16 v3, 0x13

    .line 81
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iput-object v3, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object v4, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 84
    iput-object v2, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 85
    iput-object v9, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 86
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    iput-object v4, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 88
    new-instance v10, Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    add-int/lit8 v14, v4, -0x20

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v15, p2

    invoke-direct/range {v10 .. v15}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 90
    invoke-super {v1, v0, v10, v9, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 92
    new-instance v15, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 93
    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    const/16 v21, 0x1e

    add-int/lit8 v19, v2, -0x1e

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v22, p2

    invoke-direct/range {v15 .. v22}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 96
    new-instance v16, Lio/blueflower/stapel2d/gui/Label;

    .line 98
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v4, 0x9aa

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 99
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaunchedAirplanes()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeSmallNumber(DZ)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 97
    invoke-static {v2, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    .line 100
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v22

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v22}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v2, v16

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 101
    new-instance v16, Lio/blueflower/stapel2d/gui/Label;

    .line 103
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v5, 0xc19

    invoke-interface {v2, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 104
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getTransferredPassengers()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeSmallNumber(DZ)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 105
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v22

    invoke-direct/range {v16 .. v22}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v2, v16

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v3}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 107
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 108
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xca7

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v7, v21

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 117
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 75
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x3e4

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 65
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    return v0
.end method

.method public final getListItemForLockedLane(Linfo/flowersoft/theotown/components/airport/Lane;)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 9

    .line 257
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    .line 264
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 265
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xbf9

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 266
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 267
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc3b

    .line 269
    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;

    invoke-direct {v5, p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 267
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 280
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(I)V

    .line 282
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final getListItemForNewLane(Z)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 14

    .line 208
    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)V

    .line 209
    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V

    .line 210
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v4}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V

    .line 219
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 220
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(I)V

    .line 221
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x348

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 222
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 232
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    .line 234
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getPriceForNewLane()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 239
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x283

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda3;-><init>()V

    new-instance v10, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda4;-><init>()V

    new-instance v11, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)V

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 244
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 245
    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, p1, v2}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackground(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 247
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final getListItemForUnlockedLane(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/airport/Lane;Z)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 288
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    .line 289
    new-instance v7, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0, v3, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;)V

    .line 308
    new-instance v11, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;

    invoke-direct {v11, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    .line 315
    new-instance v12, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v12, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 316
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 317
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V

    if-eqz v2, :cond_3f

    .line 328
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd29

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    invoke-virtual {v12, v3, v4, v5}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 340
    :cond_3f
    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc48

    .line 342
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda15;

    invoke-direct {v13, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    move-object v4, v12

    const/4 v12, 0x0

    move-object v8, v4

    .line 340
    invoke-virtual/range {v8 .. v13}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    move-object v12, v8

    if-eqz v2, :cond_c4

    .line 348
    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xe4

    .line 350
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;

    invoke-direct {v15, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    const/16 v16, 0x0

    move-object/from16 v17, v3

    .line 348
    invoke-virtual/range {v12 .. v17}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 355
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x550

    .line 357
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda18;

    invoke-direct {v9, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda18;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    const/4 v10, 0x1

    const/4 v8, 0x0

    move-object v4, v12

    .line 355
    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 363
    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc9b

    .line 365
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;

    invoke-direct {v15, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    const/16 v18, 0x1

    move-object/from16 v17, v3

    .line 363
    invoke-virtual/range {v12 .. v18}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 375
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v3

    .line 376
    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    if-eqz v3, :cond_b0

    .line 378
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/airport/Airplane;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_ae
    move-object v14, v3

    goto :goto_b3

    :cond_b0
    const-string v3, ""

    goto :goto_ae

    :goto_b3
    new-instance v15, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;

    invoke-direct {v15, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;)V

    const/16 v16, 0x0

    move-object/from16 v17, v3

    .line 376
    invoke-virtual/range {v12 .. v17}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 389
    :cond_c4
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, v11, v2, v7}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    return-object v12
.end method

.method public final getPriceForNewLane()J
    .registers 5

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 402
    const-string v0, "AirportCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0xc13

    return p1
.end method

.method public final getUnlockTimeForNewLane(I)J
    .registers 6

    .line 253
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    const-wide/32 v0, 0x2932e0

    int-to-long v2, p1

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public final isLaneAddable()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 201
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 202
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/airport/Lane;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public final rebuildList()V
    .registers 13

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->TOWER_BUILDING:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 124
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 126
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 129
    new-instance v4, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v5

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v5

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 130
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v7

    if-nez v7, :cond_3f

    if-nez v5, :cond_2b

    :cond_3f
    move-object v5, v6

    goto :goto_2b

    :cond_41
    if-nez v5, :cond_89

    if-nez v2, :cond_ca

    .line 137
    new-instance v6, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v6, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 138
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(I)V

    .line 139
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x791

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x2b2

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 141
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa03

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;

    invoke-direct {v9, p0, v1, v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    new-instance v10, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$3;

    invoke-direct {v10, p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    new-instance v11, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;

    invoke-direct {v11, p0, v1, v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void

    .line 160
    :cond_89
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-nez v0, :cond_cb

    if-nez v2, :cond_ca

    .line 162
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 163
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(I)V

    .line 164
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x369

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5df

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 167
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x3f

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;

    invoke-direct {v4, p0, v1, v5}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 174
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_ca
    return-void

    .line 177
    :cond_cb
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    .line 178
    :goto_d2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f8

    .line 179
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 182
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/airport/Lane;->isUnlocked()Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 183
    invoke-virtual {p0, v1, v5, v3}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getListItemForUnlockedLane(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/airport/Lane;Z)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v5

    goto :goto_f0

    :cond_e9
    if-eqz v2, :cond_ec

    goto :goto_f5

    .line 186
    :cond_ec
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getListItemForLockedLane(Linfo/flowersoft/theotown/components/airport/Lane;)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v5

    .line 189
    :goto_f0
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :goto_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    .line 192
    :cond_f8
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getListItemForNewLane(Z)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "AirportCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 111
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 112
    new-instance v0, Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/ui/AirplaneDialog;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$3;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 150
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 147
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$3;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass4 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$4)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->val$towerBuildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 152
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$4;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass5 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$5)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->rebuildList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$tower0:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->val$tower0:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->val$city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->val$tower0:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->focus(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass6 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$6)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getListItemForNewLane(Z)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 222
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 226
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xb55

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x16d

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo.AnonymousClass7 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$7)
.class public Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;
.super Ljava/lang/Object;
.source "AirportCityInfo.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->getListItemForLockedLane(Linfo/flowersoft/theotown/components/airport/Lane;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic val$lane:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;->val$lane:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;->val$lane:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/Lane;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    .line 276
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 272
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$7;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$w_PwMWMfaZLimjNh3Ok1oXECq9I(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$gmiOEmclqNGRmnkjSgrzGDJTZ-0(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$2:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$2:Z

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda10;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$GgMDPcjJ5N6D5VHp1g325_EpoX4(Linfo/flowersoft/theotown/components/airport/Lane;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda11;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$MInKwhpXr2gHUJct3F7naobluoA(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$gcTjZbri49_1NHdh1FdABcAdoNQ(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda13;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$uBj41fvMvAikAlVw3sxO6up6DCc(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda14 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda14;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$dvJBcdsM4PdmtXijCpi89KzoXLM(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda15 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$SDlJ_-oChXvkyjIs04687lUvlCU(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda16 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda16;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$4R8knNBOP-9L7AomkMlr7fQJGok(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda17 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$aejJO8hbcu5PbiPSxPBu-5K4gIk(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda18 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$sGwYVhC-OCDli9dscgcjP6v677k(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda19 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda19;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$lO6osfh7Hq2pggRlaUWId-VV5x4(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$D9eEh_J6QnQ3s9p6GQDOc0Cw4cA(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda20 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda20;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$7sbxKgz0xcYbvvb1OH7yYM_FBdk(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda21 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$LTlw06CUQ1J62qjGRgVENW7iTKw(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda22 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$1vWepLh115kNGQPFRAi2OVX7HVE(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda23 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Tool$ClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/Tiles;

.field public final synthetic f$2:Linfo/flowersoft/theotown/components/airport/Lane;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gamestack/Stage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/city/Tiles;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/components/airport/Lane;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$3:Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method


# virtual methods
.method public final onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 15

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/city/Tiles;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/components/airport/Lane;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda23;->f$3:Lio/blueflower/stapel2d/gamestack/Stage;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$yxDodCCey7ncchc_N1ybZepcx8A(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;Lio/blueflower/stapel2d/gamestack/Stage;Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda24 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$2PJYU_7tEyl1j7iI_G2hRG8SBFo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda25 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/Lane;->setName(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda26 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$e2mKz6Fys57HaMuVYy3X7KohWeg(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda27 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$XIUTPMIR3PGNfmOJU9rBhPOi8o4(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$FlUPQtOloq_RtnoKmJG3takGTxE()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda4;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$LRxPCtpjL_nBoPSCGHFdHU_R0Xw()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$7ZHeRh-U_r3FK9HsChaArgrgwsk(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/Tiles;

.field public final synthetic f$2:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/city/Tiles;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$2:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/city/Tiles;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda6;->f$2:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$N3P0EUpPXHMuyKOVImaJhX9LVTQ(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/city/Tiles;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$omFM_EclGNpGpTbcNZF0xMMooUg(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$ph---EvB1GTDvkYRunhcnFz1u1I(Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;Linfo/flowersoft/theotown/components/airport/Lane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.cityinfo.AirportCityInfo$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/airport/Lane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;->$r8$lambda$2-F3MU88xr2358HcbSopPHkT1aM(Linfo/flowersoft/theotown/components/airport/Lane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
