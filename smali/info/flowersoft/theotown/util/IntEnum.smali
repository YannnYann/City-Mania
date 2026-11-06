###### Class info.flowersoft.theotown.util.IntEnum (info.flowersoft.theotown.util.IntEnum)
.class public Linfo/flowersoft/theotown/util/IntEnum;
.super Ljava/lang/Object;
.source "IntEnum.java"


# static fields
.field public static count:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate()I
    .registers 2

    .line 12
    sget v0, Linfo/flowersoft/theotown/util/IntEnum;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Linfo/flowersoft/theotown/util/IntEnum;->count:I

    return v0
.end method

.method public static getAndResetCount()I
    .registers 2

    .line 16
    sget v0, Linfo/flowersoft/theotown/util/IntEnum;->count:I

    const/4 v1, 0x0

    .line 17
    sput v1, Linfo/flowersoft/theotown/util/IntEnum;->count:I

    return v0
.end method
