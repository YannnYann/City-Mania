###### Class info.flowersoft.theotown.ui.selectable.SelectableResolver (info.flowersoft.theotown.ui.selectable.SelectableResolver)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;
.super Ljava/lang/Object;
.source "SelectableResolver.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-nez p2, :cond_a

    return-object v3

    .line 59
    :cond_a
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/ToolGroupDraft;

    if-eqz v2, :cond_38

    .line 60
    check-cast p1, Linfo/flowersoft/theotown/draft/ToolGroupDraft;

    .line 61
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/ToolGroupDraft;->drafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 62
    :goto_18
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ToolGroupDraft;->drafts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 63
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ToolGroupDraft;->drafts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p0, v3, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/2addr v0, v1

    goto :goto_18

    .line 65
    :cond_30
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p2, p3, p1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolGroupDraft;[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    return-object p2

    .line 66
    :cond_38
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v2, :cond_5c

    .line 67
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 68
    iget-object p2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result p2

    if-eqz p2, :cond_54

    iget-object p2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object p3, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p2, p3, :cond_54

    .line 69
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    return-object p2

    .line 71
    :cond_54
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    return-object p2

    .line 73
    :cond_5c
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v2, :cond_6a

    .line 74
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RoadDraft;)V

    return-object p2

    .line 75
    :cond_6a
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v2, :cond_78

    .line 76
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V

    return-object p2

    .line 77
    :cond_78
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v2, :cond_86

    .line 78
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/WireDraft;)V

    return-object p2

    .line 79
    :cond_86
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v2, :cond_94

    .line 80
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectablePipeDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectablePipeDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/PipeDraft;)V

    return-object p2

    .line 81
    :cond_94
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/RailDraft;

    if-eqz v2, :cond_a2

    .line 82
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/RailDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RailDraft;)V

    return-object p2

    .line 83
    :cond_a2
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v2, :cond_b0

    .line 84
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    return-object p2

    .line 85
    :cond_b0
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz v2, :cond_be

    .line 86
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/TreeDraft;)V

    return-object p2

    .line 87
    :cond_be
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v2, :cond_cc

    .line 88
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    return-object p2

    .line 89
    :cond_cc
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz v2, :cond_da

    .line 90
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BusStopDraft;)V

    return-object p2

    .line 91
    :cond_da
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eqz v2, :cond_e8

    .line 92
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-direct {p2, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/FenceDraft;)V

    return-object p2

    .line 93
    :cond_e8
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v2, :cond_f6

    .line 94
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-direct {p2, v0, p1, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CarDraft;Lio/blueflower/stapel2d/drawing/Color;)V

    return-object p2

    .line 95
    :cond_f6
    instance-of v2, p1, Linfo/flowersoft/theotown/draft/ToolDraft;

    if-eqz v2, :cond_2cc

    .line 96
    move-object p2, p1

    check-cast p2, Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 97
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_338

    goto/16 :goto_20b

    :sswitch_10c
    const-string v2, "$tool_terrain_water00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_116

    goto/16 :goto_20b

    :cond_116
    const/16 p3, 0x13

    goto/16 :goto_20b

    :sswitch_11a
    const-string v2, "$tool_disaster_green_slime00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_124

    goto/16 :goto_20b

    :cond_124
    const/16 p3, 0x12

    goto/16 :goto_20b

    :sswitch_128
    const-string v2, "$tool_eyedropper00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_132

    goto/16 :goto_20b

    :cond_132
    const/16 p3, 0x11

    goto/16 :goto_20b

    :sswitch_136
    const-string v2, "$tool_disaster_blizzard00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_140

    goto/16 :goto_20b

    :cond_140
    const/16 p3, 0x10

    goto/16 :goto_20b

    :sswitch_144
    const-string v2, "$tool_disaster_riot00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    goto/16 :goto_20b

    :cond_14e
    const/16 p3, 0xf

    goto/16 :goto_20b

    :sswitch_152
    const-string v2, "$tool_disaster_nuke00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15c

    goto/16 :goto_20b

    :cond_15c
    const/16 p3, 0xe

    goto/16 :goto_20b

    :sswitch_160
    const-string v2, "$tool_disaster_illness00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16a

    goto/16 :goto_20b

    :cond_16a
    const/16 p3, 0xd

    goto/16 :goto_20b

    :sswitch_16e
    const-string v2, "$tool_disaster_fire00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_178

    goto/16 :goto_20b

    :cond_178
    const/16 p3, 0xc

    goto/16 :goto_20b

    :sswitch_17c
    const-string v2, "$tool_terrain_lower00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_186

    goto/16 :goto_20b

    :cond_186
    const/16 p3, 0xb

    goto/16 :goto_20b

    :sswitch_18a
    const-string v2, "$tool_disaster_earthquake00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_194

    goto/16 :goto_20b

    :cond_194
    const/16 p3, 0xa

    goto/16 :goto_20b

    :sswitch_198
    const-string v2, "$tool_disaster_flooding00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a2

    goto/16 :goto_20b

    :cond_1a2
    const/16 p3, 0x9

    goto/16 :goto_20b

    :sswitch_1a6
    const-string v2, "$tool_movebuilding00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b0

    goto/16 :goto_20b

    :cond_1b0
    const/16 p3, 0x8

    goto/16 :goto_20b

    :sswitch_1b4
    const-string v2, "$tool_disaster_tornado00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1bd

    goto :goto_20b

    :cond_1bd
    const/4 p3, 0x7

    goto :goto_20b

    :sswitch_1bf
    const-string v2, "$tool_terrain_land00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c8

    goto :goto_20b

    :cond_1c8
    const/4 p3, 0x6

    goto :goto_20b

    :sswitch_1ca
    const-string v2, "$tool_disaster_pink_slime00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d3

    goto :goto_20b

    :cond_1d3
    const/4 p3, 0x5

    goto :goto_20b

    :sswitch_1d5
    const-string v2, "$tool_terrain_platform00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1de

    goto :goto_20b

    :cond_1de
    const/4 p3, 0x4

    goto :goto_20b

    :sswitch_1e0
    const-string v2, "$tool_disaster_meteorite00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e9

    goto :goto_20b

    :cond_1e9
    const/4 p3, 0x3

    goto :goto_20b

    :sswitch_1eb
    const-string v2, "$tool_label00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f4

    goto :goto_20b

    :cond_1f4
    const/4 p3, 0x2

    goto :goto_20b

    :sswitch_1f6
    const-string v2, "$tool_terrain_increase00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ff

    goto :goto_20b

    :cond_1ff
    move p3, v1

    goto :goto_20b

    :sswitch_201
    const-string v2, "$tool_disaster_ufo00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20a

    goto :goto_20b

    :cond_20a
    move p3, v0

    :goto_20b
    packed-switch p3, :pswitch_data_38a

    .line 137
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->onClickTransitions:Ljava/util/List;

    if-nez p1, :cond_21c

    iget-object p1, p2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21b

    goto :goto_21c

    :cond_21b
    return-object v3

    .line 138
    :cond_21c
    :goto_21c
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p3, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;)V

    return-object p1

    .line 99
    :pswitch_224
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    return-object p1

    .line 123
    :pswitch_22c
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/GreenSlimeDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 135
    :pswitch_236
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-object p1

    .line 127
    :pswitch_23e
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 117
    :pswitch_248
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 113
    :pswitch_252
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 121
    :pswitch_25c
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 105
    :pswitch_266
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 109
    :pswitch_270
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 115
    :pswitch_27a
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 129
    :pswitch_284
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableMoveBuilding;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableMoveBuilding;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-object p1

    .line 111
    :pswitch_28c
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 101
    :pswitch_296
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    return-object p1

    .line 125
    :pswitch_29e
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/PinkSlimeDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 107
    :pswitch_2a8
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 103
    :pswitch_2b2
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-object p1

    .line 133
    :pswitch_2ba
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p3, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;)V

    return-object p1

    .line 119
    :pswitch_2c2
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-direct {p1, p3, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V

    return-object p1

    .line 143
    :cond_2cc
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v0, :cond_2f6

    .line 144
    check-cast p1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 145
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 146
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2df
    :goto_2df
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 147
    invoke-virtual {p0, v1, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v1

    if-eqz v1, :cond_2df

    .line 149
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_2df

    :cond_2f5
    return-object v0

    .line 153
    :cond_2f6
    instance-of p2, p1, Linfo/flowersoft/theotown/draft/ScriptDraft;

    if-nez p2, :cond_32f

    instance-of p2, p1, Linfo/flowersoft/theotown/draft/DataDraft;

    if-eqz p2, :cond_2ff

    goto :goto_32f

    .line 166
    :cond_2ff
    instance-of p2, p1, Linfo/flowersoft/theotown/draft/TemplateDraft;

    if-eqz p2, :cond_304

    return-object v3

    .line 169
    :cond_304
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "May not resolve draft "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SelectableResolver"

    invoke-interface {p2, p3, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 155
    :cond_32f
    :goto_32f
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p2, p0, p3, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/Draft;)V

    return-object p2

    nop

    :sswitch_data_338
    .sparse-switch
        -0x783b6d7d -> :sswitch_201
        -0x74b3c791 -> :sswitch_1f6
        -0x6868858f -> :sswitch_1eb
        -0x62ec41cd -> :sswitch_1e0
        -0x52b6a5a0 -> :sswitch_1d5
        -0x14b6eaa6 -> :sswitch_1ca
        0x9e56458 -> :sswitch_1bf
        0x3468819a -> :sswitch_1b4
        0x3fb06d28 -> :sswitch_1a6
        0x427e433f -> :sswitch_198
        0x431725e8 -> :sswitch_18a
        0x4b2b3f34 -> :sswitch_17c
        0x57617751 -> :sswitch_16e
        0x60ae1105 -> :sswitch_160
        0x65ae27bc -> :sswitch_152
        0x6bda79f7 -> :sswitch_144
        0x6d11a52f -> :sswitch_136
        0x6e8532e0 -> :sswitch_128
        0x745b7091 -> :sswitch_11a
        0x7901abca -> :sswitch_10c
    .end sparse-switch

    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_2c2
        :pswitch_2ba
        :pswitch_2b2
        :pswitch_2a8
        :pswitch_2ba
        :pswitch_29e
        :pswitch_296
        :pswitch_28c
        :pswitch_284
        :pswitch_27a
        :pswitch_270
        :pswitch_2ba
        :pswitch_266
        :pswitch_25c
        :pswitch_252
        :pswitch_248
        :pswitch_23e
        :pswitch_236
        :pswitch_22c
        :pswitch_224
    .end packed-switch
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableResolver.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableResolver$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver$1;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
