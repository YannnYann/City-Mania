###### Class info.flowersoft.theotown.components.actionplace.ActionPlaceType (info.flowersoft.theotown.components.actionplace.ActionPlaceType)
.class public final Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;
.super Linfo/flowersoft/theotown/util/IntEnum;
.source "ActionPlaceType.java"


# static fields
.field public static final COUNT:I

.field public static final FIRE:I

.field public static final GARBAGE:I

.field public static final MEDIC:I

.field public static final POLICE:I

.field public static final SWAT:I

.field public static final frame:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 12
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->allocate()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->FIRE:I

    .line 13
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->allocate()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->POLICE:I

    .line 14
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->allocate()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->MEDIC:I

    .line 15
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->allocate()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->SWAT:I

    .line 16
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->allocate()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->GARBAGE:I

    .line 17
    invoke-static {}, Linfo/flowersoft/theotown/util/IntEnum;->getAndResetCount()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    .line 19
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_FIRE_ALERT:I

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_POLICE_ALERT:I

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_MEDIC_ALERT:I

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_SWAT_ALERT:I

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_GARBAGE_ALERT:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->frame:[I

    return-void
.end method
