###### Class info.flowersoft.theotown.util.PackedInt2 (info.flowersoft.theotown.util.PackedInt2)
.class public final Linfo/flowersoft/theotown/util/PackedInt2;
.super Ljava/lang/Object;
.source "PackedInt2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pack(II)I
    .registers 2

    .line 0
    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static unpackX(I)I
    .registers 1

    .line 0
    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static unpackY(I)I
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
