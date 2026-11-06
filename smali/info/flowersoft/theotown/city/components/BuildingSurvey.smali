###### Class info.flowersoft.theotown.city.components.BuildingSurvey (info.flowersoft.theotown.city.components.BuildingSurvey)
.class public Linfo/flowersoft/theotown/city/components/BuildingSurvey;
.super Ljava/lang/Object;
.source "BuildingSurvey.java"


# static fields
.field public static final commercialFactors:[[F

.field public static final industrialFactors:[[F


# instance fields
.field public final commercial:[I

.field public final commercialHappiness:[F

.field public final industrial:[I

.field public final industrialHappiness:[F

.field public properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

.field public ratingDelta:F

.field public ratingValue:F

.field public final residential:[I

.field public final residentialHappiness:[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    .line 41
    new-array v1, v0, [F

    fill-array-data v1, :array_2c

    new-array v2, v0, [F

    fill-array-data v2, :array_36

    new-array v3, v0, [F

    fill-array-data v3, :array_40

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialFactors:[[F

    .line 46
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    new-array v2, v0, [F

    fill-array-data v2, :array_54

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    filled-new-array {v1, v2, v0}, [[F

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialFactors:[[F

    return-void

    :array_2c
    .array-data 4
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_40
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4a
    .array-data 4
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_5e
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    const/16 v0, 0x9

    .line 106
    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    const/4 v0, 0x3

    new-array v5, v0, [F

    new-array v6, v0, [F

    new-array v7, v0, [F

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>([I[I[I[F[F[FFF)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V
    .registers 11

    .line 100
    iget-object v1, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    iget-object v2, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    iget-object v3, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    iget-object v4, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    iget-object v5, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    iget-object v6, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    iget v7, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    iget v8, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>([I[I[I[F[F[FFF)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>()V

    .line 54
    :goto_5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 55
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ca

    goto :goto_3d

    :sswitch_1d
    const-string v6, "rci space"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v5, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v6, "rci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_3d

    :cond_31
    move v5, v1

    goto :goto_3d

    :sswitch_33
    const-string v6, "rating"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v5, v0

    :goto_3d
    packed-switch v5, :pswitch_data_d8

    .line 94
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 77
    :pswitch_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 78
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    filled-new-array {v2, v5, v6}, [[I

    move-result-object v2

    move v5, v0

    :goto_52
    if-ge v5, v4, :cond_65

    .line 80
    aget-object v6, v2, v5

    move v7, v3

    :goto_57
    const/16 v8, 0x9

    if-ge v7, v8, :cond_63

    .line 82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    aput v8, v6, v7

    add-int/2addr v7, v1

    goto :goto_57

    :cond_63
    add-int/2addr v5, v1

    goto :goto_52

    .line 85
    :cond_65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_5

    .line 57
    :pswitch_69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 58
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    filled-new-array {v2, v5, v6}, [[I

    move-result-object v2

    .line 59
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    filled-new-array {v5, v6, v7}, [[F

    move-result-object v5

    move v6, v0

    :goto_81
    if-ge v6, v4, :cond_92

    .line 61
    aget-object v7, v2, v6

    move v8, v0

    :goto_86
    if-ge v8, v3, :cond_90

    .line 63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v9

    aput v9, v7, v8

    add-int/2addr v8, v1

    goto :goto_86

    :cond_90
    add-int/2addr v6, v1

    goto :goto_81

    .line 67
    :cond_92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    move v2, v0

    :goto_99
    if-ge v2, v4, :cond_aa

    .line 68
    aget-object v3, v5, v2

    move v6, v0

    :goto_9e
    if-ge v6, v4, :cond_a8

    .line 70
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v7

    aput v7, v3, v6

    add-int/2addr v6, v1

    goto :goto_9e

    :cond_a8
    add-int/2addr v2, v1

    goto :goto_99

    .line 74
    :cond_aa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5

    .line 88
    :pswitch_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    .line 90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    .line 91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5

    :cond_c9
    return-void

    :sswitch_data_ca
    .sparse-switch
        -0x37ea4e63 -> :sswitch_33
        0x1b858 -> :sswitch_28
        0x22201b3e -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_af
        :pswitch_69
        :pswitch_44
    .end packed-switch
.end method

.method public constructor <init>([I[I[I[F[F[FFF)V
    .registers 11

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 29
    new-array v1, v0, [Linfo/flowersoft/theotown/city/components/BuildingProperty;

    iput-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    .line 113
    iput-object p2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    .line 114
    iput-object p3, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    .line 115
    iput-object p4, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    .line 116
    iput-object p5, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    .line 117
    iput-object p6, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    .line 118
    iput p7, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    .line 119
    iput p8, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    const/4 p1, 0x0

    :goto_1a
    if-ge p1, v0, :cond_28

    .line 122
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    new-instance p3, Linfo/flowersoft/theotown/city/components/BuildingProperty;

    invoke-direct {p3}, Linfo/flowersoft/theotown/city/components/BuildingProperty;-><init>()V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_28
    return-void
.end method


# virtual methods
.method public getBuildingHappiness()F
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_19

    .line 164
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    aget v2, v2, v1

    if-lez v2, :cond_16

    .line 165
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    aget v3, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    return v0
.end method

.method public getCommercialBuildingHappiness(IF)F
    .registers 4

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    aget v0, v0, p1

    if-lez v0, :cond_d

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    aget p1, p2, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    return p1

    :cond_d
    return p2
.end method

.method public getCommercialJobs(II)I
    .registers 8

    .line 189
    sget-object v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialFactors:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    aget v0, v2, v0

    const/4 v3, 0x6

    aget v3, v2, v3

    mul-int/2addr v3, p2

    add-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    aget v0, v2, v0

    const/4 v4, 0x7

    aget v4, v2, v4

    mul-int/2addr v4, p2

    add-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    const/4 v0, 0x2

    aget p1, p1, v0

    aget v0, v2, v0

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-int/2addr p2, v2

    add-int/2addr v0, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getIndustrialBuildingHappiness(IF)F
    .registers 4

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    aget v0, v0, p1

    if-lez v0, :cond_d

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    aget p1, p2, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    return p1

    :cond_d
    return p2
.end method

.method public getIndustrialJobs(II)I
    .registers 8

    .line 196
    sget-object v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialFactors:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    aget v0, v2, v0

    const/4 v3, 0x6

    aget v3, v2, v3

    mul-int/2addr v3, p2

    add-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    aget v0, v2, v0

    const/4 v4, 0x7

    aget v4, v2, v4

    mul-int/2addr v4, p2

    add-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    const/4 v0, 0x2

    aget p1, p1, v0

    aget v0, v2, v0

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-int/2addr p2, v2

    add-int/2addr v0, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getJobs(II)I
    .registers 4

    .line 203
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getCommercialJobs(II)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getIndustrialJobs(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getProducers(II)I
    .registers 5

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    return v1
.end method

.method public getRatingDelta()F
    .registers 2

    .line 234
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    return v0
.end method

.method public getRatingValue()F
    .registers 2

    .line 230
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    return v0
.end method

.method public getResidentialBuildingHappiness(IF)F
    .registers 4

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    aget v0, v0, p1

    if-lez v0, :cond_d

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    aget p1, p2, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    return p1

    :cond_d
    return p2
.end method

.method public getResidentialSpace(II)I
    .registers 5

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    return v1
.end method

.method public getShoppingPlaces(II)I
    .registers 5

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    return v1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    .line 128
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    .line 130
    const-string v2, "rci"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 131
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    const/4 v4, 0x6

    const/4 v5, 0x3

    if-ge v3, v5, :cond_32

    .line 132
    aget-object v5, v0, v3

    move v6, v2

    :goto_25
    if-ge v6, v4, :cond_2f

    .line 134
    aget v7, v5, v6

    invoke-interface {p1, v7}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_32
    move v3, v2

    :goto_33
    if-ge v3, v5, :cond_46

    .line 137
    aget-object v6, v1, v3

    .line 138
    array-length v7, v6

    move v8, v2

    :goto_39
    if-ge v8, v7, :cond_43

    aget v9, v6, v8

    .line 139
    invoke-interface {p1, v9}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 142
    :cond_46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 144
    const-string v1, "rci space"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 145
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :goto_51
    if-ge v2, v5, :cond_65

    .line 146
    aget-object v1, v0, v2

    move v3, v4

    :goto_56
    const/16 v6, 0x9

    if-ge v3, v6, :cond_62

    .line 148
    aget v6, v1, v3

    invoke-interface {p1, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 151
    :cond_65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 153
    const-string v0, "rating"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 154
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 155
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 156
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 157
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public set(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V
    .registers 6

    .line 215
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residential:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercial:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrial:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->residentialHappiness:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->commercialHappiness:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->industrialHappiness:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    iput v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingValue:F

    .line 222
    iget v0, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    iput v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->ratingDelta:F

    :goto_39
    const/16 v0, 0x10

    if-ge v3, v0, :cond_4b

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    aget-object v0, v0, v3

    iget-object v1, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->setTo(Linfo/flowersoft/theotown/city/components/BuildingProperty;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4b
    return-void
.end method
