###### Class androidx.collection.internal.ContainerHelpersKt (androidx.collection.internal.ContainerHelpersKt)
.class public final Landroidx/collection/internal/ContainerHelpersKt;
.super Ljava/lang/Object;
.source "ContainerHelpers.kt"


# static fields
.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 22
    new-array v1, v0, [I

    sput-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    .line 25
    new-array v1, v0, [J

    sput-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_LONGS:[J

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static final binarySearch([III)I
    .registers 6

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_8
    if-gt v0, p1, :cond_1b

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 60
    aget v2, p0, v1

    if-ge v2, p2, :cond_15

    add-int/lit8 v0, v1, 0x1

    goto :goto_8

    :cond_15
    if-le v2, p2, :cond_1a

    add-int/lit8 p1, v1, -0x1

    goto :goto_8

    :cond_1a
    return v1

    :cond_1b
    not-int p0, v0

    return p0
.end method

.method public static final binarySearch([JIJ)I
    .registers 8

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_8
    if-gt v0, p1, :cond_1d

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 79
    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_17

    add-int/lit8 v0, v1, 0x1

    goto :goto_8

    :cond_17
    if-lez v2, :cond_1c

    add-int/lit8 p1, v1, -0x1

    goto :goto_8

    :cond_1c
    return v1

    :cond_1d
    not-int p0, v0

    return p0
.end method

.method public static final equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final idealByteArraySize(I)I
    .registers 3

    .line 0
    const/4 v0, 0x4

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_c

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return p0
.end method

.method public static final idealIntArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    .line 31
    invoke-static {p0}, Landroidx/collection/internal/ContainerHelpersKt;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static final idealLongArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x8

    .line 35
    invoke-static {p0}, Landroidx/collection/internal/ContainerHelpersKt;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
