###### Class info.flowersoft.theotown.draftloader.BuildingDraftLoader (info.flowersoft.theotown.draftloader.BuildingDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "BuildingDraftLoader.java"


# static fields
.field public static final influenceLimitations:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Linfo/flowersoft/theotown/city/components/InfluenceType;",
            "[",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ASPECT_MAX_CAPACITY:I

.field public final ASPECT_MAX_VALUE:I

.field public final LIMIT_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final MAX_INFLUENCE_OFFSET:I

.field public final MAX_INFLUENCE_OFFSET_UNSUPPORTED:I

.field public final MAX_INFLUENCE_PER_MONTHLY_PRICE:I

.field public final MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED:I

.field public final MAX_INFLUENCE_PER_TILE:I

.field public final MAX_INFLUENCE_PER_TILE_UNSUPPORTED:I

.field public final MAX_POWER:J

.field public final MAX_POWER_OFFSET:J

.field public final MAX_POWER_PER_AREA:J

.field public final MAX_POWER_PER_MONTHLY_PRICE:J

.field public final MAX_WATER:J

.field public final MAX_WATER_OFFSET:J

.field public final MAX_WATER_PER_AREA:J

.field public final MAX_WATER_PER_MONTHLY_PRICE:J

.field public final MIN_MONTHLY_FROM_INFLUENCE_AREA:F

.field public final MIN_PRICE_FROM_INFLUENCE_AREA:F

