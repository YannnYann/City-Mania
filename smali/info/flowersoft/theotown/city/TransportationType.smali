###### Class info.flowersoft.theotown.city.TransportationType (info.flowersoft.theotown.city.TransportationType)
.class public final Linfo/flowersoft/theotown/city/TransportationType;
.super Ljava/lang/Object;
.source "TransportationType.java"


# static fields
.field public static final names:[Ljava/lang/String;

.field public static final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 13
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/TransportationType;->values:[I

    .line 15
    const-string v0, "BUS"

    const-string v1, "TRAIN"

    const-string v2, "WALK"

    const-string v3, "CAR"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/TransportationType;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 18
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/city/TransportationType;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 19
    sget-object v1, Linfo/flowersoft/theotown/city/TransportationType;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p0, -0x1

    return p0
.end method
