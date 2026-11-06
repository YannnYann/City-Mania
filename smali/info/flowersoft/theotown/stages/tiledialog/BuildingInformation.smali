###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation (info.flowersoft.theotown.stages.tiledialog.BuildingInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "BuildingInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->renameable:Z

    if-eqz v0, :cond_68

    .line 223
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    .line 224
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    .line 225
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 245
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    const/4 v6, 0x0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 254
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 255
    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/gui/Icon;->setAlignment(FF)V

    .line 256
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 259
    :cond_68
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v2, :cond_aa

    .line 260
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNTOUCHABLE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xcdb

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const-string v2, "cmdUntouchable"

    .line 283
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 287
    :cond_aa
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getVisibleUpgrades()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_11d

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v2

    if-nez v2, :cond_11d

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v2

    if-nez v2, :cond_11d

    move-object v2, v0

    .line 289
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;

    move-object v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xbbc

    .line 290
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 291
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 290
    invoke-static {v4, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 293
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 320
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    :cond_11d
    return-void
.end method

.method public finishLast(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 326
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;)Lvm2/LuaTable;

    move-result-object p1

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v1, "finishInformationDialog"

    invoke-virtual {p0, v0, v1, p1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public getCityInfos()[Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 333
    sget-object v2, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v1, :cond_29

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1f

    return-object v3

    .line 337
    :cond_1f
    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;-><init>()V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    aput-object v2, v1, v0

    return-object v1

    .line 335
    :cond_29
    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;-><init>()V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    aput-object v2, v1, v0

    return-object v1

    :cond_33
    return-object v3
.end method

.method public getIcon()I
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v1, "getIcon"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optint(I)I

    move-result v0

    if-ltz v0, :cond_10

    return v0

    .line 69
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getIcon()I

    move-result v0

    return v0
.end method

.method public getInfluenceVector()[I
    .registers 8

    .line 383
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    .line 387
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v1

    .line 389
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 390
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 392
    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    move v4, v2

    .line 393
    :goto_28
    array-length v5, v0

    if-ge v4, v5, :cond_3d

    .line 394
    aget v5, v0, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->influenceInduceVector:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    return-object v0
.end method

.method public getPluginId()I
    .registers 2

    .line 405
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    return v0
.end method

.method public getSound()I
    .registers 3

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 351
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 377
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getSound()I

    move-result v0

    return v0

    .line 375
    :pswitch_1e
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RELIGION:I

    return v0

    .line 371
    :pswitch_21
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_WATER:I

    return v0

    .line 369
    :pswitch_24
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_POWER:I

    return v0

    .line 365
    :pswitch_27
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_POLICE:I

    return v0

    .line 363
    :pswitch_2a
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_FIREDEPARTMENT:I

    return v0

    .line 361
    :pswitch_2d
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SPORT:I

    return v0

    .line 359
    :pswitch_30
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_PARK:I

    return v0

    .line 357
    :pswitch_33
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_INDUSTRIAL:I

    return v0

    .line 355
    :pswitch_36
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_COMMERCIAL:I

    return v0

    .line 353
    :pswitch_39
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RESIDENTIAL:I

    return v0

    .line 367
    :pswitch_3c
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MEDIC:I

    return v0

    .line 373
    :pswitch_3f
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SCHOOL:I

    return v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .registers 13

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3ae

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-nez v0, :cond_3ae

    .line 84
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 89
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getRCITypeName(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "\n"

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_43
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_61
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_82

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    goto :goto_83

    :cond_82
    move v2, v4

    .line 104
    :goto_83
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v7, "getText"

    invoke-virtual {p0, v6, v7}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    .line 110
    :cond_a2
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_264

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v6, v8, :cond_264

    .line 111
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultPeople;

    .line 113
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 115
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getEmptyCause()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v8

    if-eqz v8, :cond_eb

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v8, v1, v0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_eb
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/components/DefaultPeople;->countPeopleInBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 122
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v6

    if-eqz v6, :cond_108

    if-gtz v0, :cond_108

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallPeople()I

    move-result v6

    if-lez v6, :cond_108

    move v0, v5

    .line 123
    :cond_108
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v8, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v8, v6

    if-nez v2, :cond_172

    .line 125
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v2, v6, :cond_147

    .line 126
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xdb

    invoke-interface {v1, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_172

    .line 131
    :cond_147
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xcbc

    invoke-interface {v1, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_172
    :goto_172
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 139
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_355

    if-eqz v0, :cond_355

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v6

    move v8, v4

    .line 144
    :goto_18e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ge v8, v9, :cond_1c0

    .line 145
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 146
    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_1bd

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v11

    if-eqz v11, :cond_1bd

    .line 147
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v11

    aget v11, v11, v8

    cmpl-float v10, v11, v10

    if-ltz v10, :cond_1bd

    .line 149
    new-instance v10, Lkotlin/Pair;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1bd
    add-int/lit8 v8, v8, 0x1

    goto :goto_18e

    .line 154
    :cond_1c0
    new-instance v6, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$1;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getHappiness()F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xc8d

    invoke-interface {v1, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_355

    .line 166
    :goto_205
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_355

    .line 167
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 168
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v8

    .line 169
    iget-object v9, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v0

    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    if-nez v4, :cond_248

    const/16 v10, 0x492

    goto :goto_24a

    :cond_248
    const/16 v10, 0x93c

    :goto_24a
    invoke-interface {v1, v10}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_205

    :cond_264
    if-nez v2, :cond_291

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_291
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_2fb

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getMonthlyPrice()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_2d1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xb0

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    long-to-double v8, v8

    .line 187
    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2fb

    :cond_2d1
    if-gez v0, :cond_2fb

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xae

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    neg-long v8, v8

    long-to-double v8, v8

    .line 190
    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_2fb
    :goto_2fb
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 195
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v0

    .line 196
    sget-object v2, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v6, v2

    :goto_30a
    if-ge v4, v6, :cond_355

    aget v7, v2, v4

    .line 197
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getAspectFor(I)Linfo/flowersoft/theotown/components/coverage/Aspect;

    move-result-object v8

    .line 198
    iget-object v9, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v9, v7}, Linfo/flowersoft/theotown/city/objects/Building;->getUsedAspectAmount(I)I

    move-result v9

    .line 199
    iget-object v10, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-interface {v8, v10}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v10

    .line 200
    iget-object v11, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-interface {v8, v11}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    if-lez v8, :cond_352

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    sget-object v11, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->textIds:[I

    aget v7, v11, v7

    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 203
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 201
    invoke-static {v1, v7}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_352
    add-int/lit8 v4, v4, 0x1

    goto :goto_30a

    .line 207
    :cond_355
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v2, :cond_3ae

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 208
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v2, :cond_3ae

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 209
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v2, :cond_3ae

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x523

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    .line 211
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3ae
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v1, "getTitle"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 76
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1f
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$1;
.super Ljava/lang/Object;
.source "BuildingInformation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->getText()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lkotlin/Pair<",
        "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 154
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$1;->compare(Lkotlin/Pair;Lkotlin/Pair;)I

    move-result p1

    return p1
.end method

.method public compare(Lkotlin/Pair;Lkotlin/Pair;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Pair<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "BuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
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
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 228
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 229
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 230
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 231
    new-instance v1, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 238
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xab9

    .line 239
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x62a

    .line 240
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    .line 241
    invoke-virtual {v4}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$2$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;
.super Ljava/lang/Object;
.source "BuildingInformation.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 231
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 3

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setName(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;

    iget-object v0, p1, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$3;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "BuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 248
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 249
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 250
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 251
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p1, p1, 0x7

    int-to-float v3, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 p1, p1, 0x7

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass4 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$4)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "BuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 261
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 4

    .line 264
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    goto :goto_15

    .line 267
    :cond_e
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 270
    :goto_15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isPressed()Z
    .registers 3

    .line 281
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 275
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$4;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchable(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass5 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$5)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "BuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 293
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 8

    .line 296
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->clearButtons()V

    .line 298
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 300
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;)V

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 309
    new-instance v4, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v6, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-direct {v4, v6, v3, v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 310
    invoke-interface {v4, v0}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    .line 311
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 313
    :cond_47
    new-instance v0, Linfo/flowersoft/theotown/ui/Selector;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x7de

    .line 314
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 315
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V

    .line 316
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->abuseFor(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass5.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$5$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5$1;
.super Ljava/lang/Object;
.source "BuildingInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BuildingInformation.AnonymousClass6 (info.flowersoft.theotown.stages.tiledialog.BuildingInformation$6)
.class public synthetic Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;
.super Ljava/lang/Object;
.source "BuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 333
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->WATER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation$6;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    return-void
.end method
