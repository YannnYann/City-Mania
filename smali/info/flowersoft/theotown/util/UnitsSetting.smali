###### Class info.flowersoft.theotown.util.UnitsSetting (info.flowersoft.theotown.util.UnitsSetting)
.class public final enum Linfo/flowersoft/theotown/util/UnitsSetting;
.super Ljava/lang/Enum;
.source "UnitsSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/util/UnitsSetting;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/util/UnitsSetting;

.field public static final enum Imperial:Linfo/flowersoft/theotown/util/UnitsSetting;

.field public static final enum Metric:Linfo/flowersoft/theotown/util/UnitsSetting;


# instance fields
.field public final areaUnit:Ljava/lang/String;

.field public final distanceUnit:Ljava/lang/String;

.field public final unitsPerKm:F


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/util/UnitsSetting;
    .registers 2

    .line 10
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    sget-object v1, Linfo/flowersoft/theotown/util/UnitsSetting;->Imperial:Linfo/flowersoft/theotown/util/UnitsSetting;

    filled-new-array {v0, v1}, [Linfo/flowersoft/theotown/util/UnitsSetting;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/util/UnitsSetting;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "km\u00b2"

    const-string v1, "Metric"

    const/4 v2, 0x0

    const-string v3, "km"

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/util/UnitsSetting;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    .line 13
    new-instance v1, Linfo/flowersoft/theotown/util/UnitsSetting;

    const v5, 0x3f1f122b

    const-string v6, "sqmi"

    const-string v2, "Imperial"

    const/4 v3, 0x1

    const-string v4, "mi"

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/util/UnitsSetting;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/util/UnitsSetting;->Imperial:Linfo/flowersoft/theotown/util/UnitsSetting;

    .line 10
    invoke-static {}, Linfo/flowersoft/theotown/util/UnitsSetting;->$values()[Linfo/flowersoft/theotown/util/UnitsSetting;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->$VALUES:[Linfo/flowersoft/theotown/util/UnitsSetting;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
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
            "F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->distanceUnit:Ljava/lang/String;

    .line 21
    iput p4, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->unitsPerKm:F

    .line 22
    iput-object p5, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->areaUnit:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Linfo/flowersoft/theotown/util/UnitsSetting;
    .registers 2

    .line 55
    invoke-static {}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getDefaultLocaleInit()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_9

    .line 56
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object v0

    .line 60
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_d} :catch_25

    if-eqz v0, :cond_22

    .line 66
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "mmr"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 68
    :cond_1f
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Imperial:Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object v0

    .line 70
    :cond_22
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object v0

    :catch_25
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/util/UnitsSetting;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Linfo/flowersoft/theotown/util/UnitsSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/util/UnitsSetting;
    .registers 1

    .line 10
    sget-object v0, Linfo/flowersoft/theotown/util/UnitsSetting;->$VALUES:[Linfo/flowersoft/theotown/util/UnitsSetting;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/util/UnitsSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/util/UnitsSetting;

    return-object v0
.end method


# virtual methods
.method public final format(Ljava/lang/String;F)Ljava/lang/String;
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9

    .line 44
    const-string v0, "%.2f"

    goto :goto_14

    :cond_9
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_12

    .line 46
    const-string v0, "%.1f"

    goto :goto_14

    .line 45
    :cond_12
    const-string v0, "%.0f"

    .line 48
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localizeArea(F)Ljava/lang/String;
    .registers 3

    .line 37
    iget v0, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->unitsPerKm:F

    mul-float/2addr p1, v0

    mul-float/2addr p1, v0

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->areaUnit:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/UnitsSetting;->format(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localizeDistance(F)Ljava/lang/String;
    .registers 3

    .line 29
    iget v0, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->unitsPerKm:F

    mul-float/2addr p1, v0

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/util/UnitsSetting;->distanceUnit:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/UnitsSetting;->format(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
