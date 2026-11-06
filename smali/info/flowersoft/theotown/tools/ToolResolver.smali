###### Class info.flowersoft.theotown.tools.ToolResolver (info.flowersoft.theotown.tools.ToolResolver)
.class public Linfo/flowersoft/theotown/tools/ToolResolver;
.super Ljava/lang/Object;
.source "ToolResolver.java"


# static fields
.field public static disasterToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public static synthetic $r8$lambda$JGJtfiKhE7m2lMKrkE6fhakgqmk(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;
    .registers 2

    .line 185
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    .line 185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result p1

    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OueMuE7US0dFbOX4_WkuwC1DMDg(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/city/components/InfluenceType;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getNameId()I

    move-result v0

    if-eqz v0, :cond_14

    .line 168
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o2K7ReKssLKvG1wl6jdjuAEwuJg(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object p0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$marker_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p1}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getTag()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/tools/ToolResolver;->disasterToName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/tools/ToolResolver;->disasterToName:Ljava/util/Map;

    return-object v0
.end method

.method public static setDisasterName(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 250
    sget-object v0, Linfo/flowersoft/theotown/tools/ToolResolver;->disasterToName:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final finalizeDraftBasedBuildTool(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/tools/BuildTool;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/tools/BuildTool;",
            ">(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p2, :cond_ba

    if-eqz p1, :cond_ba

    .line 217
    const-string v0, "tool"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 219
    const-string v0, "marker"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_bc

    goto :goto_6a

    :sswitch_1e
    const-string v1, "density"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_6a

    :cond_27
    const/4 v0, 0x6

    goto :goto_6a

    :sswitch_29
    const-string v1, "water"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_6a

    :cond_32
    const/4 v0, 0x5

    goto :goto_6a

    :sswitch_34
    const-string v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_6a

    :cond_3d
    const/4 v0, 0x4

    goto :goto_6a

    :sswitch_3f
    const-string v1, "level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_6a

    :cond_48
    const/4 v0, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v1, "pipe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_6a

    :cond_53
    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v1, "traffic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_6a

    :cond_5e
    const/4 v0, 0x1

    goto :goto_6a

    :sswitch_60
    const-string v1, "happiness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    packed-switch v0, :pswitch_data_da

    goto :goto_ba

    .line 234
    :pswitch_6e
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/DensityMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/DensityMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 225
    :pswitch_79
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/WaterMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/WaterMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 228
    :pswitch_84
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 240
    :pswitch_8f
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/LevelMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/LevelMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 222
    :pswitch_9a
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 231
    :pswitch_a5
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-object p2

    .line 237
    :pswitch_b0
    new-instance p1, Linfo/flowersoft/theotown/tools/marker/HappinessMarker;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/tools/marker/HappinessMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    :cond_ba
    :goto_ba
    return-object p2

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x7e0d06d9 -> :sswitch_60
        -0x3f9dde03 -> :sswitch_55
        0x3481ae -> :sswitch_4a
        0x6219b84 -> :sswitch_3f
        0x65e8905 -> :sswitch_34
        0x6bac517 -> :sswitch_29
        0x5c8c94e8 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
    .end packed-switch
.end method

.method public resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;
    .registers 3

    const/4 v0, -0x1

    .line 65
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;I)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;I)Linfo/flowersoft/theotown/tools/BuildTool;
    .registers 7

    .line 71
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "$beach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    new-instance p2, Linfo/flowersoft/theotown/tools/BeachTool;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/tools/BeachTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    goto :goto_21

    .line 73
    :cond_10
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignment:Z

    if-eqz v0, :cond_1b

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V

    :goto_19
    move-object p2, v0

    goto :goto_21

    .line 76
    :cond_1b
    new-instance v0, Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V

    goto :goto_19

    .line 79
    :goto_21
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influencePreview:Z

    if-eqz v0, :cond_d7

    .line 80
    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_cd

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->superConductive:Z

    if-eqz v0, :cond_33

    goto/16 :goto_cd

    .line 82
    :cond_33
    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_45

    .line 83
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/WaterMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/marker/WaterMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    goto/16 :goto_d7

    .line 84
    :cond_45
    const-string v0, "metro"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/marker/MetroMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    goto/16 :goto_d7

    .line 86
    :cond_59
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_6c

    .line 87
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_TRAIN:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    goto :goto_d7

    .line 88
    :cond_6c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_79
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_9e

    .line 92
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    aget v3, v3, v2

    if-lez v3, :cond_9b

    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isHidden()Z

    move-result v3

    if-nez v3, :cond_9b

    .line 93
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 98
    :cond_9e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_aa

    .line 99
    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->NATURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_aa
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d7

    .line 103
    new-instance v2, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 104
    :goto_b7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c9

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->addInfluence(Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 107
    :cond_c9
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    goto :goto_d7

    .line 81
    :cond_cd
    :goto_cd
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 112
    :cond_d7
    :goto_d7
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ToolResolver;->finalizeDraftBasedBuildTool(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/tools/BuildTool;
    .registers 3

    .line 128
    new-instance v0, Linfo/flowersoft/theotown/tools/ZoneTool;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/ZoneTool;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->finalizeDraftBasedBuildTool(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/Class;)Linfo/flowersoft/theotown/tools/DisasterTool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;)",
            "Linfo/flowersoft/theotown/tools/DisasterTool;"
        }
    .end annotation

    .line 190
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver$1;-><init>(Linfo/flowersoft/theotown/tools/ToolResolver;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;
    .registers 5

    .line 164
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, p1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;-><init>(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 165
    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public resolve(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/tools/MarkTool;
    .registers 5

    .line 184
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/ToolResolver;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, p1}, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;-><init>(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 185
    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public resolve(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)Linfo/flowersoft/theotown/tools/MarkTool;
    .registers 4

    .line 177
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/MarkTool;-><init>(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 178
    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public resolve(Linfo/flowersoft/theotown/draft/RailDraft;)Linfo/flowersoft/theotown/tools/RailTool;
    .registers 3

    .line 211
    new-instance v0, Linfo/flowersoft/theotown/tools/RailTool;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/RailTool;-><init>(Linfo/flowersoft/theotown/draft/RailDraft;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->finalizeDraftBasedBuildTool(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/tools/RailTool;

    return-object p1
.end method

.method public resolve(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/tools/RoadTool;
    .registers 3

    .line 207
    new-instance v0, Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->finalizeDraftBasedBuildTool(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/tools/RoadTool;

    return-object p1
.end method

.method public resolveRemove()Linfo/flowersoft/theotown/tools/RemoveTool;
    .registers 2

    .line 132
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>()V

    return-object v0
.end method

.method public resolveRemoveFenceTool()Linfo/flowersoft/theotown/tools/RemoveFenceTool;
    .registers 2

    .line 160
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveFenceTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemoveFenceTool;-><init>()V

    return-object v0
.end method

.method public resolveRemoveMetroTool()Linfo/flowersoft/theotown/tools/RemoveTunnelTool;
    .registers 3

    .line 148
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/RemoveTunnelTool;-><init>(I)V

    return-object v0
.end method

.method public resolveRemovePipe()Linfo/flowersoft/theotown/tools/RemovePipeTool;
    .registers 2

    .line 136
    new-instance v0, Linfo/flowersoft/theotown/tools/RemovePipeTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemovePipeTool;-><init>()V

    return-object v0
.end method

.method public resolveRemoveRoadDecorationTool()Linfo/flowersoft/theotown/tools/RemoveRoadDecorationTool;
    .registers 2

    .line 156
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveRoadDecorationTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemoveRoadDecorationTool;-><init>()V

    return-object v0
.end method

.method public resolveRemoveTunnelTool()Linfo/flowersoft/theotown/tools/RemoveTunnelTool;
    .registers 3

    .line 144
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/RemoveTunnelTool;-><init>(I)V

    return-object v0
.end method

.method public resolveRemoveUndergroundWireTool()Linfo/flowersoft/theotown/tools/RemoveUndergroundWireTool;
    .registers 2

    .line 152
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveUndergroundWireTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemoveUndergroundWireTool;-><init>()V

    return-object v0
.end method

.method public resolveRemoveZone()Linfo/flowersoft/theotown/tools/RemoveZoneTool;
    .registers 2

    .line 140
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveZoneTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RemoveZoneTool;-><init>()V

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.ToolResolver.AnonymousClass1 (info.flowersoft.theotown.tools.ToolResolver$1)
.class public Linfo/flowersoft/theotown/tools/ToolResolver$1;
.super Linfo/flowersoft/theotown/tools/DisasterTool;
.source "ToolResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Ljava/lang/Class;)Linfo/flowersoft/theotown/tools/DisasterTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/ToolResolver;

.field public final synthetic val$disasterType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/ToolResolver;Ljava/lang/Class;)V
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

    .line 190
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$1;->this$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ToolResolver$1;->val$disasterType:Ljava/lang/Class;

    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/DisasterTool;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisasterType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver$1;->val$disasterType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 198
    invoke-static {}, Linfo/flowersoft/theotown/tools/ToolResolver;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$1;->val$disasterType:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 199
    invoke-static {}, Linfo/flowersoft/theotown/tools/ToolResolver;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$1;->val$disasterType:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 201
    :cond_19
    const-string v0, "Unnamed disaster"

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

.field public final synthetic f$1:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->$r8$lambda$o2K7ReKssLKvG1wl6jdjuAEwuJg(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda1 (info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/components/InfluenceType;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/components/InfluenceType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->$r8$lambda$OueMuE7US0dFbOX4_WkuwC1DMDg(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/city/components/InfluenceType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda2 (info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/management/attribute/Attribute;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ToolResolver$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->$r8$lambda$JGJtfiKhE7m2lMKrkE6fhakgqmk(Linfo/flowersoft/theotown/tools/ToolResolver;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
