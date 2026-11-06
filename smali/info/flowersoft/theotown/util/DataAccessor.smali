###### Class info.flowersoft.theotown.util.DataAccessor (info.flowersoft.theotown.util.DataAccessor)
.class public Linfo/flowersoft/theotown/util/DataAccessor;
.super Ljava/lang/Object;
.source "DataAccessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(JII)J
    .registers 6

    .line 0
    const-wide/16 v0, -0x1

    shl-long/2addr v0, p2

    not-long v0, v0

    shl-long/2addr v0, p3

    and-long/2addr p0, v0

    ushr-long/2addr p0, p3

    return-wide p0
.end method

.method public static write(JIIJ)J
    .registers 10

    .line 0
    const-wide/16 v0, -0x1

    shl-long/2addr v0, p2

    not-long v0, v0

    shl-long v2, v0, p3

    not-long v2, v2

    and-long/2addr p0, v2

    and-long/2addr p4, v0

    shl-long p2, p4, p3

    or-long/2addr p0, p2

    return-wide p0
.end method
