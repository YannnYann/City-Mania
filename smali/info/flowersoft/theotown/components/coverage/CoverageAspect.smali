###### Class info.flowersoft.theotown.components.coverage.CoverageAspect (info.flowersoft.theotown.components.coverage.CoverageAspect)
.class public interface abstract Linfo/flowersoft/theotown/components/coverage/CoverageAspect;
.super Ljava/lang/Object;
.source "CoverageAspect.java"


# static fields
.field public static final names:[Ljava/lang/String;

.field public static final pricePerCapacity:[D

.field public static final pricePerProvision:[D

.field public static final privileged:[Z

.field public static final textIds:[I

.field public static final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    .line 24
    const-string v0, "WASTE_DISPOSAL"

    const-string v1, "BODY_DISPOSAL"

    const-string v2, "EDUCATION_LOW"

    const-string v3, "EDUCATION_HIGH"

    const-string v4, "HEALTH_CARE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->names:[Ljava/lang/String;

    const/16 v0, 0x230

    const/16 v1, 0x62e

    const/16 v2, 0x511

    const/16 v3, 0x464

    const/16 v4, 0x1a4

    .line 32
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->textIds:[I

    const/4 v0, 0x5

    .line 40
    new-array v1, v0, [Z

    fill-array-data v1, :array_42

    sput-object v1, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->privileged:[Z

    .line 48
    new-array v1, v0, [D

    fill-array-data v1, :array_4a

    sput-object v1, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->pricePerProvision:[D

    .line 56
    new-array v0, v0, [D

    fill-array-data v0, :array_62

    sput-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->pricePerCapacity:[D

    return-void

    :array_42
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4a
    .array-data 8
        0x3f847ae147ae147bL    # 0.01
        0x3f847ae147ae147bL    # 0.01
        0x3f50624dd2f1a9fcL    # 0.001
        0x3fc999999999999aL    # 0.2
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_62
    .array-data 8
        0x0
        0x0
        0x0
        0x3f2a36e2eb1c432dL    # 2.0E-4
        0x3f747ae147ae147bL    # 0.005
    .end array-data
.end method
