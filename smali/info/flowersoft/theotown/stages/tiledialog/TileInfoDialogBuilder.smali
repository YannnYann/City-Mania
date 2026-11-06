###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public final informationProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->informationProviders:Ljava/util/List;

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 49
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 51
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/WasteBuildingInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/WasteBuildingInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/BuildingInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/EnergyInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/EnergyInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/WaterInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/WaterInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/RailwayInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/RailwayInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")",
            "Linfo/flowersoft/theotown/ui/Dialog;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    .line 79
    :goto_1c
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->informationProviders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4a

    .line 80
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->informationProviders:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;

    .line 81
    iget-object v8, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v8, v0, v2}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 82
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->canHandle()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 83
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->isMutualExclusive()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 84
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 86
    :cond_40
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v6, v13, v12}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->finishImmediately(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)Ljava/lang/Runnable;

    move-result-object v5

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_4a
    if-eqz v5, :cond_50

    .line 92
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-object v3

    .line 96
    :cond_50
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_304

    .line 98
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v11, v0

    new-array v15, v11, [I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const-string v2, ""

    const/4 v4, -0x1

    move-object/from16 v18, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_e3

    .line 104
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;

    .line 106
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 107
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_86

    move-object/from16 v18, v16

    .line 109
    :cond_86
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getSound()I

    move-result v16

    if-ltz v16, :cond_8e

    move/from16 v4, v16

    :cond_8e
    move-object/from16 v16, v3

    .line 112
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getPluginId()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 114
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getCityInfos()[Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    move-result-object v3

    if-eqz v3, :cond_b2

    const/4 v14, 0x0

    const/16 v23, 0x0

    .line 116
    :goto_a1
    array-length v1, v3

    if-ge v14, v1, :cond_b4

    .line 117
    aget-object v1, v3, v14

    .line 118
    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_af

    .line 119
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_af
    add-int/lit8 v14, v14, 0x1

    goto :goto_a1

    :cond_b2
    const/16 v23, 0x0

    .line 124
    :cond_b4
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getInfluenceVector()[I

    move-result-object v1

    if-eqz v1, :cond_c9

    move/from16 v3, v23

    :goto_bc
    if-ge v3, v11, :cond_c9

    .line 127
    aget v14, v15, v3

    aget v17, v1, v3

    add-int v14, v14, v17

    aput v14, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 131
    :cond_c9
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getActions()[Linfo/flowersoft/theotown/stages/tiledialog/Action;

    move-result-object v1

    if-eqz v1, :cond_dc

    move/from16 v3, v23

    .line 133
    :goto_d1
    array-length v8, v1

    if-ge v3, v8, :cond_dc

    .line 134
    aget-object v8, v1, v3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d1

    :cond_dc
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto :goto_6e

    :cond_e3
    move-object/from16 v16, v3

    const/16 v23, 0x0

    const/4 v14, 0x1

    .line 139
    new-array v1, v14, [Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    aput-object v16, v1, v23

    if-ltz v4, :cond_fa

    .line 141
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v3

    sget-object v5, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-result-object v3

    aput-object v3, v1, v23

    .line 144
    :cond_fa
    new-instance v16, Linfo/flowersoft/theotown/ui/Dialog;

    sget v17, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v20, 0x12c

    const/16 v21, 0xb9

    const-string v19, ""

    move-object/from16 v22, p3

    invoke-direct/range {v16 .. v22}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v3, v0

    .line 146
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;

    const/4 v5, 0x0

    move v4, v6

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    move-object v8, v2

    const/4 v2, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x0

    move/from16 v18, v4

    const/4 v4, 0x0

    move-object v14, v8

    move-object/from16 v8, v16

    move-object/from16 p1, v17

    move-object/from16 v17, v9

    move/from16 v9, v18

    move-object/from16 v18, v15

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Linfo/flowersoft/theotown/ui/Dialog;)V

    move-object v0, v8

    if-lez v9, :cond_19b

    .line 170
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v2

    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v2

    if-eqz v2, :cond_19b

    .line 172
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v3

    if-nez v3, :cond_19b

    .line 173
    new-instance v3, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 174
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 175
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 176
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    sub-int v6, v6, v29

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 178
    new-instance v24, Lio/blueflower/stapel2d/gui/Label;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xae2

    .line 180
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 179
    invoke-static {v5, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 182
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    sub-int v27, v2, v29

    const/16 v28, 0x0

    .line 184
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v30

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v30}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v2, v24

    .line 185
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 186
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 190
    :cond_19b
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;

    invoke-direct {v2, v1, v15}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    move/from16 v2, v23

    .line 197
    :goto_1a5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c9

    move-object/from16 v3, p1

    .line 198
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/stages/tiledialog/Action;

    .line 199
    invoke-interface {v4}, Linfo/flowersoft/theotown/stages/tiledialog/Action;->getIcon()I

    move-result v5

    .line 200
    invoke-interface {v4}, Linfo/flowersoft/theotown/stages/tiledialog/Action;->getText()Ljava/lang/String;

    .line 201
    new-instance v6, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;

    invoke-direct {v6, v1, v4, v0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;Linfo/flowersoft/theotown/stages/tiledialog/Action;Linfo/flowersoft/theotown/ui/Dialog;)V

    move/from16 v4, v23

    invoke-virtual {v0, v5, v14, v4, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    add-int/lit8 v2, v2, 0x1

    const/16 v23, 0x0

    goto :goto_1a5

    :cond_1c9
    const/4 v4, 0x0

    .line 210
    :goto_1ca
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_1f4

    .line 211
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    .line 213
    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getIcon()I

    move-result v3

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 214
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTitleId(Linfo/flowersoft/theotown/city/City;)I

    move-result v6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;

    move-object/from16 v8, p4

    invoke-direct {v6, v1, v8, v2}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, v3, v5, v2, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ca

    .line 223
    :cond_1f4
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v4, 0x0

    :goto_1fa
    if-ge v4, v11, :cond_212

    .line 225
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    aget-object v3, v3, v4

    .line 226
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isHidden()Z

    move-result v3

    if-nez v3, :cond_20f

    aget v3, v18, v4

    if-lez v3, :cond_20f

    .line 227
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_20f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fa

    .line 231
    :cond_212
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_281

    .line 232
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    aget-object v2, v3, v2

    .line 233
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v4, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    move-object/from16 v16, v0

    .line 235
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$5;

    move-object v3, v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getIconId()I

    move-result v2

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 236
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getNameId()I

    move-result v3

    invoke-interface {v4, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    .line 238
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v5, v7

    move v7, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 247
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/16 v2, 0x78

    .line 248
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    const/16 v2, 0x50

    .line 249
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 250
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    :cond_27d
    move-object v15, v9

    move-object/from16 v9, v16

    goto :goto_2de

    :cond_281
    move-object/from16 v16, v0

    move-object v9, v7

    const/4 v14, 0x0

    .line 252
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_27d

    .line 253
    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2b2

    if-eqz v17, :cond_2b2

    .line 254
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v2, v3, :cond_2b2

    .line 256
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 259
    :cond_2b2
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x704

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    .line 261
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v11, v15

    move-object/from16 v10, v18

    move-object v15, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;[I[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V

    :goto_2de
    move v4, v14

    .line 309
    :goto_2df
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2f1

    .line 310
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;

    .line 311
    invoke-virtual {v0, v9, v13, v12}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2df

    .line 314
    :cond_2f1
    :goto_2f1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_303

    .line 315
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;

    .line 316
    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->finishLast(Linfo/flowersoft/theotown/ui/Dialog;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2f1

    :cond_303
    return-object v9

    :cond_304
    move-object/from16 v16, v3

    return-object v16
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "TileInfoDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$providers:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$providers:Ljava/util/List;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 6

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 155
    :goto_7
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$providers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 156
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$providers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;

    .line 158
    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getIcon()I

    move-result v4

    if-eqz v4, :cond_1e

    move v2, v4

    .line 161
    :cond_1e
    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 164
    :cond_35
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setIcon(I)V

    .line 165
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

.field public final synthetic val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V
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

    .line 190
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;->val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$2;->val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

.field public final synthetic val$action:Linfo/flowersoft/theotown/stages/tiledialog/Action;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;Linfo/flowersoft/theotown/stages/tiledialog/Action;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;->val$action:Linfo/flowersoft/theotown/stages/tiledialog/Action;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;->val$action:Linfo/flowersoft/theotown/stages/tiledialog/Action;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/tiledialog/Action;->onClick()V

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$4)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

.field public final synthetic val$cityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

.field public final synthetic val$cityInfoTrigger:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
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

    .line 215
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;->val$cityInfoTrigger:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;->val$cityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;->val$cityInfoTrigger:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$4;->val$cityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$5)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TileInfoDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 238
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 244
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$6)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TileInfoDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$influences:[I

.field public final synthetic val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;[I[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V
    .registers 12
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
            0x1010,
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
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$influences:[I

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 11

    .line 264
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->clearButtons()V

    .line 266
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_4b

    aget-object v7, v1, v3

    .line 270
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$influences:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v9, v4, v5

    if-eqz v9, :cond_47

    .line 271
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isHidden()Z

    move-result v4

    if-nez v4, :cond_47

    .line 272
    new-instance v4, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iget-object v6, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    move-object v8, v7

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Linfo/flowersoft/theotown/city/components/InfluenceType;I)V

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v6, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$2;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;)V

    invoke-interface {v4, v6}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    goto :goto_48

    :cond_47
    move-object v5, p0

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_4b
    move-object v5, p0

    .line 295
    iget-object v1, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    new-instance v2, Linfo/flowersoft/theotown/ui/Selector;

    iget-object v3, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x704

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 296
    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V

    .line 295
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->abuseFor(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 298
    iget-object v0, v5, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    new-instance v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass6.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$6$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;
.source "TileInfoDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

.field public final synthetic val$type:Linfo/flowersoft/theotown/city/components/InfluenceType;

.field public final synthetic val$value:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Linfo/flowersoft/theotown/city/components/InfluenceType;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->val$type:Linfo/flowersoft/theotown/city/components/InfluenceType;

    iput p5, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->val$value:I

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    return-void
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 4

    .line 275
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 276
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->val$type:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 277
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    .line 278
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$1;->val$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass6.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$6$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$2;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.AnonymousClass6.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder$6$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$3;
.super Ljava/lang/Object;
.source "TileInfoDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$3;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6$3;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder$6;->val$soundStream:[Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    :cond_c
    return-void
.end method
