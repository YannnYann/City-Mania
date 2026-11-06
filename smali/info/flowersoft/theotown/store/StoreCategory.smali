###### Class info.flowersoft.theotown.store.StoreCategory (info.flowersoft.theotown.store.StoreCategory)
.class public Linfo/flowersoft/theotown/store/StoreCategory;
.super Ljava/lang/Object;
.source "StoreCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;,
        Linfo/flowersoft/theotown/store/StoreCategory$Builtins;
    }
.end annotation


# static fields
.field public static final CATEGORY_ICONS:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CATEGORY_TITLE_IDS:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final categoryId:I

.field public final count:I

.field public final icon:I

.field public final img:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    const/16 v1, 0x71f

    .line 59
    const-string v2, "Other"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x27c

    .line 60
    const-string v3, "Road"

    invoke-virtual {v0, v3, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x5d8

    .line 61
    const-string v4, "Terrain"

    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0xd3b

    .line 62
    const-string v5, "Trees"

    invoke-virtual {v0, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    .line 63
    const-string v6, "Transport"

    invoke-virtual {v0, v6, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 64
    const-string v7, "Residential"

    invoke-virtual {v0, v7, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x62b

    .line 65
    const-string v8, "Commercial"

    invoke-virtual {v0, v8, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0xc02

    .line 66
    const-string v9, "Industrial"

    invoke-virtual {v0, v9, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x93d

    .line 67
    const-string v10, "Parks, Sports and Management"

    invoke-virtual {v0, v10, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0xdb5

    .line 68
    const-string v11, "Supply (Energy, Water, Waste Disposal)"

    invoke-virtual {v0, v11, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x8ba

    .line 69
    const-string v12, "Religion and Culture"

    invoke-virtual {v0, v12, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x5a1

    .line 70
    const-string v13, "Service (Police, Health Care, Education,...)"

    invoke-virtual {v0, v13, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x919

    .line 71
    const-string v14, "Award and Special"

    invoke-virtual {v0, v14, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0xc5

    .line 72
    const-string v15, "Decorations"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x4d7

    move-object/from16 v16, v15

    .line 73
    const-string v15, "Tools"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x7ed

    move-object/from16 v17, v15

    .line 74
    const-string v15, "Weather and Overlay"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x27

    move-object/from16 v18, v15

    .line 75
    const-string v15, "Packs"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x7cf

    move-object/from16 v19, v15

    .line 76
    const-string v15, "Road decoration"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0xdd0

    move-object/from16 v20, v15

    .line 77
    const-string v15, "Military"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x493

    move-object/from16 v21, v15

    .line 78
    const-string v15, "Official Game Extensions"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x5d3

    move-object/from16 v22, v15

    .line 79
    const-string v15, "Scenarios"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const/16 v1, 0x691

    move-object/from16 v23, v15

    .line 80
    const-string v15, "Shaders"

    invoke-virtual {v0, v15, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const-string v1, "Heightmaps"

    move-object/from16 v24, v15

    const/16 v15, 0xc1f

    .line 81
    invoke-virtual {v0, v1, v15}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const-string v1, "Themes"

    const/16 v15, 0xbde

    .line 82
    invoke-virtual {v0, v1, v15}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->build()Lcom/badlogic/gdx/utils/ObjectIntMap;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory;->CATEGORY_TITLE_IDS:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OTHER:I

    .line 86
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    .line 87
    invoke-virtual {v0, v3, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    .line 88
    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TREE:I

    .line 89
    invoke-virtual {v0, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLICTRANSPORT:I

    .line 90
    invoke-virtual {v0, v6, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    .line 91
    invoke-virtual {v0, v7, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    .line 92
    invoke-virtual {v0, v8, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    .line 93
    invoke-virtual {v0, v9, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    .line 94
    invoke-virtual {v0, v10, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SUPPLY:I

    .line 95
    invoke-virtual {v0, v11, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RELIGION:I

    .line 96
    invoke-virtual {v0, v12, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SERVICE:I

    .line 97
    invoke-virtual {v0, v13, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    .line 98
    invoke-virtual {v0, v14, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    move-object/from16 v2, v16

    .line 99
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    move-object/from16 v2, v17

    .line 100
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_SUNNY:I

    move-object/from16 v2, v18

    .line 101
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ZONES:I

    move-object/from16 v2, v19

    .line 102
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DECORATION:I

    move-object/from16 v2, v20

    .line 103
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MILITARY:I

    move-object/from16 v2, v21

    .line 104
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    move-object/from16 v2, v22

    .line 105
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    move-object/from16 v2, v23

    .line 106
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    move-object/from16 v2, v24

    .line 107
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const-string v1, "Heightmaps"

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP:I

    .line 108
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    const-string v1, "Themes"

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_THEMES:I

    .line 109
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->build()Lcom/badlogic/gdx/utils/ObjectIntMap;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory;->CATEGORY_ICONS:Lcom/badlogic/gdx/utils/ObjectIntMap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->categoryId:I

    .line 121
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/store/StoreCategory;->localize(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->title:Ljava/lang/String;

    .line 122
    const-string p1, ""

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->text:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->img:Ljava/lang/String;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->count:I

    .line 125
    sget-object p3, Linfo/flowersoft/theotown/store/StoreCategory;->CATEGORY_ICONS:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {p3, p2, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->icon:I

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreCategory;->categoryId:I

    .line 130
    const-string v0, "title"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/store/StoreCategory;->localize(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreCategory;->title:Ljava/lang/String;

    .line 131
    const-string p2, "text"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreCategory;->text:Ljava/lang/String;

    .line 132
    const-string p2, "img"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreCategory;->img:Ljava/lang/String;

    .line 133
    const-string p2, "count"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/store/StoreCategory;->count:I

    .line 134
    sget-object p2, Linfo/flowersoft/theotown/store/StoreCategory;->CATEGORY_ICONS:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/store/StoreCategory;->icon:I

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .registers 2

    .line 138
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreCategory;->categoryId:I

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 158
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreCategory;->count:I

    return v0
.end method

.method public getIcon()I
    .registers 2

    .line 146
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreCategory;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreCategory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final localize(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)Ljava/lang/String;
    .registers 5

    .line 164
    sget-object v0, Linfo/flowersoft/theotown/store/StoreCategory;->CATEGORY_TITLE_IDS:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 167
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    :cond_d
    return-object p1
.end method

###### Class info.flowersoft.theotown.store.StoreCategory.Builtins (info.flowersoft.theotown.store.StoreCategory$Builtins)
.class public final enum Linfo/flowersoft/theotown/store/StoreCategory$Builtins;
.super Ljava/lang/Enum;
.source "StoreCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/StoreCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Builtins"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/store/StoreCategory$Builtins;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum AwardSpecial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Commercial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Decorations:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Heightmaps:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Industrial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Military:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum OfficialGameExtensions:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Other:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Packs:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum ParksSportsManagement:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Religion:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Residential:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Road:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum RoadDecoration:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Scenarios:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Service:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Shaders:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Supply:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Terrain:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Themes:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Tools:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Transport:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Trees:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum Utilities:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

.field public static final enum WeatherOverlay:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;


# instance fields
.field public final id:I

.field public final title:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;
    .registers 26

    .line 17
    sget-object v1, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->OfficialGameExtensions:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v2, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Scenarios:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v3, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Terrain:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v4, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Trees:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v5, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Road:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v6, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->RoadDecoration:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v7, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Transport:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v8, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Residential:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v9, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Commercial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v10, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Industrial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v11, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->ParksSportsManagement:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v12, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Supply:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v13, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Service:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v14, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Military:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v15, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Religion:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v16, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->AwardSpecial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v17, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Decorations:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v18, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Tools:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v19, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->WeatherOverlay:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v20, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Shaders:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v21, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Packs:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v22, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Heightmaps:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v23, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Utilities:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v24, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Themes:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    sget-object v25, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Other:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    filled-new-array/range {v1 .. v25}, [Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Official Game Extensions"

    const-string v2, "OfficialGameExtensions"

    const/4 v3, 0x0

    const/16 v4, 0x18

    invoke-direct {v0, v2, v3, v4, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->OfficialGameExtensions:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x1a

    const-string v2, "Scenarios"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Scenarios:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Terrain"

    const/4 v2, 0x2

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Terrain:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Trees"

    const/4 v2, 0x3

    const/4 v6, 0x6

    invoke-direct {v0, v1, v2, v6, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Trees:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Road"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Road:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Road decoration"

    const-string v2, "RoadDecoration"

    const/16 v7, 0x14

    invoke-direct {v0, v2, v5, v7, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->RoadDecoration:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Transport"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Transport:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Residential"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v2, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Residential:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Commercial"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Commercial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Industrial"

    const/16 v5, 0xa

    invoke-direct {v0, v1, v2, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Industrial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Parks, Sports and Management"

    const-string v2, "ParksSportsManagement"

    const/16 v6, 0xb

    invoke-direct {v0, v2, v5, v6, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->ParksSportsManagement:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Supply (Energy, Water, Waste Disposal)"

    const-string v2, "Supply"

    const/16 v5, 0xc

    invoke-direct {v0, v2, v6, v5, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Supply:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Service (Police, Health Care, Education,...)"

    const-string v2, "Service"

    const/16 v6, 0xe

    invoke-direct {v0, v2, v5, v6, v1}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Service:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0xd

    const/16 v2, 0x15

    const-string v5, "Military"

    invoke-direct {v0, v5, v1, v2, v5}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Military:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v2, "Religion and Culture"

    const-string v5, "Religion"

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Religion:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 33
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0xf

    const-string v2, "Award and Special"

    const-string v5, "AwardSpecial"

    const/16 v6, 0xf

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->AwardSpecial:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x10

    const-string v2, "Decorations"

    const-string v5, "Decorations"

    const/16 v6, 0x10

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Decorations:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x11

    const-string v2, "Tools"

    const-string v5, "Tools"

    const/16 v6, 0x11

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Tools:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x12

    const-string v2, "Weather and Overlay"

    const-string v5, "WeatherOverlay"

    const/16 v6, 0x12

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->WeatherOverlay:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x19

    const-string v2, "Shaders"

    const-string v5, "Shaders"

    const/16 v6, 0x13

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Shaders:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x13

    const-string v2, "Packs"

    const-string v5, "Packs"

    invoke-direct {v0, v5, v7, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Packs:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x1b

    const-string v2, "Heightmaps"

    const-string v5, "Heightmaps"

    const/16 v6, 0x15

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Heightmaps:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x17

    const-string v2, "Utilities"

    const-string v5, "Utilities"

    const/16 v6, 0x16

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Utilities:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const/16 v1, 0x1c

    const-string v2, "Themes"

    const-string v5, "Themes"

    const/16 v6, 0x17

    invoke-direct {v0, v5, v6, v1, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Themes:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    const-string v1, "Other"

    const-string v2, "Other"

    invoke-direct {v0, v1, v4, v3, v2}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Other:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    .line 17
    invoke-static {}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->$values()[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->$VALUES:[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->id:I

    .line 50
    iput-object p4, p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/store/StoreCategory$Builtins;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;
    .registers 1

    .line 17
    sget-object v0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->$VALUES:[Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    return-object v0
.end method


# virtual methods
.method public toCategory(Lio/blueflower/stapel2d/gamestack/Translator;)Linfo/flowersoft/theotown/store/StoreCategory;
    .registers 5

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory;

    iget v1, p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->id:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Linfo/flowersoft/theotown/store/StoreCategory;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreCategory.ObjectIntMapBuilder (info.flowersoft.theotown.store.StoreCategory$ObjectIntMapBuilder)
.class public Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;
.super Ljava/lang/Object;
.source "StoreCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/StoreCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectIntMapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final map:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/badlogic/gdx/utils/ObjectIntMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TT;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreCategory$ObjectIntMapBuilder;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    return-object p0
.end method