.field public final PLUGIN_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 180
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->influenceLimitations:Ljava/util/EnumMap;

    .line 183
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->HEALTH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLICE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2, v3}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->FIREDEPARTMENT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->NOISE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v3}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v3}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v3}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->CULTURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array/range {v2 .. v7}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->MANAGEMENT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v4, v5, v7}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->RELIGION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v3, v5, v7}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->OTHER:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v6, v3, v4, v8}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_TRAIN:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v6, v4, v3, v8}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->NATURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v2, v5, v6, v7}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    filled-new-array {v2}, [Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 53
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    .line 55
    const-string v0, "plugin"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->PLUGIN_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 56
    const-string v1, "limits"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/JSONUtil;->optObject(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->LIMIT_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 62
    const-string v1, "max influence per tile"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_TILE:I

    .line 67
    const-string v1, "max influence per monthly price"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_MONTHLY_PRICE:I

    .line 73
    const-string v1, "max influence offset"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_OFFSET:I

    .line 80
    const-string v1, "max influence per tile unsupported"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_TILE_UNSUPPORTED:I

    .line 87
    const-string v1, "max influence per monthly price unsupported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED:I

    .line 94
    const-string v1, "max influence offset unsupported"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_OFFSET_UNSUPPORTED:I

    .line 99
    const-string v1, "min price from influence area"

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MIN_PRICE_FROM_INFLUENCE_AREA:F

    .line 104
    const-string v1, "min monthly from influence area"

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MIN_MONTHLY_FROM_INFLUENCE_AREA:F

    .line 109
    const-string v1, "max power"

    const-wide/32 v3, 0x989680

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER:J

    .line 115
    const-string v1, "max power per area"

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v1, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_PER_AREA:J

    .line 121
    const-string v1, "max power per monthly price"

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v1, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_PER_MONTHLY_PRICE:J

    .line 127
    const-string v1, "max power offset"

    invoke-virtual {v0, v1, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_OFFSET:J

    .line 132
    const-string v1, "max water"

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER:J

    .line 138
    const-string v1, "max water per area"

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_PER_AREA:J

    .line 144
    const-string v1, "max water per monthly price"

    invoke-virtual {v0, v1, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_PER_MONTHLY_PRICE:J

    .line 150
    const-string v1, "max water offset"

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_OFFSET:J

    .line 155
    const-string v1, "aspect max value"

    const v3, 0x989680

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->ASPECT_MAX_VALUE:I

    .line 159
    const-string v1, "aspect max capacity"

    const v3, 0x5f5e100

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->ASPECT_MAX_CAPACITY:I

    .line 162
    sget-object v1, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->pricePerProvision:[D

    const-string v3, "provide edu low price"

    const/4 v4, 0x0

    aget-wide v5, v1, v4

    .line 163
    invoke-virtual {v0, v3, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 164
    const-string v3, "provide edu high price"

    aget-wide v4, v1, v2

    .line 165
    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 166
    const-string v2, "provide health price"

    const/4 v3, 0x2

    aget-wide v4, v1, v3

    .line 167
    invoke-virtual {v0, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 168
    const-string v2, "provide waste price"

    const/4 v3, 0x3

    aget-wide v4, v1, v3

    .line 169
    invoke-virtual {v0, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 170
    const-string v2, "provide body price"

    const/4 v3, 0x4

    aget-wide v4, v1, v3

    .line 171
    invoke-virtual {v0, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    return-void
.end method


# virtual methods
.method public final getDefaultInfluences()[I
    .registers 2

    .line 823
    const-string v0, "$inf.default"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public final getInfluencesById(Ljava/lang/String;)[I
    .registers 3

    .line 818
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/InfluenceDraft;->induceVector:[I

    .line 819
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public getLoadingTags()[Ljava/lang/String;
    .registers 4

    .line 314
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 315
    :goto_8
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 316
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getNameTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return-object v0
.end method

.method public final limitInfluences(Linfo/flowersoft/theotown/draft/Draft;[ILinfo/flowersoft/theotown/draft/BuildingType;JI)V
    .registers 12

    .line 241
    iget v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_MONTHLY_PRICE:I

    const-wide/32 v1, 0x186a0

    .line 242
    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/2addr v0, v3

    div-int/2addr v0, p6

    iget v3, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_OFFSET:I

    add-int/2addr v0, v3

    iget v3, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_TILE:I

    .line 241
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 245
    iget v3, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED:I

    .line 246
    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    long-to-int p4, p4

    mul-int/2addr v3, p4

    div-int/2addr v3, p6

    iget p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_OFFSET_UNSUPPORTED:I

    add-int/2addr v3, p4

    iget p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_INFLUENCE_PER_TILE_UNSUPPORTED:I

    .line 245
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    const/4 p5, 0x0

    move p6, p5

    .line 248
    :goto_29
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v1

    array-length v1, v1

    if-ge p6, v1, :cond_c4

    .line 249
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v1

    aget-object v1, v1, p6

    .line 250
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, p2, v2

    if-gtz v2, :cond_46

    goto/16 :goto_c0

    .line 251
    :cond_46
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, p2, v2

    if-ltz v2, :cond_56

    goto/16 :goto_c0

    .line 254
    :cond_56
    sget-object v2, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->influenceLimitations:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Linfo/flowersoft/theotown/draft/BuildingType;

    if-nez v2, :cond_61

    goto :goto_c0

    :cond_61
    move v3, p5

    .line 259
    :goto_62
    array-length v4, v2

    if-ge v3, v4, :cond_6e

    .line 260
    aget-object v4, v2, v3

    if-ne v4, p3, :cond_6b

    const/4 v2, 0x1

    goto :goto_6f

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_6e
    move v2, p5

    .line 266
    :goto_6f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, p2, v3

    if-eqz v2, :cond_9c

    .line 269
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-eqz v2, :cond_89

    if-le v3, v0, :cond_89

    .line 270
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, p2, v2

    .line 271
    invoke-virtual {p0, p1, v1, v3, v0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V

    goto :goto_c0

    .line 272
    :cond_89
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-nez v2, :cond_c0

    neg-int v2, v0

    if-ge v3, v2, :cond_c0

    .line 273
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, p2, v4

    .line 274
    invoke-virtual {p0, p1, v1, v3, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V

    goto :goto_c0

    .line 277
    :cond_9c
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-eqz v2, :cond_ae

    if-le v3, p4, :cond_ae

    .line 278
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput p4, p2, v2

    .line 279
    invoke-virtual {p0, p1, v1, v3, p4}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportUnsupportedInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V

    goto :goto_c0

    .line 280
    :cond_ae
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v2

    if-nez v2, :cond_c0

    neg-int v2, p4

    if-ge v3, v2, :cond_c0

    .line 281
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, p2, v4

    .line 282
    invoke-virtual {p0, p1, v1, v3, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportUnsupportedInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V

    :cond_c0
    :goto_c0
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_29

    :cond_c4
    return-void
.end method

.method public final limitPower(Linfo/flowersoft/theotown/draft/Draft;JJI)J
    .registers 15

    .line 289
    iget-wide v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_PER_AREA:J

    int-to-long v2, p6

    mul-long/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_PER_MONTHLY_PRICE:J

    mul-long/2addr v2, p4

    iget-wide p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER_OFFSET:J

    add-long/2addr v2, p4

    iget-wide p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_POWER:J

    .line 291
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 289
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long p4, p2, v6

    if-lez p4, :cond_1f

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 294
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportPowerLimit(Linfo/flowersoft/theotown/draft/Draft;JJ)V

    return-wide v6

    :cond_1f
    move-wide v4, p2

    return-wide v4
.end method

.method public final limitWater(Linfo/flowersoft/theotown/draft/Draft;JJI)J
    .registers 15

    .line 301
    iget-wide v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_PER_AREA:J

    int-to-long v2, p6

    mul-long/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_PER_MONTHLY_PRICE:J

    mul-long/2addr v2, p4

    iget-wide p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER_OFFSET:J

    add-long/2addr v2, p4

    iget-wide p4, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MAX_WATER:J

    .line 303
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 301
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long p4, p2, v6

    if-lez p4, :cond_1f

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 306
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->reportWaterLimit(Linfo/flowersoft/theotown/draft/Draft;JJ)V

    return-wide v6

    :cond_1f
    move-wide v4, p2

    return-wide v4
.end method

.method public load()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 325
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v1, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    const-string v3, "width"

    invoke-virtual {v0, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    .line 328
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v1, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    const-string v4, "height"

    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    .line 330
    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    if-nez v0, :cond_40

    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_40

    .line 331
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing `width` attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_40
    :goto_40
    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    if-nez v0, :cond_55

    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_55

    .line 334
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing `height` attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_55
    :goto_55
    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    const-string v1, " x "

    if-lez v0, :cond_12e

    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    if-lez v0, :cond_12e

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "composition"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 344
    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    mul-int/lit8 v4, v3, 0x10

    if-gt v0, v4, :cond_76

    mul-int/lit8 v0, v0, 0x10

    if-gt v3, v0, :cond_76

    goto :goto_97

    .line 347
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For buildings the max factor between width and height must be smaller than or equal to 16 but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_97
    :goto_97
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadComposition(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 354
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadFrames(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 356
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadBasics(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 358
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadFun(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 360
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadSmoke(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 361
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadAnimations(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 363
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadType(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 365
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadInfluences(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 367
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadUpgrades(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 369
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadAspects(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 371
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadPedestrian(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 374
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 375
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    iget-wide v5, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitInfluences(Linfo/flowersoft/theotown/draft/Draft;[ILinfo/flowersoft/theotown/draft/BuildingType;JI)V

    .line 378
    :cond_cc
    iget v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    const/16 v1, 0x80

    if-gt v0, v1, :cond_10b

    .line 383
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_f4

    .line 385
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ef

    .line 386
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 388
    :cond_ef
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_f4
    iget-object v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 392
    iget-object v0, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_105
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 379
    :cond_10b
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max build height is 128 but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for building draft "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_12e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Building width x height must be > 0 but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->load()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    return-object v0
.end method

.method public final loadAnimations(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "animation"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 804
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    .line 805
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "frame animation indices"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpotIndices:[[I

    goto :goto_2a

    :cond_29
    move-object v1, p0

    .line 808
    :goto_2a
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation fg"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 809
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpots:Ljava/util/List;

    .line 810
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "frame animation fg indices"

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpotIndices:[[I

    :cond_51
    return-void
.end method

.method public final loadAspectRaw(Linfo/flowersoft/theotown/draft/BuildingType;Linfo/flowersoft/theotown/util/json/JSONObject;[I[IZ)J
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1357
    sget-object v3, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v4, v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v4, :cond_d0

    aget v8, v3, v7

    if-nez p5, :cond_26

    .line 1360
    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v1, v9, :cond_1d

    if-eqz v8, :cond_cc

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    goto/16 :goto_cc

    .line 1367
    :cond_1d
    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v1, v9, :cond_26

    const/4 v9, 0x2

    if-ne v8, v9, :cond_26

    goto/16 :goto_cc

    .line 1372
    :cond_26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provide aspect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->names:[Ljava/lang/String;

    aget-object v11, v10, v8

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x5f

    const/16 v14, 0x20

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1373
    sget-object v11, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->privileged:[Z

    aget-boolean v11, v11, v8

    .line 1374
    sget-object v15, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->pricePerProvision:[D

    aget-wide v16, v15, v8

    .line 1375
    sget-object v15, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->pricePerCapacity:[D

    aget-wide v18, v15, v8

    .line 1378
    iget v15, v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->ASPECT_MAX_VALUE:I

    .line 1379
    iget v13, v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->ASPECT_MAX_CAPACITY:I

    .line 1381
    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7f

    if-eqz v11, :cond_6a

    if-eqz p5, :cond_64

    goto :goto_6a

    .line 1382
    :cond_64
    new-instance v1, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;

    invoke-direct {v1, v9}, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1383
    :cond_6a
    :goto_6a
    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v14, v15

    invoke-static {v9, v14, v15}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v9

    neg-int v9, v9

    aput v9, p3, v8

    if-gez v9, :cond_7f

    long-to-double v5, v5

    neg-int v9, v9

    int-to-double v14, v9

    mul-double v14, v14, v16

    add-double/2addr v5, v14

    double-to-long v5, v5

    .line 1387
    :cond_7f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "aspect "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v10, v8

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x5f

    const/16 v14, 0x20

    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " capacity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1388
    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cc

    if-eqz v11, :cond_b4

    if-eqz p5, :cond_ae

    goto :goto_b4

    .line 1389
    :cond_ae
    new-instance v1, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;

    invoke-direct {v1, v9}, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1390
    :cond_b4
    :goto_b4
    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v10, v13

    invoke-static {v9, v10, v13}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v9

    aput v9, p4, v8

    if-ltz v9, :cond_c8

    long-to-double v5, v5

    int-to-double v8, v9

    mul-double v8, v8, v18

    add-double/2addr v5, v8

    double-to-long v5, v5

    goto :goto_cc

    :cond_c8
    const-wide/32 v8, 0xc350

    add-long/2addr v5, v8

    :cond_cc
    :goto_cc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    :cond_d0
    return-wide v5
.end method

.method public final loadAspects(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1288
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    if-nez v1, :cond_d

    .line 1289
    sget-object v1, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    .line 1291
    :cond_d
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    if-nez v1, :cond_1c

    .line 1292
    sget-object v1, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    const/4 v2, -0x1

    .line 1293
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1296
    :cond_1c
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_37

    .line 1297
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget v6, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    div-int/lit8 v7, v6, 0x7

    aput v7, v2, v5

    .line 1298
    iget v7, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    if-lt v7, v3, :cond_35

    .line 1299
    div-int/lit8 v7, v6, 0x7

    aput v7, v2, v4

    .line 1301
    :cond_35
    aput v6, v2, v3

    .line 1304
    :cond_37
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 1306
    const-string v1, "waste"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 1307
    const-string v2, "habitant factor"

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1308
    const-string v7, "worker factor"

    invoke-virtual {v1, v7, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1309
    const-string v9, "div factor"

    invoke-virtual {v1, v9, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 1310
    const-string v11, "amount offset"

    invoke-virtual {v1, v11, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 1311
    const-string v13, "max amount"

    const/16 v14, 0x3e8

    invoke-virtual {v1, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 1312
    const-string v14, "capacity factor"

    const/16 v3, 0xa

    invoke-virtual {v1, v14, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 1313
    const-string v3, "min capacity"

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1315
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget v5, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    mul-int/2addr v6, v5

    iget v5, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    mul-int/2addr v8, v5

    add-int/2addr v6, v8

    div-int/2addr v6, v10

    add-int/2addr v6, v12

    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v4, v6

    .line 1318
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    aget v5, v5, v6

    mul-int v5, v5, v16

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v4, v6

    .line 1321
    const-string v1, "body disposal"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const/4 v4, 0x1

    .line 1322
    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1323
    invoke-virtual {v1, v7, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    .line 1324
    invoke-virtual {v1, v9, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    .line 1325
    invoke-virtual {v1, v11, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v6, 0x3e8

    .line 1326
    invoke-virtual {v1, v13, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v8, 0xa

    .line 1327
    invoke-virtual {v1, v14, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x64

    .line 1328
    invoke-virtual {v1, v3, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1330
    iget-object v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget v9, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    mul-int/2addr v2, v9

    iget v9, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    div-int/2addr v2, v5

    add-int/2addr v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x4

    aput v2, v3, v4

    .line 1333
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    aget v3, v3, v4

    mul-int/2addr v8, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v2, v4

    .line 1334
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    aget v1, v1, v4

    if-nez v1, :cond_f3

    .line 1335
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    const/16 v17, 0x0

    aput v17, v1, v4

    .line 1339
    :cond_f3
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    move-object/from16 v5, p0

    iget-object v7, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v8, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget-object v9, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    .line 1341
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v10

    .line 1339
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadAspectRaw(Linfo/flowersoft/theotown/draft/BuildingType;Linfo/flowersoft/theotown/util/json/JSONObject;[I[IZ)J

    move-result-wide v1

    .line 1343
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v3

    if-nez v3, :cond_138

    .line 1344
    iget-object v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-lez v3, :cond_125

    .line 1345
    iget-object v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    const-wide/16 v5, 0x64

    div-long v5, v1, v5

    long-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 1347
    :cond_125
    iget-wide v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    .line 1348
    iget-wide v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    const-wide/16 v5, 0xa

    div-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    :cond_138
    return-void
.end method

.method public final loadBasics(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    const-string v2, "needs road"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    .line 479
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "needs land"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    .line 480
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "needs water"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    .line 481
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "min water tiles"

    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->minWaterTiles:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->minWaterTiles:I

    .line 482
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "level"

    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    .line 483
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    float-to-double v1, v1

    const-string v3, "density"

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    .line 484
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 486
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v4, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    add-int v5, v2, v4

    int-to-float v5, v5

    sub-float/2addr v1, v5

    add-int/2addr v2, v4

    const/4 v4, 0x2

    div-int/2addr v2, v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    int-to-float v2, v2

    .line 485
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 484
    const-string v2, "build height"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    .line 489
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "animated"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animation:Z

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animation:Z

    .line 491
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-wide v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    long-to-int v1, v1

    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->signedPrice(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_a8

    .line 492
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_a0

    goto :goto_a8

    .line 493
    :cond_a0
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Negative price is not allowed"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_a8
    :goto_a8
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v8, "add price"

    invoke-virtual {p0, v0, v8, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 498
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-wide v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    long-to-int v1, v1

    const-string v2, "monthly price"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->signedPrice(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_db

    .line 501
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_d3

    goto :goto_db

    .line 502
    :cond_d3
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Negative monthly price is not allowed"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_db
    :goto_db
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "diamond price"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v8

    invoke-virtual {v1, v2, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 506
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-gez v0, :cond_107

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_ff

    goto :goto_107

    .line 507
    :cond_ff
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Negative diamond price is not allowed"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_107
    :goto_107
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_110

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->setZero()V

    .line 511
    :cond_110
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "budget item"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_181

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string v9, " referenced to in building "

    if-eqz v8, :cond_126

    .line 514
    iput-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_130

    .line 516
    :cond_126
    const-class v8, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v8}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v8

    iput-object v8, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v8, :cond_15d

    .line 519
    :goto_130
    iget-object v8, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v8, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_139

    goto :goto_181

    .line 520
    :cond_139
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "budget item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no meta tag \"budget item\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_15d
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "budget item of id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_181
    :goto_181
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-wide v8, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->bulldozePrice:J

    long-to-int v1, v8

    const-string v8, "bulldoze price"

    invoke-virtual {v0, v8, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x77359400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->bulldozePrice:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_1b0

    const-wide/32 v6, -0x80000000

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1b0

    .line 525
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_1a8

    goto :goto_1b0

    .line 526
    :cond_1a8
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "bulldoze price may not be negative"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_1b0
    :goto_1b0
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "capacity"

    iget v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    .line 530
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "depot capacity"

    iget v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->depotCapacity:I

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->depotCapacity:I

    .line 532
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "destroyable"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    .line 533
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "destroyable by fun"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyableByFun:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyableByFun:Z

    .line 534
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "destruction"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 535
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_253

    .line 537
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_23a

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_23a

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    if-eq v0, v5, :cond_23a

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    if-ne v0, v1, :cond_215

    goto :goto_23a

    .line 540
    :cond_215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destruction building size must be one or building size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_23a
    :goto_23a
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-nez v0, :cond_270

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    if-ne v1, v5, :cond_24b

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    if-ne v0, v5, :cond_24b

    goto :goto_270

    .line 543
    :cond_24b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "For non square buildings the destruction building must have a size of 1 x 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_253
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not find building for destruction: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :cond_270
    :goto_270
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "burnable"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->burnable:Z

    .line 548
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "use fire frames"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFireFrames:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFireFrames:Z

    .line 550
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "max count"

    iget v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    .line 552
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->priceFactor:F

    float-to-double v6, v1

    const-string v1, "price factor"

    invoke-virtual {v0, v1, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->priceFactor:F

    .line 554
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    float-to-double v6, v1

    const-string v1, "water waste"

    invoke-virtual {v0, v1, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    .line 555
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "draw ground"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    .line 556
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "frame alignment area"

    iget-boolean v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignmentArea:Z

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignmentArea:Z

    .line 557
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "frame alignment"

    invoke-virtual {v1, v6, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignment:Z

    .line 558
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "alignable"

    invoke-virtual {v1, v6, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->alignable:Z

    .line 559
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/4 v6, 0x4

    if-eqz v0, :cond_2e6

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-ge v0, v6, :cond_2f3

    :cond_2e6
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v0, :cond_2f3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-nez v0, :cond_2f1

    goto :goto_2f3

    :cond_2f1
    move v0, v3

    goto :goto_2f4

    :cond_2f3
    :goto_2f3
    move v0, v5

    :goto_2f4
    const-string v7, "rotation aware"

    invoke-virtual {v1, v7, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    .line 560
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_30a

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignment:Z

    if-nez v0, :cond_308

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignmentArea:Z

    if-eqz v0, :cond_30a

    :cond_308
    move v0, v5

    goto :goto_30b

    :cond_30a
    move v0, v3

    :goto_30b
    const-string v7, "ext rotation aware"

    invoke-virtual {v1, v7, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->extRotationAware:Z

    .line 561
    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    .line 562
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignment:Z

    xor-int/2addr v1, v5

    const-string v5, "selectable frames"

    invoke-virtual {v0, v5, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->selectableFrames:Z

    .line 564
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-nez v0, :cond_33d

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-nez v0, :cond_33d

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-lt v0, v4, :cond_335

    goto :goto_33d

    .line 565
    :cond_335
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non square buildings are always rotation aware. Define at least two frames"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_33d
    :goto_33d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-nez v0, :cond_350

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignment:Z

    if-nez v0, :cond_348

    goto :goto_350

    .line 570
    :cond_348
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non square buildings cannot be frame aligned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 574
    :cond_350
    :goto_350
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "volatile"

    iget-boolean v5, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->volatileCannotUndo:Z

    invoke-virtual {v0, v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->volatileCannotUndo:Z

    .line 576
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "use fence"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 577
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_37e

    .line 579
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37e

    .line 581
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 582
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_37e
    if-eqz v0, :cond_3a0

    .line 585
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3a0

    .line 586
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFence:[Ljava/lang/String;

    move v1, v3

    .line 587
    :goto_38f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a0

    .line 588
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFence:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38f

    .line 593
    :cond_3a0
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v0, :cond_3cb

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    if-ge v1, v6, :cond_3cb

    array-length v0, v0

    if-lez v0, :cond_3cb

    .line 594
    :cond_3ac
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    if-ge v1, v6, :cond_3cb

    .line 595
    array-length v1, v0

    mul-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 596
    array-length v0, v0

    div-int/2addr v0, v4

    :goto_3bb
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3ac

    .line 597
    array-length v2, v1

    div-int/2addr v2, v4

    sub-int v2, v0, v2

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3bb

    .line 602
    :cond_3cb
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-eqz v0, :cond_3dc

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v0, :cond_3d4

    goto :goto_3dc

    .line 603
    :cond_3d4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Composition buildings have to be rotation aware!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :cond_3dc
    :goto_3dc
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "ships"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_452

    .line 613
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 615
    :goto_3f2
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_428

    .line 616
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 617
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/ShipDraft;

    if-eqz v6, :cond_40c

    .line 619
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f2

    .line 618
    :cond_40c
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ship id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_428
    new-array v0, v3, [Linfo/flowersoft/theotown/draft/ShipDraft;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/draft/ShipDraft;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->ships:[Linfo/flowersoft/theotown/draft/ShipDraft;

    .line 622
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v1

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/2addr v1, v4

    const-string v2, "ship count"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->shipCount:I

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "ship radius"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->shipRadius:I

    .line 626
    :cond_452
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "helicopter spawner"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_49a

    .line 628
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v1

    if-eqz v1, :cond_492

    .line 631
    new-instance v1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;-><init>()V

    .line 632
    const-string v2, "id"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->id:Ljava/lang/String;

    .line 633
    const-string v2, "radius"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->radius:I

    .line 634
    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    div-int/2addr v2, v4

    const-string v3, "x"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->x:I

    .line 635
    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    div-int/2addr v2, v4

    const-string v3, "y"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->y:I

    .line 636
    iput-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    goto :goto_49a

    .line 629
    :cond_492
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Heli spawner buildings must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_49a
    :goto_49a
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "car spawner"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    invoke-virtual {p0, v0, v1, v2, p1}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadCarSpawners(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    .line 641
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-eqz v0, :cond_4ae

    const-string v0, "$biome_ocean00"

    :goto_4ac
    move-object v6, v0

    goto :goto_4b1

    :cond_4ae
    const-string v0, "$biome_mixed_forest00"

    goto :goto_4ac

    .line 642
    :goto_4b1
    const-string v0, "spawn"

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadLegacySpawn(Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v4

    iput-object v4, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 643
    new-instance v5, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "biome"

    const-string v3, "biomes"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInBiomeSpawners(Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 647
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "explodes"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->explodes:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->explodes:Z

    .line 648
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "explosion radius"

    iget v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->explosionRadius:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->explosionRadius:I

    .line 649
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "nuclear"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->nuclear:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->nuclear:Z

    .line 651
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "disaster"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->disaster:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->disaster:Z

    .line 652
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "removeable"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->removable:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "removable"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->removable:Z

    .line 654
    const-string v0, "map color"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 656
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "pickable"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    .line 657
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "renameable"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->renameable:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->renameable:Z

    .line 659
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "performance"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->performance:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->performance:Z

    .line 662
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "power radius"

    iget v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->powerRadius:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->powerRadius:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_550

    .line 663
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_550

    iput v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->powerRadius:I

    .line 665
    :cond_550
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "idle build time"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->idleBuildTime:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->idleBuildTime:Z

    .line 667
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "randomize animation"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeAnimation:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeAnimation:Z

    .line 668
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "randomize lights"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeLights:Z

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeLights:Z

    .line 670
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "car min level"

    iget v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMinLevel:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMinLevel:I

    .line 671
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "car max level"

    iget v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMaxLevel:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMaxLevel:I

    return-void
.end method

.method public final loadCarSpawners(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p4

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 675
    invoke-virtual/range {p1 .. p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 676
    invoke-virtual/range {p1 .. p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 677
    new-instance v6, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v6}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 678
    invoke-virtual/range {p1 .. p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_1f
    if-eqz v6, :cond_1e6

    .line 681
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v3

    .line 682
    :goto_2b
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1dd

    .line 683
    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v9

    .line 684
    new-instance v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    invoke-direct {v10}, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;-><init>()V

    .line 686
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "spawner"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->id:Ljava/lang/String;

    .line 687
    const-string v11, "radius"

    invoke-virtual {v9, v11, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->radius:I

    .line 688
    iget v11, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v12, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    add-int/2addr v11, v12

    div-int/2addr v11, v4

    const-string v12, "count"

    invoke-virtual {v9, v12, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->count:I

    .line 690
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 691
    const-string v12, "cars"

    invoke-static {v9, v12}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_a6

    move v13, v3

    .line 693
    :goto_71
    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_a6

    .line 694
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 695
    sget-object v15, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v15, :cond_8a

    .line 698
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v5

    goto :goto_71

    .line 697
    :cond_8a
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_a6
    new-array v12, v3, [Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Linfo/flowersoft/theotown/draft/CarDraft;

    iput-object v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->cars:[Linfo/flowersoft/theotown/draft/CarDraft;

    .line 703
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 704
    const-string v12, "tags"

    invoke-static {v9, v12}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_cd

    move v13, v3

    .line 706
    :goto_be
    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_cd

    .line 707
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 708
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v5

    goto :goto_be

    .line 711
    :cond_cd
    new-array v12, v3, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->tags:[Ljava/lang/String;

    .line 713
    const-string v11, "targets"

    invoke-static {v9, v11}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_113

    .line 714
    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_113

    .line 715
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v3

    .line 716
    :goto_ef
    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_109

    .line 717
    invoke-virtual {v11, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_100

    const/4 v14, 0x0

    .line 718
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 720
    :cond_100
    invoke-virtual {v11, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_107
    add-int/2addr v13, v5

    goto :goto_ef

    .line 723
    :cond_109
    new-array v11, v3, [Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->targetIds:[Ljava/lang/String;

    .line 726
    :cond_113
    const-string v11, "target tags"

    invoke-static {v9, v11}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_144

    .line 727
    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_144

    .line 728
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v3

    .line 729
    :goto_12b
    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_13a

    .line 730
    invoke-virtual {v11, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v5

    goto :goto_12b

    .line 732
    :cond_13a
    new-array v11, v3, [Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->targetTags:[Ljava/lang/String;

    .line 736
    :cond_144
    const-string v11, "flags"

    invoke-virtual {v9, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_1cd

    move v12, v3

    move v13, v12

    .line 739
    :goto_14e
    invoke-virtual {v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_1c8

    .line 740
    invoke-virtual {v11, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1e8

    const/16 v16, 0x4

    goto :goto_1b4

    :sswitch_166
    const/16 v16, 0x4

    const-string v1, "swat"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_171

    goto :goto_1b4

    :cond_171
    const/4 v15, 0x5

    goto :goto_1b4

    :sswitch_173
    const/16 v16, 0x4

    const-string v1, "snow plow"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17e

    goto :goto_1b4

    :cond_17e
    move/from16 v15, v16

    goto :goto_1b4

    :sswitch_181
    const/16 v16, 0x4

    const-string v1, "garbage"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18c

    goto :goto_1b4

    :cond_18c
    const/4 v15, 0x3

    goto :goto_1b4

    :sswitch_18e
    const/16 v16, 0x4

    const-string v1, "police"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_199

    goto :goto_1b4

    :cond_199
    move v15, v4

    goto :goto_1b4

    :sswitch_19b
    const/16 v16, 0x4

    const-string v1, "tractor"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a6

    goto :goto_1b4

    :cond_1a6
    move v15, v5

    goto :goto_1b4

    :sswitch_1a8
    const/16 v16, 0x4

    const-string v1, "military"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b3

    goto :goto_1b4

    :cond_1b3
    move v15, v3

    :goto_1b4
    packed-switch v15, :pswitch_data_202

    goto :goto_1c6

    :pswitch_1b8
    or-int/2addr v13, v4

    goto :goto_1c6

    :pswitch_1ba
    or-int/lit8 v13, v13, 0x20

    goto :goto_1c6

    :pswitch_1bd
    or-int/lit8 v13, v13, 0x8

    goto :goto_1c6

    :pswitch_1c0
    or-int/2addr v13, v5

    goto :goto_1c6

    :pswitch_1c2
    or-int/2addr v13, v2

    goto :goto_1c6

    :pswitch_1c4
    or-int/lit8 v13, v13, 0x4

    :goto_1c6
    add-int/2addr v12, v5

    goto :goto_14e

    :cond_1c8
    const/16 v16, 0x4

    .line 761
    iput v13, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->carFlags:I

    goto :goto_1cf

    :cond_1cd
    const/16 v16, 0x4

    .line 764
    :goto_1cf
    const-string v1, "level"

    invoke-virtual {v9, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->level:I

    .line 766
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v5

    goto/16 :goto_2b

    .line 768
    :cond_1dd
    new-array v0, v3, [Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    return-object v0

    :cond_1e6
    return-object p3

    nop

    :sswitch_data_1e8
    .sparse-switch
        -0x54685af3 -> :sswitch_1a8
        -0x3f9f05c9 -> :sswitch_19b
        -0x3a925ae2 -> :sswitch_18e
        -0xb6397cb -> :sswitch_181
        -0x5a4fa9f -> :sswitch_173
        0x361197 -> :sswitch_166
    .end sparse-switch

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_1c4
        :pswitch_1c2
        :pswitch_1c0
        :pswitch_1bd
        :pswitch_1ba
        :pswitch_1b8
    .end packed-switch
.end method

.method public final loadComposition(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 399
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "composition"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_157

    .line 401
    new-instance v3, Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v5, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-direct {v3, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;-><init>(II)V

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    const/4 v3, 0x0

    move v4, v3

    .line 402
    :goto_1b
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_102

    .line 403
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 404
    const-string v7, "id"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    .line 405
    instance-of v8, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v9, "frame"

    const-string v10, "y"

    const-string v11, "x"

    if-eqz v8, :cond_7c

    .line 406
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v6

    if-eqz v6, :cond_49

    goto :goto_67

    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in a composition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_67
    :goto_67
    iget-object v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    check-cast v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 408
    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v9, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 407
    invoke-virtual {v6, v7, v8, v10, v5}, Linfo/flowersoft/theotown/draft/Composition;->addBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;III)V

    goto/16 :goto_fe

    .line 409
    :cond_7c
    instance-of v8, v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v8, :cond_b5

    .line 410
    const-string v8, "l0"

    invoke-virtual {v5, v8, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 411
    const-string v9, "l1"

    invoke-virtual {v5, v9, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 412
    iget-object v9, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    move-object v10, v7

    check-cast v10, Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string v7, "x0"

    .line 413
    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "y0"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "x1"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "y1"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v7, "join"

    .line 414
    invoke-virtual {v5, v7, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v16, v8

    .line 412
    invoke-virtual/range {v9 .. v17}, Linfo/flowersoft/theotown/draft/Composition;->addRoad(Linfo/flowersoft/theotown/draft/RoadDraft;IIIIZII)V

    goto :goto_fe

    .line 416
    :cond_b5
    instance-of v6, v7, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const-string v8, "level"

    if-eqz v6, :cond_cf

    .line 417
    iget-object v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 418
    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v8, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 417
    invoke-virtual {v6, v7, v9, v10, v5}, Linfo/flowersoft/theotown/draft/Composition;->addRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;III)V

    goto :goto_fe

    .line 419
    :cond_cf
    instance-of v6, v7, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz v6, :cond_e7

    .line 420
    iget-object v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    check-cast v7, Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 421
    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v8, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 420
    invoke-virtual {v6, v7, v9, v10, v5}, Linfo/flowersoft/theotown/draft/Composition;->addBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;III)V

    goto :goto_fe

    .line 422
    :cond_e7
    instance-of v6, v7, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz v6, :cond_fe

    .line 423
    iget-object v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    check-cast v7, Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 424
    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v9, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 423
    invoke-virtual {v6, v7, v8, v10, v5}, Linfo/flowersoft/theotown/draft/Composition;->addTree(Linfo/flowersoft/theotown/draft/TreeDraft;III)V

    :cond_fe
    :goto_fe
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 427
    :cond_102
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/Draft;->premium:Z

    xor-int/2addr v4, v6

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/draft/Composition;->finish(Z)V

    .line 428
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Composition;->getPrice()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    .line 429
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Composition;->getMonthlyPrice()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    .line 431
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "infer requirements"

    invoke-virtual {v2, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 432
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Composition;->collectRequirements()Ljava/util/List;

    move-result-object v2

    .line 433
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_157

    .line 434
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v4

    if-nez v4, :cond_141

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/draft/Draft;->setRequirement(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V

    .line 436
    :cond_141
    :goto_141
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_157

    .line 437
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->mergeFrom(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    :cond_157
    return-void
.end method

.method public final loadFrames(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 445
    iget v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->forBuilding(II)Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    move-result-object v5

    .line 447
    iget-object v6, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v8, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    const-string v4, "frame"

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 448
    iget-object v6, v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v8, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    const-string v3, "deco"

    const-string v4, "decos"

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    .line 449
    iget-object p1, v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v0, "random frame"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomFrame:Z

    .line 450
    const-string p1, "ground frame"

    iget-object v0, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundFrames:[I

    const-string v1, "ground frames"

    invoke-virtual {p0, v1, p1, v7, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundFrames:[I

    .line 451
    const-string p1, "water border frame"

    iget-object v0, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterBorderFrames:[I

    const-string v1, "water border frames"

    invoke-virtual {p0, v1, p1, v7, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterBorderFrames:[I

    .line 453
    iget-object p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez p1, :cond_5d

    iget-object v0, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_55

    array-length v0, v0

    if-eqz v0, :cond_55

    goto :goto_5d

    .line 454
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No frames have been provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 455
    iget-object p1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz p1, :cond_67

    array-length p1, p1

    if-nez p1, :cond_6d

    .line 456
    :cond_67
    filled-new-array {v0}, [I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 459
    :cond_6d
    iget-object p1, v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "ground tiles"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 460
    iget-object p1, v2, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    .line 461
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 462
    :goto_82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_a2

    .line 463
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 465
    const-class v4, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz v3, :cond_9f

    .line 466
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v3, :cond_9f

    .line 467
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->add([I)V

    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 471
    :cond_a2
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ae

    .line 472
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object p1

    iput-object p1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundTileFrames:[I

    :cond_ae
    return-void
.end method

.method public final loadFun(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->transitions:Ljava/util/List;

    const-string v2, "fun"

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->transitions:Ljava/util/List;

    .line 776
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on click fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onClickTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onClickTransitions:Ljava/util/List;

    .line 777
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "random fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomTransitions:Ljava/util/List;

    .line 778
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on event fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    .line 779
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on built fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onBuiltTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onBuiltTransitions:Ljava/util/List;

    .line 780
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on destroy fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onDestroyTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onDestroyTransitions:Ljava/util/List;

    .line 781
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "hidden on click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->hiddenOnClick:Z

    return-void
.end method

.method public final loadInfluences(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 7

    .line 1160
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v0, :cond_31

    .line 1161
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1163
    :cond_12
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([I)[I

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    .line 1165
    :cond_1a
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->DENSITY:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    .line 1166
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_37

    .line 1168
    :cond_31
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Composition;->getInfluenceInduceVector()[I

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    .line 1172
    :goto_37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v0, :cond_a9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1175
    :goto_4c
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_79

    .line 1176
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1177
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_76

    .line 1179
    :cond_60
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result v3

    if-eqz v3, :cond_69

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_6b

    :cond_69
    const/high16 v3, -0x40800000    # -1.0f

    .line 1180
    :goto_6b
    iget-object v4, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    aget v4, v4, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 1183
    :cond_79
    iget v0, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MIN_PRICE_FROM_INFLUENCE_AREA:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1184
    iget v1, p0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->MIN_MONTHLY_FROM_INFLUENCE_AREA:F

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    .line 1186
    iget-wide v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    .line 1187
    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    :cond_a9
    return-void
.end method

.method public final loadPedestrian(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "pedestrian"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1276
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    const-class v1, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    if-eqz v1, :cond_1d

    .line 1279
    iput-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianDraft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    goto :goto_34

    .line 1278
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find pedestrian of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1281
    :cond_34
    :goto_34
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "pedestrian count"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_54

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_54

    .line 1282
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    return-void

    .line 1283
    :cond_54
    :goto_54
    iput v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    return-void
.end method

.method public final loadSmoke(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "smoke"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->smokeSpots:Ljava/util/List;

    .line 787
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 788
    :goto_18
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 789
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 790
    const-string v3, "id"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    const-string v4, "x"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 792
    const-string v4, "y"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 793
    const-string v4, "color"

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    .line 794
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTargetFrames(Linfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object v10

    .line 795
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v2, :cond_5c

    .line 796
    instance-of v4, v2, Linfo/flowersoft/theotown/draft/SmokeDraft;

    if-eqz v4, :cond_5c

    .line 797
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->smokeSpots:Ljava/util/List;

    new-instance v5, Linfo/flowersoft/theotown/draft/SmokeSpot;

    move-object v6, v2

    check-cast v6, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/draft/SmokeSpot;-><init>(Linfo/flowersoft/theotown/draft/SmokeDraft;IILio/blueflower/stapel2d/drawing/Color;[I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 796
    :cond_5c
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "May not find smoke of id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    return-void
.end method

.method public final loadType(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 827
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->fromTag(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    const/4 v7, 0x0

    .line 828
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    .line 829
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->OTHER:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v8, 0x1

    .line 830
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    .line 833
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v2, v2, 0x9

    sub-int/2addr v2, v8

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 834
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v9, 0x3

    rem-int/2addr v3, v9

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 835
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "build time factor"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 836
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "free build time skip"

    invoke-virtual {v3, v4, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->freeBuildTimeSkip:Z

    .line 838
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    .line 839
    iget-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v3

    if-nez v3, :cond_53

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->alignable:Z

    if-nez v3, :cond_53

    move v3, v8

    goto :goto_54

    :cond_53
    move v3, v7

    :goto_54
    iput-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    .line 840
    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    div-float v3, v4, v3

    add-float/2addr v3, v4

    .line 841
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v10

    int-to-float v4, v10

    .line 845
    iget v5, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    add-int/2addr v5, v8

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    neg-int v5, v5

    int-to-long v5, v5

    .line 846
    iget v11, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    add-int/2addr v11, v8

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v4, v4

    int-to-long v11, v4

    .line 848
    sget-object v4, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    iget-object v13, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v4, v4, v13

    const-string v13, "$inf.ind.lvl"

    const/4 v14, 0x5

    const/16 v16, 0x14

    const/4 v15, 0x4

    move/from16 v17, v9

    move/from16 v18, v10

    const-wide/16 v19, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_704

    :pswitch_9e
    goto/16 :goto_12c

    .line 999
    :pswitch_a0
    const-string v3, "medic"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    goto/16 :goto_12c

    .line 996
    :pswitch_aa
    const-string v3, "fire brigade"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    goto/16 :goto_12c

    .line 993
    :pswitch_b4
    const-string v3, "swat"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    goto/16 :goto_12c

    .line 990
    :pswitch_be
    const-string v3, "police"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    goto :goto_12c

    .line 987
    :pswitch_c7
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    goto :goto_12c

    .line 970
    :pswitch_ca
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->DESTROYED:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 971
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    .line 972
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->burnable:Z

    .line 975
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    .line 976
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    .line 977
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    .line 979
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    .line 980
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    :goto_e0
    move-object v13, v10

    move-wide/from16 v2, v19

    move-wide v11, v2

    move v10, v7

    goto/16 :goto_349

    .line 966
    :pswitch_e7
    const-string v3, "car hearse"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    .line 967
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    goto :goto_12c

    .line 962
    :pswitch_f3
    const-string v3, "garbage"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    .line 963
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    goto :goto_12c

    .line 957
    :pswitch_ff
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    .line 958
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->AIRPORT:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 959
    iget-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    const-wide/16 v15, 0x10

    or-long/2addr v3, v15

    iput-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    goto :goto_12c

    .line 951
    :pswitch_112
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->MILITARY:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 952
    iget-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    const-wide/16 v15, 0x2

    or-long/2addr v3, v15

    iput-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    .line 953
    const-string v3, "military truck"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    .line 954
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    :goto_12c
    move-object v13, v10

    move v10, v2

    move-wide v2, v11

    move-wide v11, v5

    goto/16 :goto_349

    .line 942
    :pswitch_132
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    .line 943
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    .line 944
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    .line 945
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    .line 947
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    .line 948
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    goto :goto_e0

    .line 926
    :pswitch_13f
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    .line 928
    :pswitch_141
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    .line 929
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    .line 932
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->DECORATION:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 934
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    .line 935
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    .line 936
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    .line 937
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    goto :goto_e0

    .line 922
    :pswitch_156
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getDefaultInfluences()[I

    move-result-object v10

    .line 923
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v16, v10, v3

    goto :goto_12c

    .line 915
    :pswitch_163
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getDefaultInfluences()[I

    move-result-object v10

    .line 916
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, -0x2

    aput v4, v10, v3

    .line 917
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->NOISE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v4, v10, v3

    .line 918
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v16, v10, v3

    .line 919
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->NATURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v14, v10, v3

    goto :goto_12c

    .line 898
    :pswitch_189
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    .line 899
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    mul-int/lit8 v2, v2, 0x2

    .line 900
    div-int/lit8 v2, v2, 0x3

    .line 901
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    .line 902
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 903
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    .line 904
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 906
    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int v3, v3, v18

    mul-int/lit8 v3, v3, 0x3

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    div-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 907
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v13, v18, 0x3

    rem-int/2addr v4, v13

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 908
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    .line 909
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    .line 910
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_1db

    goto/16 :goto_12c

    .line 911
    :cond_1db
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Harbor pier buildings must be square"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    :pswitch_1e3
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    mul-int/lit8 v2, v2, 0x2

    .line 890
    div-int/lit8 v2, v2, 0x3

    .line 891
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 892
    const-string v3, "$inf.ind.harbor"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 893
    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int v3, v3, v18

    mul-int/lit8 v3, v3, 0x3

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    div-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 894
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v13, v18, 0x3

    rem-int/2addr v4, v13

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 895
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    goto/16 :goto_12c

    .line 879
    :pswitch_216
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    mul-int/lit8 v2, v2, 0x2

    .line 880
    div-int/lit8 v2, v2, 0x3

    .line 881
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 882
    const-string v3, "$inf.ind.farm"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 883
    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int v3, v3, v18

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    div-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 884
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int v4, v4, v18

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 885
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    .line 886
    iget-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    const-wide/32 v15, 0x800000

    or-long/2addr v3, v15

    iput-wide v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    goto/16 :goto_12c

    .line 868
    :pswitch_24e
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    mul-int/lit8 v2, v2, 0x2

    .line 869
    div-int/lit8 v2, v2, 0x3

    .line 870
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    if-le v4, v15, :cond_25f

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto :goto_265

    :cond_25f
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    :goto_265
    iput-object v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 872
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v4, v4, 0x3

    mul-int v4, v4, v18

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 873
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v13, v18, 0x9

    rem-int/2addr v4, v13

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 874
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 875
    aget v4, v10, v3

    iget v13, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/2addr v4, v13

    div-int/2addr v4, v9

    aput v4, v10, v3

    .line 876
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    goto/16 :goto_12c

    .line 859
    :pswitch_2ab
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    mul-int/lit8 v2, v2, 0x2

    .line 860
    div-int/lit8 v2, v2, 0x3

    .line 861
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    if-le v4, v15, :cond_2bc

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto :goto_2c2

    :cond_2bc
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    :goto_2c2
    iput-object v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$inf.com.lvl"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 863
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int v4, v4, v18

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 864
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v13, v18, 0x3

    rem-int/2addr v4, v13

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 865
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    goto/16 :goto_12c

    .line 850
    :pswitch_2fa
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    mul-int/lit8 v2, v2, 0x2

    .line 851
    div-int/lit8 v2, v2, 0x3

    .line 852
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    if-le v4, v15, :cond_30b

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto :goto_311

    :cond_30b
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    :goto_311
    iput-object v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$inf.res.lvl"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getInfluencesById(Ljava/lang/String;)[I

    move-result-object v10

    .line 854
    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int v4, v4, v18

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 855
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v13, v18, 0x3

    rem-int/2addr v4, v13

    add-int/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 856
    iput-boolean v8, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    goto/16 :goto_12c

    .line 1003
    :goto_349
    iget-object v4, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "power"

    invoke-virtual {v4, v5, v11, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    .line 1004
    iget-object v4, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "water"

    invoke-virtual {v4, v5, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    .line 1005
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v4

    if-nez v4, :cond_39c

    move-wide v4, v2

    .line 1007
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    move-wide v15, v4

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    move-wide v14, v15

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitPower(Linfo/flowersoft/theotown/draft/Draft;JJI)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    .line 1008
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitWater(Linfo/flowersoft/theotown/draft/Draft;JJI)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    .line 1010
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v2

    if-eqz v2, :cond_39c

    .line 1012
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    .line 1013
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    .line 1019
    :cond_39c
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    if-nez v2, :cond_3a8

    if-nez v13, :cond_3a6

    .line 1021
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->getDefaultInfluences()[I

    move-result-object v13

    .line 1024
    :cond_3a6
    iput-object v13, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    .line 1027
    :cond_3a8
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "service cars"

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    .line 1028
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "service car tags"

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3d8

    .line 1030
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    move v3, v7

    .line 1031
    :goto_3c6
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3d8

    .line 1032
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c6

    .line 1036
    :cond_3d8
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "road flags"

    iget-wide v5, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    invoke-virtual {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    .line 1038
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->nightLightProbability:F

    float-to-double v3, v3

    const-string v5, "night light probability"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->nightLightProbability:F

    .line 1040
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v2

    const-string v3, " was specified"

    const-string v4, " x "

    const-string v5, "composition"

    if-eqz v2, :cond_446

    .line 1041
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v2, v6

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    .line 1042
    iput-boolean v7, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    .line 1043
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getMaxSize()I

    move-result v2

    const/16 v6, 0x10

    if-le v2, v6, :cond_481

    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 1044
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_481

    .line 1045
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_422

    goto :goto_481

    .line 1046
    :cond_422
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max building size for RCI buildings is 16 but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_446
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getMaxSize()I

    move-result v2

    const/16 v6, 0x40

    if-le v2, v6, :cond_481

    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 1052
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_481

    .line 1053
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_45d

    goto :goto_481

    .line 1054
    :cond_45d
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max building size for non-RCI buildings is 64 but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1058
    :cond_481
    :goto_481
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "rci cars"

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    .line 1061
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    if-eqz v3, :cond_499

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->removable:Z

    if-eqz v3, :cond_499

    move v3, v8

    goto :goto_49a

    :cond_499
    move v3, v7

    :goto_49a
    const-string v4, "easy remove"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    .line 1062
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "supports slope"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    .line 1063
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "supports terrain"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    .line 1064
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "supports shoreline"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsShoreline:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsShoreline:Z

    .line 1068
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v3, :cond_4d2

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    if-eqz v3, :cond_4d2

    move v3, v8

    goto :goto_4d3

    :cond_4d2
    move v3, v7

    :goto_4d3
    const-string v4, "draw water borders"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    .line 1069
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    if-eqz v3, :cond_4e5

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    if-eqz v3, :cond_4e9

    :cond_4e5
    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v3, :cond_4eb

    :cond_4e9
    move v3, v8

    goto :goto_4ec

    :cond_4eb
    move v3, v7

    :goto_4ec
    const-string v4, "draw water ground"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    .line 1070
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, ""

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_525

    .line 1071
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_525

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_525

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_525

    .line 1072
    const-class v3, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v2, :cond_522

    move v2, v8

    goto :goto_523

    :cond_522
    move v2, v7

    .line 1073
    :goto_523
    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    .line 1078
    :cond_525
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "movable"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "moveable"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    .line 1080
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "zone"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_551

    .line 1081
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v4, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 1084
    :cond_551
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz v2, :cond_55f

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v2, v3, :cond_55f

    move v2, v8

    goto :goto_560

    :cond_55f
    move v2, v7

    :goto_560
    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    .line 1085
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "build zone"

    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    .line 1087
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v2, :cond_5a9

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eqz v2, :cond_5a9

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a9

    .line 1088
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    .line 1089
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v3, :cond_58d

    goto :goto_5a9

    .line 1090
    :cond_58d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No category "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could be found"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :cond_5a9
    :goto_5a9
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    cmp-long v2, v2, v19

    if-nez v2, :cond_5c6

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v2

    if-eqz v2, :cond_5c6

    .line 1094
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    shl-int v3, v9, v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    .line 1097
    :cond_5c6
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "conductive"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    .line 1098
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "super conductive"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->superConductive:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->superConductive:Z

    .line 1099
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "high voltage only"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->highVoltageOnly:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->highVoltageOnly:Z

    .line 1100
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "liquid"

    invoke-virtual {v2, v3, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->liquid:Z

    .line 1102
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "draw zone"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    .line 1104
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "habitants"

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 1105
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "workers"

    iget v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 1106
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "people"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_639

    .line 1107
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v4, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v2, v4, :cond_631

    .line 1108
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    goto :goto_639

    .line 1110
    :cond_631
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 1115
    :cond_639
    :goto_639
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    const v3, 0xf4240

    invoke-static {v2, v7, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 1116
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    invoke-static {v2, v7, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 1120
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_666

    .line 1121
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    move/from16 v3, v18

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 1122
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 1125
    :cond_666
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "auto build"

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    .line 1126
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuildFactor:F

    float-to-double v3, v3

    const-string v5, "auto build factor"

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuildFactor:F

    .line 1127
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "rebuild"

    invoke-virtual {v2, v3, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rebuild:Z

    .line 1129
    sget-object v2, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v8, :cond_6aa

    if-eq v2, v9, :cond_6aa

    move/from16 v3, v17

    if-eq v2, v3, :cond_6a0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6a0

    goto :goto_6b6

    .line 1136
    :cond_6a0
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float v2, v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    goto :goto_6b6

    .line 1132
    :cond_6aa
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    .line 1140
    :goto_6b6
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6cb

    .line 1141
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    .line 1144
    :cond_6cb
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v2, :cond_6d3

    div-int/lit8 v10, v10, 0x2

    .line 1145
    :cond_6d3
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "build time"

    invoke-virtual {v2, v3, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    .line 1146
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_6ec

    .line 1148
    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    div-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    .line 1151
    :cond_6ec
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "influence preview"

    invoke-virtual {v2, v3, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influencePreview:Z

    .line 1154
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v2

    if-eqz v2, :cond_702

    move-wide/from16 v2, v19

    .line 1155
    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    :cond_702
    return-void

    nop

    :pswitch_data_704
    .packed-switch 0x1
        :pswitch_2fa
        :pswitch_2ab
        :pswitch_24e
        :pswitch_216
        :pswitch_1e3
        :pswitch_189
        :pswitch_163
        :pswitch_156
        :pswitch_13f
        :pswitch_141
        :pswitch_132
        :pswitch_112
        :pswitch_ff
        :pswitch_f3
        :pswitch_e7
        :pswitch_ca
        :pswitch_9e
        :pswitch_9e
        :pswitch_c7
        :pswitch_be
        :pswitch_b4
        :pswitch_aa
        :pswitch_a0
    .end packed-switch
.end method

.method public final loadUpgrades(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v4, p1

    .line 1192
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "upgrades"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 1193
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v7

    .line 1194
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    const/4 v8, 0x0

    move v9, v8

    .line 1195
    :goto_1f
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_1c0

    .line 1196
    invoke-virtual {v7, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 1197
    const-string v1, "active"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 1198
    new-instance v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-direct {v6}, Linfo/flowersoft/theotown/draft/UpgradeDraft;-><init>()V

    .line 1199
    invoke-virtual {p0, v6, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 1200
    const-string v1, "upgrade"

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    move-object v3, v2

    .line 1201
    const-string v2, "frame"

    const/4 v5, 0x0

    const-string v1, "frames"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    move-object v10, v4

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 1203
    const-string v1, "monthly price"

    invoke-virtual {v3, v1, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->signedPrice(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    .line 1204
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    const-wide/16 v4, -0x1

    const-wide/16 v11, 0x0

    if-nez v1, :cond_6b

    iget-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_6b

    iput-wide v4, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    .line 1206
    :cond_6b
    const-string v1, "price"

    invoke-virtual {v3, v1, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->signedPrice(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    .line 1207
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_86

    iget-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_86

    iput-wide v4, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    .line 1208
    :cond_86
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    const-string v2, "diamond price"

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 1209
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v1, :cond_9e

    iget-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->setZero()V

    .line 1211
    :cond_9e
    iget-object v1, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_ad

    goto :goto_b7

    .line 1215
    :cond_ad
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->influenceInduceVector:[I

    goto :goto_bd

    .line 1212
    :cond_b7
    :goto_b7
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences(Linfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object v1

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->influenceInduceVector:[I

    .line 1217
    :goto_bd
    const-string v1, "water"

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    .line 1218
    const-string v1, "power"

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    .line 1220
    const-string v1, "only one"

    invoke-virtual {v3, v1, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->onlyOne:Z

    .line 1221
    const-string v1, "build time"

    invoke-virtual {v3, v1, v11, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    .line 1222
    const-string v1, "animation"

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 1223
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v2

    invoke-virtual {p0, v2, v1, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    move-object v2, v1

    .line 1224
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v3

    move v3, v2

    const-string v2, "frame animation indices"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    move-object v3, v5

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpotIndices:[[I

    .line 1227
    :cond_108
    sget-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->neededAspectAmount:[I

    .line 1228
    array-length v0, v0

    new-array v4, v0, [I

    iput-object v4, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->aspectCapacity:[I

    move-object v5, v3

    move-object v3, v1

    .line 1230
    iget-object v1, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    move-object v2, v5

    .line 1232
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v5

    move-object v0, p0

    .line 1230
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadAspectRaw(Linfo/flowersoft/theotown/draft/BuildingType;Linfo/flowersoft/theotown/util/json/JSONObject;[I[IZ)J

    move-result-wide v3

    move-object v5, v2

    .line 1234
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_156

    .line 1235
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    if-lez v1, :cond_143

    .line 1236
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    const-wide/16 v13, 0x64

    div-long v13, v3, v13

    long-to-int v13, v13

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 1238
    :cond_143
    iget-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    .line 1239
    iget-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    const-wide/16 v13, 0xa

    div-long/2addr v3, v13

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    .line 1242
    :cond_156
    const-string v1, "car spawner"

    iget-object v2, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    invoke-virtual {p0, v5, v1, v2, v10}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->loadCarSpawners(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    move-result-object v1

    iput-object v1, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    .line 1244
    iput-object v10, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->parent:Linfo/flowersoft/theotown/draft/Draft;

    .line 1247
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_1ac

    .line 1249
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->influenceInduceVector:[I

    iget-object v3, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    iget-wide v4, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    move-object v1, v6

    .line 1252
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    move-object v0, p0

    .line 1249
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitInfluences(Linfo/flowersoft/theotown/draft/Draft;[ILinfo/flowersoft/theotown/draft/BuildingType;JI)V

    .line 1255
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    .line 1256
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    .line 1255
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitPower(Linfo/flowersoft/theotown/draft/Draft;JJI)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    .line 1257
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    .line 1258
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    .line 1257
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;->limitWater(Linfo/flowersoft/theotown/draft/Draft;JJI)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    .line 1260
    iget-object v0, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCINotDeco()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 1262
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    .line 1263
    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    goto :goto_1ad

    :cond_1ac
    move-object v1, v6

    .line 1267
    :cond_1ad
    :goto_1ad
    iget-object v0, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bb

    :cond_1ba
    move-object v10, v4

    :goto_1bb
    add-int/lit8 v9, v9, 0x1

    move-object v4, v10

    goto/16 :goto_1f

    :cond_1c0
    return-void
.end method

.method public final reportInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V
    .registers 8

    .line 220
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") supported influence "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    const-string p2, "BuildingDraft"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportPowerLimit(Linfo/flowersoft/theotown/draft/Draft;JJ)V
    .registers 9

    .line 232
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " power: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BuildingDraft"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportUnsupportedInfluenceLimit(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/components/InfluenceType;II)V
    .registers 8

    .line 226
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") unsupported influence "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    const-string p2, "BuildingDraft"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportWaterLimit(Linfo/flowersoft/theotown/draft/Draft;JJ)V
    .registers 9

    .line 236
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " water: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BuildingDraft"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.BuildingDraftLoader.AnonymousClass1 (info.flowersoft.theotown.draftloader.BuildingDraftLoader$1)
.class public synthetic Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;
.super Ljava/lang/Object;
.source "BuildingDraftLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader;
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

    .line 848
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FARM:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->BUOY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v0, Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;-><init>()V

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda1 (info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BuildingDraftLoader$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-result-object v0

    return-object v0
.end method
