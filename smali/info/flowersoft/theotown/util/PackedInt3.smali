###### Class info.flowersoft.theotown.util.PackedInt3 (info.flowersoft.theotown.util.PackedInt3)
.class public final Linfo/flowersoft/theotown/util/PackedInt3;
.super Ljava/lang/Object;
.source "PackedInt3.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pack(III)I
    .registers 3

    .line 0
    shl-int/lit8 p0, p0, 0x1a

    shl-int/lit8 p1, p1, 0xd

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static unpackLevel(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x1a

    return p0
.end method

.method public static unpackX(I)I
    .registers 1

    .line 0
    ushr-int/lit8 p0, p0, 0xd

    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method

.method public static unpackY(I)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method
