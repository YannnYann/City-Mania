###### Class info.flowersoft.theotown.components.transportationsystem.CityTileSampler (info.flowersoft.theotown.components.transportationsystem.CityTileSampler)
.class Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;
.super Ljava/lang/Object;
.source "CityTileSampler.java"


# instance fields
.field public airportZoneCount:I

.field public commercialZoneCount:I

.field public farmZoneCount:I

.field public harborZoneCount:I

.field public industrialZoneCount:I

.field public militaryZoneCount:I

.field public parkCount:I

.field public residentialZoneCount:I

.field public sampleCount:I

.field public waterCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->sampleCount:I

    .line 34
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->waterCount:I

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->residentialZoneCount:I

    .line 37
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->commercialZoneCount:I

    .line 38
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->industrialZoneCount:I

    .line 39
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->harborZoneCount:I

    .line 40
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->farmZoneCount:I

    .line 41
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->airportZoneCount:I

    .line 42
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->militaryZoneCount:I

    .line 44
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->parkCount:I

    return-void
.end method

.method public sample(Linfo/flowersoft/theotown/city/City;III)V
    .registers 13

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->reset()V

    .line 49
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    sub-int v1, p2, p4

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    sub-int v2, p3, p4

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v2, v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    add-int/2addr p2, p4

    .line 53
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {p2, v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p2

    add-int/2addr p3, p4

    .line 54
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p4

    sub-int/2addr p4, v3

    invoke-static {p3, v4, p4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p3

    :goto_33
    if-gt v2, p3, :cond_dd

    .line 57
    sget-object p4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    sub-int v4, p2, v1

    add-int/2addr v4, v3

    invoke-virtual {p4, v4}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    add-int/2addr p4, v1

    .line 58
    iget v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->sampleCount:I

    add-int/2addr v4, v3

    iput v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->sampleCount:I

    .line 60
    invoke-virtual {v0, p4, v2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 61
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    .line 62
    :goto_4e
    invoke-virtual {v0, p4, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v6

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, p4, v2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result p4

    if-eqz p4, :cond_61

    .line 65
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->waterCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->waterCount:I

    :cond_61
    if-eqz v5, :cond_c3

    .line 69
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v5, p4, :cond_71

    .line 70
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->residentialZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->residentialZoneCount:I

    goto :goto_a8

    .line 71
    :cond_71
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v5, p4, :cond_7f

    .line 72
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->commercialZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->commercialZoneCount:I

    goto :goto_a8

    .line 73
    :cond_7f
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v5, p4, :cond_8d

    .line 74
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->industrialZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->industrialZoneCount:I

    goto :goto_a8

    .line 75
    :cond_8d
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->AIRPORT:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v5, p4, :cond_9b

    .line 76
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->airportZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->airportZoneCount:I

    goto :goto_a8

    .line 77
    :cond_9b
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->MILITARY:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v5, p4, :cond_a8

    .line 78
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->militaryZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->militaryZoneCount:I

    .line 80
    :cond_a8
    :goto_a8
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v4, p4, :cond_b6

    .line 81
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->farmZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->farmZoneCount:I

    goto :goto_c3

    .line 82
    :cond_b6
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p4

    iget-object p4, p4, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v4, p4, :cond_c3

    .line 83
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->harborZoneCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->harborZoneCount:I

    :cond_c3
    :goto_c3
    if-eqz v6, :cond_d9

    .line 88
    sget-object p4, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p4, p4, v4

    if-eq p4, v3, :cond_d4

    goto :goto_d9

    .line 90
    :cond_d4
    iget p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->parkCount:I

    add-int/2addr p4, v3

    iput p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->parkCount:I

    :cond_d9
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_33

    :cond_dd
    return-void
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.CityTileSampler.AnonymousClass1 (info.flowersoft.theotown.components.transportationsystem.CityTileSampler$1)
.class public synthetic Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler$1;
.super Ljava/lang/Object;
.source "CityTileSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;
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

    .line 88
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
