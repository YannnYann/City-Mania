###### Class info.flowersoft.theotown.draft.BuildingType (info.flowersoft.theotown.draft.BuildingType)
.class public enum Linfo/flowersoft/theotown/draft/BuildingType;
.super Ljava/lang/Enum;
.source "BuildingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/draft/BuildingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum BUOY:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum FARM:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum OTHER:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum PARK:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static final enum WATER:Linfo/flowersoft/theotown/draft/BuildingType;

.field public static cachedValues:[Linfo/flowersoft/theotown/draft/BuildingType;

.field public static tagToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final categoryId:Ljava/lang/String;

.field public final icon:I

.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final nameTag:Ljava/lang/String;

.field public final rci:Z


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 31

    .line 13
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->FARM:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v10, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v11, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v12, Linfo/flowersoft/theotown/draft/BuildingType;->ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v13, Linfo/flowersoft/theotown/draft/BuildingType;->WATER:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v14, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v15, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v16, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v17, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v18, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v19, Linfo/flowersoft/theotown/draft/BuildingType;->BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v20, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v21, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v22, Linfo/flowersoft/theotown/draft/BuildingType;->BUOY:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v23, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v24, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v25, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v26, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v27, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v28, Linfo/flowersoft/theotown/draft/BuildingType;->OTHER:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v29, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v30, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array/range {v1 .. v30}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->RESIDENTIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    const/4 v6, 0x1

    const-string v7, "$cat_residential00"

    const-string v1, "RESIDENTIAL"

    const/4 v2, 0x0

    const-string v3, "residential"

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 16
    new-instance v1, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->COMMERCIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const/4 v7, 0x1

    const-string v8, "$cat_commercial00"

    const-string v2, "COMMERCIAL"

    const/4 v3, 0x1

    const-string v4, "commercial"

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 17
    new-instance v2, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->INDUSTRIALS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    const/4 v8, 0x1

    const-string v9, "$cat_industrial00"

    const-string v3, "INDUSTRIAL"

    const/4 v4, 0x2

    const-string v5, "industrial"

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 18
    new-instance v3, Linfo/flowersoft/theotown/draft/BuildingType$1;

    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->FARMS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_FARM:I

    const/4 v9, 0x1

    const-string v10, "$cat_industrial00"

    const-string v4, "FARM"

    const/4 v5, 0x3

    const-string v6, "farm"

    invoke-direct/range {v3 .. v10}, Linfo/flowersoft/theotown/draft/BuildingType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->FARM:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 24
    new-instance v4, Linfo/flowersoft/theotown/draft/BuildingType$2;

    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->HARBORS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_HARBOR:I

    const/4 v10, 0x1

    const-string v11, "$cat_industrial00"

    const-string v5, "HARBOR_IND"

    const/4 v6, 0x4

    const-string v7, "harbor ind"

    invoke-direct/range {v4 .. v11}, Linfo/flowersoft/theotown/draft/BuildingType$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 30
    new-instance v5, Linfo/flowersoft/theotown/draft/BuildingType$3;

    sget-object v9, Linfo/flowersoft/theotown/resources/Drafts;->HARBOR_PIERS:Ljava/util/List;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_HARBOR:I

    const/4 v11, 0x1

    const-string v12, "$cat_industrial00"

    const-string v6, "HARBOR_PIER"

    const/4 v7, 0x5

    const-string v8, "harbor pier"

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/draft/BuildingType$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 36
    new-instance v6, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->PARKS:Ljava/util/List;

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_PARK:I

    const-string v12, "$cat_park00"

    const-string v7, "PARK"

    const/4 v8, 0x6

    const-string v9, "park"

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 37
    new-instance v7, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->SPORTS:Ljava/util/List;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_SPORTS:I

    const-string v13, "$cat_sport00"

    const-string v8, "SPORT"

    const/4 v9, 0x7

    const-string v10, "sport"

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->PUBLICS:Ljava/util/List;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    const-string v6, "$cat_management00"

    const-string v1, "PUBLIC"

    const/16 v2, 0x8

    const-string v3, "public"

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 39
    new-instance v1, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->RELIGIONS:Ljava/util/List;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_RELIGION:I

    const-string v7, "$cat_religion00"

    const-string v2, "RELIGION"

    const/16 v3, 0x9

    const-string v4, "religion"

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 40
    new-instance v2, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->AWARDS:Ljava/util/List;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    const-string v8, "$cat_award00"

    const-string v3, "AWARD"

    const/16 v4, 0xa

    const-string v5, "award"

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 41
    new-instance v3, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->ENERGY:Ljava/util/List;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    const-string v9, "$cat_energy00"

    const-string v4, "ENERGY"

    const/16 v5, 0xb

    const-string v6, "energy"

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 42
    new-instance v4, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->WATER:Ljava/util/List;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_WATER:I

    const-string v10, "$cat_water00"

    const-string v5, "WATER"

    const/16 v6, 0xc

    const-string v7, "water"

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->WATER:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 43
    new-instance v5, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v9, Linfo/flowersoft/theotown/resources/Drafts;->MEDIC:Ljava/util/List;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const-string v11, "$cat_medic00"

    const-string v6, "MEDIC"

    const/16 v7, 0xd

    const-string v8, "medic"

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 44
    new-instance v6, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->POLICE:Ljava/util/List;

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLICE:I

    const-string v12, "$cat_police00"

    const-string v7, "POLICE"

    const/16 v8, 0xe

    const-string v9, "police"

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 45
    new-instance v7, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->SWAT:Ljava/util/List;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLICE:I

    const-string v13, "$cat_police00"

    const-string v8, "SWAT"

    const/16 v9, 0xf

    const-string v10, "swat"

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 46
    new-instance v0, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->FIREBRIGADE:Ljava/util/List;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_FIREDEPARTMENT:I

    const-string v6, "$cat_firebrigade00"

    const-string v1, "FIRE_BRIGADE"

    const/16 v2, 0x10

    const-string v3, "fire brigade"

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 47
    new-instance v1, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->EDUCATION:Ljava/util/List;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    const-string v7, "$cat_education00"

    const-string v2, "EDUCATION"

    const/16 v3, 0x11

    const-string v4, "education"

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 48
    new-instance v2, Linfo/flowersoft/theotown/draft/BuildingType;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUS_TRANSPORT:I

    const-string v8, "$cat_road00"

    const-string v3, "BUS_DEPOT"

    const/16 v4, 0x12

    const-string v5, "bus depot"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 49
    new-instance v3, Linfo/flowersoft/theotown/draft/BuildingType;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    const/4 v9, 0x0

    const-string v4, "DESTROYED"

    const/16 v5, 0x13

    const-string v6, "destroyed"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 50
    new-instance v4, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->DECORATION:Ljava/util/List;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    const/4 v10, 0x1

    const-string v11, "$cat_decoration00"

    const-string v5, "DECORATION"

    const/16 v6, 0x14

    const-string v7, "decoration"

    invoke-direct/range {v4 .. v11}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    sput-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 51
    new-instance v5, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v9, Linfo/flowersoft/theotown/resources/Drafts;->BUOY:Ljava/util/List;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_HARBOR:I

    const-string v11, "$cat_transport00"

    const-string v6, "BUOY"

    const/16 v7, 0x15

    const-string v8, "buoy"

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->BUOY:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 52
    new-instance v6, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->RAILWAY_STATION:Ljava/util/List;

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLICTRANSPORT:I

    const-string v12, "$cat_road00"

    const-string v7, "RAILWAY_STATION"

    const/16 v8, 0x16

    const-string v9, "railway station"

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 53
    new-instance v7, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->WASTE_DISPOSAL:Ljava/util/List;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_WASTE_DISPOSAL:I

    const-string v13, "$cat_wastedisposal00"

    const-string v8, "WASTE_DISPOSAL"

    const/16 v9, 0x17

    const-string v10, "waste disposal"

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->BODY_DISPOSAL:Ljava/util/List;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_BODY_DISPOSAL:I

    const-string v6, "$cat_bodydisposal00"

    const-string v1, "BODY_DISPOSAL"

    const/16 v2, 0x18

    const-string v3, "body disposal"

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 55
    new-instance v1, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->MILITARY:Ljava/util/List;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_MILITARY:I

    const-string v7, "$cat_military00"

    const-string v2, "MILITARY"

    const/16 v3, 0x19

    const-string v4, "military"

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 56
    new-instance v2, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->AIRPORT:Ljava/util/List;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    const-string v8, "$cat_airport00"

    const-string v3, "AIRPORT"

    const/16 v4, 0x1a

    const-string v5, "airport"

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 57
    new-instance v3, Linfo/flowersoft/theotown/draft/BuildingType;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/4 v9, 0x0

    const-string v4, "OTHER"

    const/16 v5, 0x1b

    const-string v6, "building"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->OTHER:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 58
    new-instance v4, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->TERRAIN:Ljava/util/List;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    const-string v10, "$cat_terrain00"

    const-string v5, "TERRAIN"

    const/16 v6, 0x1c

    const-string v7, "terrain"

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 59
    new-instance v5, Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v9, Linfo/flowersoft/theotown/resources/Drafts;->LANDMARK:Ljava/util/List;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_LANDMARK:I

    const-string v11, "$cat_landmark00"

    const-string v6, "LANDMARK"

    const/16 v7, 0x1d

    const-string v8, "landmark"

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    sput-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 13
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->$values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->$VALUES:[Linfo/flowersoft/theotown/draft/BuildingType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 82
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Linfo/flowersoft/theotown/draft/BuildingType;->nameTag:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Linfo/flowersoft/theotown/draft/BuildingType;->list:Ljava/util/List;

    .line 76
    iput p5, p0, Linfo/flowersoft/theotown/draft/BuildingType;->icon:I

    .line 77
    iput-boolean p6, p0, Linfo/flowersoft/theotown/draft/BuildingType;->rci:Z

    .line 78
    iput-object p7, p0, Linfo/flowersoft/theotown/draft/BuildingType;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;Linfo/flowersoft/theotown/draft/BuildingType$1;)V
    .registers 9

    .line 13
    invoke-direct/range {p0 .. p7}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method

.method public static cachedValues()[Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 1

    .line 138
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues:[Linfo/flowersoft/theotown/draft/BuildingType;

    if-nez v0, :cond_a

    .line 139
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues:[Linfo/flowersoft/theotown/draft/BuildingType;

    .line 141
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues:[Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method

.method public static fromTag(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 7

    .line 114
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->tagToType:Ljava/util/Map;

    if-nez v0, :cond_21

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->tagToType:Ljava/util/Map;

    .line 116
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 117
    sget-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->tagToType:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->getNameTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 120
    :cond_21
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->tagToType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 121
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->tagToType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/BuildingType;

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    const-class v0, Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/BuildingType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 1

    .line 13
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->$VALUES:[Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/draft/BuildingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method


# virtual methods
.method public getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 94
    iget v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->icon:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->list:Ljava/util/List;

    return-object v0
.end method

.method public getNameTag()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->nameTag:Ljava/lang/String;

    return-object v0
.end method

.method public isRCINotDeco()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->rci:Z

    if-eqz v0, :cond_a

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isRCIOrDeco()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingType;->rci:Z

    return v0
.end method

###### Class info.flowersoft.theotown.draft.BuildingType.AnonymousClass1 (info.flowersoft.theotown.draft.BuildingType$1)
.class final enum Linfo/flowersoft/theotown/draft/BuildingType$1;
.super Linfo/flowersoft/theotown/draft/BuildingType;
.source "BuildingType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/BuildingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 18
    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;Linfo/flowersoft/theotown/draft/BuildingType$1;)V

    return-void
.end method


# virtual methods
.method public getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 2

    .line 21
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method

###### Class info.flowersoft.theotown.draft.BuildingType.AnonymousClass2 (info.flowersoft.theotown.draft.BuildingType$2)
.class final enum Linfo/flowersoft/theotown/draft/BuildingType$2;
.super Linfo/flowersoft/theotown/draft/BuildingType;
.source "BuildingType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/BuildingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 24
    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;Linfo/flowersoft/theotown/draft/BuildingType$1;)V

    return-void
.end method


# virtual methods
.method public getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 2

    .line 27
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method

###### Class info.flowersoft.theotown.draft.BuildingType.AnonymousClass3 (info.flowersoft.theotown.draft.BuildingType$3)
.class final enum Linfo/flowersoft/theotown/draft/BuildingType$3;
.super Linfo/flowersoft/theotown/draft/BuildingType;
.source "BuildingType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/BuildingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 30
    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/draft/BuildingType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;IZLjava/lang/String;Linfo/flowersoft/theotown/draft/BuildingType$1;)V

    return-void
.end method


# virtual methods
.method public getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 2

    .line 33
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method
