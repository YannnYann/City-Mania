###### Class com.google.crypto.tink.internal.Ed25519 (com.google.crypto.tink.internal.Ed25519)
.class public final Lcom/google/crypto/tink/internal/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;,
        Lcom/google/crypto/tink/internal/Ed25519$XYZ;,
        Lcom/google/crypto/tink/internal/Ed25519$XYZT;,
        Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;,
        Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;
    }
.end annotation


# static fields
.field public static final CACHED_NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

.field public static final GROUP_ORDER:[B

.field public static final NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 47
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_42

    new-array v3, v1, [J

    fill-array-data v3, :array_6e

    new-array v4, v1, [J

    fill-array-data v4, :array_9a

    invoke-direct {v0, v2, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>([J[J[J)V

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    .line 51
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    new-instance v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    new-array v3, v1, [J

    fill-array-data v3, :array_c6

    new-array v4, v1, [J

    fill-array-data v4, :array_f2

    new-array v5, v1, [J

    fill-array-data v5, :array_11e

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_14a

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    const/16 v0, 0x20

    .line 1565
    new-array v0, v0, [B

    fill-array-data v0, :array_176

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519;->GROUP_ORDER:[B

    return-void

    :array_42
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6e
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f2
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11e
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_14a
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_176
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public static synthetic access$000([J)I
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->getLsb([J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100([J[J)V
    .registers 2

    .line 40
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519;->pow2252m3([J[J)V

    return-void
.end method

.method public static synthetic access$200([J)Z
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->isNonZeroVarTime([J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300([J[J)V
    .registers 2

    .line 40
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519;->neg([J[J)V

    return-void
.end method

.method public static add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    const/16 v0, 0xa

    .line 393
    new-array v0, v0, [J

    .line 396
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v3, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 399
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v3, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 402
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 405
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 408
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 411
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, p1}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 414
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v0, p1, p1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 417
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {p2, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 420
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {p2, p1, p2}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 423
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p2}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 426
    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {p0, v0, p0}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    return-void
.end method

.method public static doubleScalarMultVarTime([BLcom/google/crypto/tink/internal/Ed25519$XYZT;[B)Lcom/google/crypto/tink/internal/Ed25519$XYZ;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "pointA",
            "b"
        }
    .end annotation

    const/16 v0, 0x8

    .line 702
    new-array v1, v0, [Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;

    .line 703
    new-instance v2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;

    invoke-direct {v2, p1}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZT;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 704
    new-instance v2, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    invoke-direct {v2}, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;-><init>()V

    .line 705
    invoke-static {v2, p1}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZT(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;)V

    .line 706
    new-instance p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    invoke-direct {p1, v2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    const/4 v3, 0x1

    :goto_1a
    if-ge v3, v0, :cond_32

    add-int/lit8 v4, v3, -0x1

    .line 708
    aget-object v4, v1, v4

    invoke-static {v2, p1, v4}, Lcom/google/crypto/tink/internal/Ed25519;->add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    .line 709
    new-instance v4, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;

    new-instance v5, Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    invoke-direct {v5, v2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    invoke-direct {v4, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZT;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 712
    :cond_32
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->slide([B)[B

    move-result-object p0

    .line 713
    invoke-static {p2}, Lcom/google/crypto/tink/internal/Ed25519;->slide([B)[B

    move-result-object p1

    .line 714
    new-instance p2, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    sget-object v0, Lcom/google/crypto/tink/internal/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    invoke-direct {p2, v0}, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    .line 715
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>()V

    const/16 v2, 0xff

    :goto_48
    if-ltz v2, :cond_56

    .line 718
    aget-byte v3, p0, v2

    if-nez v3, :cond_56

    aget-byte v3, p1, v2

    if-eqz v3, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    :cond_56
    :goto_56
    if-ltz v2, :cond_ab

    .line 723
    new-instance v3, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v3, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    invoke-static {p2, v3}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    .line 724
    aget-byte v3, p0, v2

    if-lez v3, :cond_72

    .line 725
    invoke-static {v0, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v3

    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519;->add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    goto :goto_82

    :cond_72
    if-gez v3, :cond_82

    .line 727
    invoke-static {v0, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v3

    aget-byte v4, p0, v2

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519;->sub(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    .line 729
    :cond_82
    :goto_82
    aget-byte v3, p1, v2

    if-lez v3, :cond_96

    .line 730
    invoke-static {v0, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->B2:[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    aget-byte v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519;->add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    goto :goto_a8

    :cond_96
    if-gez v3, :cond_a8

    .line 732
    invoke-static {v0, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->B2:[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    aget-byte v5, p1, v2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519;->sub(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, -0x1

    goto :goto_56

    .line 736
    :cond_ab
    new-instance p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    return-object p0
.end method

.method public static doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    const/16 v0, 0xa

    .line 487
    new-array v0, v0, [J

    .line 490
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 493
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 496
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 499
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v1, v1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 502
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 505
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 508
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 511
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 514
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v1, v0, p1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 517
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {p1, p1, p0}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    return-void
.end method

.method public static doubleXYZT(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    .line 524
    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    return-void
.end method

.method public static eq(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 0
    xor-int/2addr p0, p1

    not-int p0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x1

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getHashedScalar([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1515
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 1516
    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 1517
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1520
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/16 v0, 0x1f

    .line 1522
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    .line 1524
    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static getLsb([J)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 761
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static init()V
    .registers 2

    .line 1628
    sget-object v0, Lcom/google/crypto/tink/internal/Ed25519Constants;->D:[J

    if-eqz v0, :cond_5

    return-void

    .line 1629
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not initialize Ed25519."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNonZeroVarTime([J)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 745
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 746
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->reduceCoefficients([J)V

    .line 748
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object p0

    .line 749
    array-length v0, p0

    move v2, v3

    :goto_13
    if-ge v2, v0, :cond_1d

    aget-byte v4, p0, v2

    if-eqz v4, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    return v3
.end method

.method public static isSmallerThanGroupOrder([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const/16 v0, 0x1f

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_19

    .line 1582
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 1583
    sget-object v3, Lcom/google/crypto/tink/internal/Ed25519;->GROUP_ORDER:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_16

    if-ge v2, v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public static load3([BI)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 880
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 881
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    .line 882
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static load4([BI)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 890
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x3

    .line 891
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static mulAdd([B[B[B[B)V
    .registers 94
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "a",
            "b",
            "c"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1175
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    const/4 v8, 0x2

    .line 1176
    invoke-static {v0, v8}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v9

    const/4 v11, 0x5

    shr-long/2addr v9, v11

    and-long/2addr v9, v6

    .line 1177
    invoke-static {v0, v11}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v12

    shr-long/2addr v12, v8

    and-long/2addr v12, v6

    const/4 v14, 0x7

    .line 1178
    invoke-static {v0, v14}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v15

    shr-long/2addr v15, v14

    and-long/2addr v15, v6

    move-wide/from16 v17, v6

    const/16 v6, 0xa

    .line 1179
    invoke-static {v0, v6}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v19

    const/4 v7, 0x4

    shr-long v19, v19, v7

    and-long v19, v19, v17

    move/from16 v21, v7

    const/16 v7, 0xd

    .line 1180
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v22

    const/16 v24, 0x1

    shr-long v22, v22, v24

    and-long v22, v22, v17

    const/16 v7, 0xf

    .line 1181
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v26

    const/16 v28, 0x6

    shr-long v26, v26, v28

    and-long v26, v26, v17

    const/16 v7, 0x12

    .line 1182
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v30

    const/16 v32, 0x3

    shr-long v30, v30, v32

    and-long v30, v30, v17

    const/16 v7, 0x15

    .line 1183
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v34

    and-long v34, v34, v17

    const/16 v7, 0x17

    .line 1184
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v37

    shr-long v37, v37, v11

    and-long v37, v37, v17

    const/16 v7, 0x1a

    .line 1185
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v40

    shr-long v40, v40, v8

    and-long v40, v40, v17

    const/16 v7, 0x1c

    .line 1186
    invoke-static {v0, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v42

    shr-long v42, v42, v14

    .line 1187
    invoke-static {v1, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v44

    and-long v44, v44, v17

    .line 1188
    invoke-static {v1, v8}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v46

    shr-long v46, v46, v11

    and-long v46, v46, v17

    .line 1189
    invoke-static {v1, v11}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v48

    shr-long v48, v48, v8

    and-long v48, v48, v17

    .line 1190
    invoke-static {v1, v14}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v14

    and-long v50, v50, v17

    .line 1191
    invoke-static {v1, v6}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v52

    shr-long v52, v52, v21

    and-long v52, v52, v17

    const/16 v0, 0xd

    .line 1192
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v54

    shr-long v54, v54, v24

    and-long v54, v54, v17

    const/16 v0, 0xf

    .line 1193
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v28

    and-long v56, v56, v17

    const/16 v0, 0x12

    .line 1194
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v32

    and-long v58, v58, v17

    const/16 v0, 0x15

    .line 1195
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v60

    and-long v60, v60, v17

    const/16 v0, 0x17

    .line 1196
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v62

    shr-long v62, v62, v11

    and-long v62, v62, v17

    const/16 v0, 0x1a

    .line 1197
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v64

    shr-long v64, v64, v8

    and-long v64, v64, v17

    const/16 v0, 0x1c

    .line 1198
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v0

    shr-long/2addr v0, v14

    .line 1199
    invoke-static {v2, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v66

    and-long v66, v66, v17

    .line 1200
    invoke-static {v2, v8}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v68

    shr-long v68, v68, v11

    and-long v68, v68, v17

    .line 1201
    invoke-static {v2, v11}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v70

    shr-long v70, v70, v8

    and-long v70, v70, v17

    .line 1202
    invoke-static {v2, v14}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v72

    shr-long v72, v72, v14

    and-long v72, v72, v17

    .line 1203
    invoke-static {v2, v6}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v74

    shr-long v74, v74, v21

    and-long v74, v74, v17

    const/16 v7, 0xd

    .line 1204
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v76

    shr-long v76, v76, v24

    and-long v76, v76, v17

    const/16 v7, 0xf

    .line 1205
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v78

    shr-long v78, v78, v28

    and-long v78, v78, v17

    const/16 v7, 0x12

    .line 1206
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v80

    shr-long v80, v80, v32

    and-long v80, v80, v17

    const/16 v7, 0x15

    .line 1207
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v82

    and-long v82, v82, v17

    const/16 v7, 0x17

    .line 1208
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v84

    shr-long v84, v84, v11

    and-long v84, v84, v17

    const/16 v7, 0x1a

    .line 1209
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v86

    shr-long v86, v86, v8

    and-long v17, v86, v17

    const/16 v7, 0x1c

    .line 1210
    invoke-static {v2, v7}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v86

    shr-long v86, v86, v14

    mul-long v88, v4, v44

    add-long v66, v66, v88

    mul-long v88, v4, v46

    add-long v68, v68, v88

    mul-long v88, v9, v44

    add-long v68, v68, v88

    mul-long v88, v4, v48

    add-long v70, v70, v88

    mul-long v88, v9, v46

    add-long v70, v70, v88

    mul-long v88, v12, v44

    add-long v70, v70, v88

    mul-long v88, v4, v50

    add-long v72, v72, v88

    mul-long v88, v9, v48

    add-long v72, v72, v88

    mul-long v88, v12, v46

    add-long v72, v72, v88

    mul-long v88, v15, v44

    add-long v72, v72, v88

    mul-long v88, v4, v52

    add-long v74, v74, v88

    mul-long v88, v9, v50

    add-long v74, v74, v88

    mul-long v88, v12, v48

    add-long v74, v74, v88

    mul-long v88, v15, v46

    add-long v74, v74, v88

    mul-long v88, v19, v44

    add-long v74, v74, v88

    mul-long v88, v4, v54

    add-long v76, v76, v88

    mul-long v88, v9, v52

    add-long v76, v76, v88

    mul-long v88, v12, v50

    add-long v76, v76, v88

    mul-long v88, v15, v48

    add-long v76, v76, v88

    mul-long v88, v19, v46

    add-long v76, v76, v88

    mul-long v88, v22, v44

    add-long v76, v76, v88

    mul-long v88, v4, v56

    add-long v78, v78, v88

    mul-long v88, v9, v54

    add-long v78, v78, v88

    mul-long v88, v12, v52

    add-long v78, v78, v88

    mul-long v88, v15, v50

    add-long v78, v78, v88

    mul-long v88, v19, v48

    add-long v78, v78, v88

    mul-long v88, v22, v46

    add-long v78, v78, v88

    mul-long v88, v26, v44

    add-long v78, v78, v88

    mul-long v88, v4, v58

    add-long v80, v80, v88

    mul-long v88, v9, v56

    add-long v80, v80, v88

    mul-long v88, v12, v54

    add-long v80, v80, v88

    mul-long v88, v15, v52

    add-long v80, v80, v88

    mul-long v88, v19, v50

    add-long v80, v80, v88

    mul-long v88, v22, v48

    add-long v80, v80, v88

    mul-long v88, v26, v46

    add-long v80, v80, v88

    mul-long v88, v30, v44

    add-long v80, v80, v88

    mul-long v88, v4, v60

    add-long v82, v82, v88

    mul-long v88, v9, v58

    add-long v82, v82, v88

    mul-long v88, v12, v56

    add-long v82, v82, v88

    mul-long v88, v15, v54

    add-long v82, v82, v88

    mul-long v88, v19, v52

    add-long v82, v82, v88

    mul-long v88, v22, v50

    add-long v82, v82, v88

    mul-long v88, v26, v48

    add-long v82, v82, v88

    mul-long v88, v30, v46

    add-long v82, v82, v88

    mul-long v88, v34, v44

    add-long v82, v82, v88

    mul-long v88, v4, v62

    add-long v84, v84, v88

    mul-long v88, v9, v60

    add-long v84, v84, v88

    mul-long v88, v12, v58

    add-long v84, v84, v88

    mul-long v88, v15, v56

    add-long v84, v84, v88

    mul-long v88, v19, v54

    add-long v84, v84, v88

    mul-long v88, v22, v52

    add-long v84, v84, v88

    mul-long v88, v26, v50

    add-long v84, v84, v88

    mul-long v88, v30, v48

    add-long v84, v84, v88

    mul-long v88, v34, v46

    add-long v84, v84, v88

    mul-long v88, v37, v44

    add-long v84, v84, v88

    mul-long v88, v4, v64

    add-long v17, v17, v88

    mul-long v88, v9, v62

    add-long v17, v17, v88

    mul-long v88, v12, v60

    add-long v17, v17, v88

    mul-long v88, v15, v58

    add-long v17, v17, v88

    mul-long v88, v19, v56

    add-long v17, v17, v88

    mul-long v88, v22, v54

    add-long v17, v17, v88

    mul-long v88, v26, v52

    add-long v17, v17, v88

    mul-long v88, v30, v50

    add-long v17, v17, v88

    mul-long v88, v34, v48

    add-long v17, v17, v88

    mul-long v88, v37, v46

    add-long v17, v17, v88

    mul-long v88, v40, v44

    add-long v17, v17, v88

    mul-long/2addr v4, v0

    add-long v86, v86, v4

    mul-long v4, v9, v64

    add-long v86, v86, v4

    mul-long v4, v12, v62

    add-long v86, v86, v4

    mul-long v4, v15, v60

    add-long v86, v86, v4

    mul-long v4, v19, v58

    add-long v86, v86, v4

    mul-long v4, v22, v56

    add-long v86, v86, v4

    mul-long v4, v26, v54

    add-long v86, v86, v4

    mul-long v4, v30, v52

    add-long v86, v86, v4

    mul-long v4, v34, v50

    add-long v86, v86, v4

    mul-long v4, v37, v48

    add-long v86, v86, v4

    mul-long v4, v40, v46

    add-long v86, v86, v4

    mul-long v44, v44, v42

    add-long v86, v86, v44

    mul-long/2addr v9, v0

    mul-long v4, v12, v64

    add-long/2addr v9, v4

    mul-long v4, v15, v62

    add-long/2addr v9, v4

    mul-long v4, v19, v60

    add-long/2addr v9, v4

    mul-long v4, v22, v58

    add-long/2addr v9, v4

    mul-long v4, v26, v56

    add-long/2addr v9, v4

    mul-long v4, v30, v54

    add-long/2addr v9, v4

    mul-long v4, v34, v52

    add-long/2addr v9, v4

    mul-long v4, v37, v50

    add-long/2addr v9, v4

    mul-long v4, v40, v48

    add-long/2addr v9, v4

    mul-long v46, v46, v42

    add-long v9, v9, v46

    mul-long/2addr v12, v0

    mul-long v4, v15, v64

    add-long/2addr v12, v4

    mul-long v4, v19, v62

    add-long/2addr v12, v4

    mul-long v4, v22, v60

    add-long/2addr v12, v4

    mul-long v4, v26, v58

    add-long/2addr v12, v4

    mul-long v4, v30, v56

    add-long/2addr v12, v4

    mul-long v4, v34, v54

    add-long/2addr v12, v4

    mul-long v4, v37, v52

    add-long/2addr v12, v4

    mul-long v4, v40, v50

    add-long/2addr v12, v4

    mul-long v48, v48, v42

    add-long v12, v12, v48

    mul-long/2addr v15, v0

    mul-long v4, v19, v64

    add-long/2addr v15, v4

    mul-long v4, v22, v62

    add-long/2addr v15, v4

    mul-long v4, v26, v60

    add-long/2addr v15, v4

    mul-long v4, v30, v58

    add-long/2addr v15, v4

    mul-long v4, v34, v56

    add-long/2addr v15, v4

    mul-long v4, v37, v54

    add-long/2addr v15, v4

    mul-long v4, v40, v52

    add-long/2addr v15, v4

    mul-long v50, v50, v42

    add-long v15, v15, v50

    mul-long v19, v19, v0

    mul-long v4, v22, v64

    add-long v19, v19, v4

    mul-long v4, v26, v62

    add-long v19, v19, v4

    mul-long v4, v30, v60

    add-long v19, v19, v4

    mul-long v4, v34, v58

    add-long v19, v19, v4

    mul-long v4, v37, v56

    add-long v19, v19, v4

    mul-long v4, v40, v54

    add-long v19, v19, v4

    mul-long v52, v52, v42

    add-long v19, v19, v52

    mul-long v22, v22, v0

    mul-long v4, v26, v64

    add-long v22, v22, v4

    mul-long v4, v30, v62

    add-long v22, v22, v4

    mul-long v4, v34, v60

    add-long v22, v22, v4

    mul-long v4, v37, v58

    add-long v22, v22, v4

    mul-long v4, v40, v56

    add-long v22, v22, v4

    mul-long v54, v54, v42

    add-long v22, v22, v54

    mul-long v26, v26, v0

    mul-long v4, v30, v64

    add-long v26, v26, v4

    mul-long v4, v34, v62

    add-long v26, v26, v4

    mul-long v4, v37, v60

    add-long v26, v26, v4

    mul-long v4, v40, v58

    add-long v26, v26, v4

    mul-long v56, v56, v42

    add-long v26, v26, v56

    mul-long v30, v30, v0

    mul-long v4, v34, v64

    add-long v30, v30, v4

    mul-long v4, v37, v62

    add-long v30, v30, v4

    mul-long v4, v40, v60

    add-long v30, v30, v4

    mul-long v58, v58, v42

    add-long v30, v30, v58

    mul-long v34, v34, v0

    mul-long v4, v37, v64

    add-long v34, v34, v4

    mul-long v4, v40, v62

    add-long v34, v34, v4

    mul-long v60, v60, v42

    add-long v34, v34, v60

    mul-long v37, v37, v0

    mul-long v4, v40, v64

    add-long v37, v37, v4

    mul-long v62, v62, v42

    add-long v37, v37, v62

    mul-long v40, v40, v0

    mul-long v64, v64, v42

    add-long v40, v40, v64

    mul-long v42, v42, v0

    const-wide/32 v0, 0x100000

    add-long v4, v66, v0

    const/16 v36, 0x15

    shr-long v4, v4, v36

    add-long v68, v68, v4

    shl-long v4, v4, v36

    sub-long v66, v66, v4

    add-long v4, v70, v0

    shr-long v4, v4, v36

    add-long v72, v72, v4

    shl-long v4, v4, v36

    sub-long v70, v70, v4

    add-long v4, v74, v0

    shr-long v4, v4, v36

    add-long v76, v76, v4

    shl-long v4, v4, v36

    sub-long v74, v74, v4

    add-long v4, v78, v0

    shr-long v4, v4, v36

    add-long v80, v80, v4

    shl-long v4, v4, v36

    sub-long v78, v78, v4

    add-long v4, v82, v0

    shr-long v4, v4, v36

    add-long v84, v84, v4

    shl-long v4, v4, v36

    sub-long v82, v82, v4

    add-long v4, v17, v0

    shr-long v4, v4, v36

    add-long v86, v86, v4

    shl-long v4, v4, v36

    sub-long v17, v17, v4

    add-long v4, v9, v0

    shr-long v4, v4, v36

    add-long/2addr v12, v4

    shl-long v4, v4, v36

    sub-long/2addr v9, v4

    add-long v4, v15, v0

    shr-long v4, v4, v36

    add-long v19, v19, v4

    shl-long v4, v4, v36

    sub-long/2addr v15, v4

    add-long v4, v22, v0

    shr-long v4, v4, v36

    add-long v26, v26, v4

    shl-long v4, v4, v36

    sub-long v22, v22, v4

    add-long v4, v30, v0

    shr-long v4, v4, v36

    add-long v34, v34, v4

    shl-long v4, v4, v36

    sub-long v30, v30, v4

    add-long v4, v37, v0

    shr-long v4, v4, v36

    add-long v40, v40, v4

    shl-long v4, v4, v36

    sub-long v37, v37, v4

    add-long v4, v42, v0

    shr-long v4, v4, v36

    shl-long v44, v4, v36

    sub-long v42, v42, v44

    add-long v44, v68, v0

    shr-long v44, v44, v36

    add-long v70, v70, v44

    shl-long v44, v44, v36

    sub-long v68, v68, v44

    add-long v44, v72, v0

    shr-long v44, v44, v36

    add-long v74, v74, v44

    shl-long v44, v44, v36

    sub-long v72, v72, v44

    add-long v44, v76, v0

    shr-long v44, v44, v36

    add-long v78, v78, v44

    shl-long v44, v44, v36

    sub-long v76, v76, v44

    add-long v44, v80, v0

    shr-long v44, v44, v36

    add-long v82, v82, v44

    shl-long v44, v44, v36

    sub-long v80, v80, v44

    add-long v44, v84, v0

    shr-long v44, v44, v36

    add-long v17, v17, v44

    shl-long v44, v44, v36

    sub-long v84, v84, v44

    add-long v44, v86, v0

    shr-long v44, v44, v36

    add-long v9, v9, v44

    shl-long v44, v44, v36

    sub-long v86, v86, v44

    add-long v44, v12, v0

    shr-long v44, v44, v36

    add-long v15, v15, v44

    shl-long v44, v44, v36

    sub-long v12, v12, v44

    add-long v44, v19, v0

    shr-long v44, v44, v36

    add-long v22, v22, v44

    shl-long v44, v44, v36

    sub-long v19, v19, v44

    add-long v44, v26, v0

    shr-long v44, v44, v36

    add-long v30, v30, v44

    shl-long v44, v44, v36

    sub-long v26, v26, v44

    add-long v44, v34, v0

    shr-long v44, v44, v36

    add-long v37, v37, v44

    shl-long v44, v44, v36

    sub-long v34, v34, v44

    add-long v44, v40, v0

    shr-long v44, v44, v36

    add-long v42, v42, v44

    shl-long v44, v44, v36

    sub-long v40, v40, v44

    const-wide/32 v44, 0xa2c13

    mul-long v46, v4, v44

    add-long v86, v86, v46

    const-wide/32 v46, 0x72d18

    mul-long v48, v4, v46

    add-long v9, v9, v48

    const-wide/32 v48, 0x9fb67

    mul-long v50, v4, v48

    add-long v12, v12, v50

    const-wide/32 v50, 0xf39ad

    mul-long v52, v4, v50

    sub-long v15, v15, v52

    const-wide/32 v52, 0x215d1

    mul-long v54, v4, v52

    add-long v19, v19, v54

    const-wide/32 v54, 0xa6f7d

    mul-long v4, v4, v54

    sub-long v22, v22, v4

    mul-long v4, v42, v44

    add-long v17, v17, v4

    mul-long v4, v42, v46

    add-long v86, v86, v4

    mul-long v4, v42, v48

    add-long/2addr v9, v4

    mul-long v4, v42, v50

    sub-long/2addr v12, v4

    mul-long v4, v42, v52

    add-long/2addr v15, v4

    mul-long v42, v42, v54

    sub-long v19, v19, v42

    mul-long v4, v40, v44

    add-long v84, v84, v4

    mul-long v4, v40, v46

    add-long v17, v17, v4

    mul-long v4, v40, v48

    add-long v86, v86, v4

    mul-long v4, v40, v50

    sub-long/2addr v9, v4

    mul-long v4, v40, v52

    add-long/2addr v12, v4

    mul-long v40, v40, v54

    sub-long v15, v15, v40

    mul-long v4, v37, v44

    add-long v82, v82, v4

    mul-long v4, v37, v46

    add-long v84, v84, v4

    mul-long v4, v37, v48

    add-long v17, v17, v4

    mul-long v4, v37, v50

    sub-long v86, v86, v4

    mul-long v4, v37, v52

    add-long/2addr v9, v4

    mul-long v37, v37, v54

    sub-long v12, v12, v37

    mul-long v4, v34, v44

    add-long v80, v80, v4

    mul-long v4, v34, v46

    add-long v82, v82, v4

    mul-long v4, v34, v48

    add-long v84, v84, v4

    mul-long v4, v34, v50

    sub-long v17, v17, v4

    mul-long v4, v34, v52

    add-long v86, v86, v4

    mul-long v34, v34, v54

    sub-long v9, v9, v34

    mul-long v4, v30, v44

    add-long v78, v78, v4

    mul-long v4, v30, v46

    add-long v80, v80, v4

    mul-long v4, v30, v48

    add-long v82, v82, v4

    mul-long v4, v30, v50

    sub-long v84, v84, v4

    mul-long v4, v30, v52

    add-long v17, v17, v4

    mul-long v30, v30, v54

    sub-long v86, v86, v30

    add-long v4, v78, v0

    const/16 v36, 0x15

    shr-long v4, v4, v36

    add-long v80, v80, v4

    shl-long v4, v4, v36

    sub-long v78, v78, v4

    add-long v4, v82, v0

    shr-long v4, v4, v36

    add-long v84, v84, v4

    shl-long v4, v4, v36

    sub-long v82, v82, v4

    add-long v4, v17, v0

    shr-long v4, v4, v36

    add-long v86, v86, v4

    shl-long v4, v4, v36

    sub-long v17, v17, v4

    add-long v4, v9, v0

    shr-long v4, v4, v36

    add-long/2addr v12, v4

    shl-long v4, v4, v36

    sub-long/2addr v9, v4

    add-long v4, v15, v0

    shr-long v4, v4, v36

    add-long v19, v19, v4

    shl-long v4, v4, v36

    sub-long/2addr v15, v4

    add-long v4, v22, v0

    shr-long v4, v4, v36

    add-long v26, v26, v4

    shl-long v4, v4, v36

    sub-long v22, v22, v4

    add-long v4, v80, v0

    shr-long v4, v4, v36

    add-long v82, v82, v4

    shl-long v4, v4, v36

    sub-long v80, v80, v4

    add-long v4, v84, v0

    shr-long v4, v4, v36

    add-long v17, v17, v4

    shl-long v4, v4, v36

    sub-long v84, v84, v4

    add-long v4, v86, v0

    shr-long v4, v4, v36

    add-long/2addr v9, v4

    shl-long v4, v4, v36

    sub-long v86, v86, v4

    add-long v4, v12, v0

    shr-long v4, v4, v36

    add-long/2addr v15, v4

    shl-long v4, v4, v36

    sub-long/2addr v12, v4

    add-long v4, v19, v0

    shr-long v4, v4, v36

    add-long v22, v22, v4

    shl-long v4, v4, v36

    sub-long v19, v19, v4

    mul-long v4, v26, v44

    add-long v76, v76, v4

    mul-long v4, v26, v46

    add-long v78, v78, v4

    mul-long v4, v26, v48

    add-long v80, v80, v4

    mul-long v4, v26, v50

    sub-long v82, v82, v4

    mul-long v4, v26, v52

    add-long v84, v84, v4

    mul-long v26, v26, v54

    sub-long v17, v17, v26

    mul-long v4, v22, v44

    add-long v74, v74, v4

    mul-long v4, v22, v46

    add-long v76, v76, v4

    mul-long v4, v22, v48

    add-long v78, v78, v4

    mul-long v4, v22, v50

    sub-long v80, v80, v4

    mul-long v4, v22, v52

    add-long v82, v82, v4

    mul-long v22, v22, v54

    sub-long v84, v84, v22

    mul-long v4, v19, v44

    add-long v72, v72, v4

    mul-long v4, v19, v46

    add-long v74, v74, v4

    mul-long v4, v19, v48

    add-long v76, v76, v4

    mul-long v4, v19, v50

    sub-long v78, v78, v4

    mul-long v4, v19, v52

    add-long v80, v80, v4

    mul-long v19, v19, v54

    sub-long v82, v82, v19

    mul-long v4, v15, v44

    add-long v70, v70, v4

    mul-long v4, v15, v46

    add-long v72, v72, v4

    mul-long v4, v15, v48

    add-long v74, v74, v4

    mul-long v4, v15, v50

    sub-long v76, v76, v4

    mul-long v4, v15, v52

    add-long v78, v78, v4

    mul-long v15, v15, v54

    sub-long v80, v80, v15

    mul-long v4, v12, v44

    add-long v68, v68, v4

    mul-long v4, v12, v46

    add-long v70, v70, v4

    mul-long v4, v12, v48

    add-long v72, v72, v4

    mul-long v4, v12, v50

    sub-long v74, v74, v4

    mul-long v4, v12, v52

    add-long v76, v76, v4

    mul-long v12, v12, v54

    sub-long v78, v78, v12

    mul-long v4, v9, v44

    add-long v66, v66, v4

    mul-long v4, v9, v46

    add-long v68, v68, v4

    mul-long v4, v9, v48

    add-long v70, v70, v4

    mul-long v4, v9, v50

    sub-long v72, v72, v4

    mul-long v4, v9, v52

    add-long v74, v74, v4

    mul-long v9, v9, v54

    sub-long v76, v76, v9

    add-long v4, v66, v0

    const/16 v36, 0x15

    shr-long v4, v4, v36

    add-long v68, v68, v4

    shl-long v4, v4, v36

    sub-long v66, v66, v4

    add-long v4, v70, v0

    shr-long v4, v4, v36

    add-long v72, v72, v4

    shl-long v4, v4, v36

    sub-long v70, v70, v4

    add-long v4, v74, v0

    shr-long v4, v4, v36

    add-long v76, v76, v4

    shl-long v4, v4, v36

    sub-long v74, v74, v4

    add-long v4, v78, v0

    shr-long v4, v4, v36

    add-long v80, v80, v4

    shl-long v4, v4, v36

    sub-long v78, v78, v4

    add-long v4, v82, v0

    shr-long v4, v4, v36

    add-long v84, v84, v4

    shl-long v4, v4, v36

    sub-long v82, v82, v4

    add-long v4, v17, v0

    shr-long v4, v4, v36

    add-long v86, v86, v4

    shl-long v4, v4, v36

    sub-long v17, v17, v4

    add-long v4, v68, v0

    shr-long v4, v4, v36

    add-long v70, v70, v4

    shl-long v4, v4, v36

    sub-long v68, v68, v4

    add-long v4, v72, v0

    shr-long v4, v4, v36

    add-long v74, v74, v4

    shl-long v4, v4, v36

    sub-long v72, v72, v4

    add-long v4, v76, v0

    shr-long v4, v4, v36

    add-long v78, v78, v4

    shl-long v4, v4, v36

    sub-long v76, v76, v4

    add-long v4, v80, v0

    shr-long v4, v4, v36

    add-long v82, v82, v4

    shl-long v4, v4, v36

    sub-long v80, v80, v4

    add-long v4, v84, v0

    shr-long v4, v4, v36

    add-long v17, v17, v4

    shl-long v4, v4, v36

    sub-long v84, v84, v4

    add-long v0, v86, v0

    shr-long v0, v0, v36

    shl-long v4, v0, v36

    sub-long v86, v86, v4

    mul-long v4, v0, v44

    add-long v66, v66, v4

    mul-long v4, v0, v46

    add-long v68, v68, v4

    mul-long v4, v0, v48

    add-long v70, v70, v4

    mul-long v4, v0, v50

    sub-long v72, v72, v4

    mul-long v4, v0, v52

    add-long v74, v74, v4

    mul-long v0, v0, v54

    sub-long v76, v76, v0

    const/16 v36, 0x15

    shr-long v0, v66, v36

    add-long v68, v68, v0

    shl-long v0, v0, v36

    sub-long v66, v66, v0

    shr-long v0, v68, v36

    add-long v70, v70, v0

    shl-long v0, v0, v36

    sub-long v68, v68, v0

    shr-long v0, v70, v36

    add-long v72, v72, v0

    shl-long v0, v0, v36

    sub-long v70, v70, v0

    shr-long v0, v72, v36

    add-long v74, v74, v0

    shl-long v0, v0, v36

    sub-long v72, v72, v0

    shr-long v0, v74, v36

    add-long v76, v76, v0

    shl-long v0, v0, v36

    sub-long v74, v74, v0

    shr-long v0, v76, v36

    add-long v78, v78, v0

    shl-long v0, v0, v36

    sub-long v76, v76, v0

    shr-long v0, v78, v36

    add-long v80, v80, v0

    shl-long v0, v0, v36

    sub-long v78, v78, v0

    shr-long v0, v80, v36

    add-long v82, v82, v0

    shl-long v0, v0, v36

    sub-long v80, v80, v0

    shr-long v0, v82, v36

    add-long v84, v84, v0

    shl-long v0, v0, v36

    sub-long v82, v82, v0

    shr-long v0, v84, v36

    add-long v17, v17, v0

    shl-long v0, v0, v36

    sub-long v84, v84, v0

    shr-long v0, v17, v36

    add-long v86, v86, v0

    shl-long v0, v0, v36

    sub-long v17, v17, v0

    shr-long v0, v86, v36

    shl-long v4, v0, v36

    sub-long v86, v86, v4

    mul-long v44, v44, v0

    add-long v66, v66, v44

    mul-long v46, v46, v0

    add-long v68, v68, v46

    mul-long v48, v48, v0

    add-long v70, v70, v48

    mul-long v50, v50, v0

    sub-long v72, v72, v50

    mul-long v52, v52, v0

    add-long v74, v74, v52

    mul-long v0, v0, v54

    sub-long v76, v76, v0

    const/16 v36, 0x15

    shr-long v0, v66, v36

    add-long v68, v68, v0

    shl-long v0, v0, v36

    sub-long v0, v66, v0

    shr-long v4, v68, v36

    add-long v70, v70, v4

    shl-long v4, v4, v36

    sub-long v68, v68, v4

    shr-long v4, v70, v36

    add-long v72, v72, v4

    shl-long v4, v4, v36

    sub-long v70, v70, v4

    shr-long v4, v72, v36

    add-long v74, v74, v4

    shl-long v4, v4, v36

    sub-long v72, v72, v4

    shr-long v4, v74, v36

    add-long v76, v76, v4

    shl-long v4, v4, v36

    sub-long v74, v74, v4

    shr-long v4, v76, v36

    add-long v78, v78, v4

    shl-long v4, v4, v36

    sub-long v76, v76, v4

    shr-long v4, v78, v36

    add-long v80, v80, v4

    shl-long v4, v4, v36

    sub-long v78, v78, v4

    shr-long v4, v80, v36

    add-long v82, v82, v4

    shl-long v4, v4, v36

    sub-long v80, v80, v4

    shr-long v4, v82, v36

    add-long v84, v84, v4

    shl-long v4, v4, v36

    sub-long v4, v82, v4

    shr-long v9, v84, v36

    add-long v17, v17, v9

    shl-long v9, v9, v36

    sub-long v84, v84, v9

    shr-long v9, v17, v36

    add-long v86, v86, v9

    shl-long v9, v9, v36

    sub-long v17, v17, v9

    long-to-int v2, v0

    int-to-byte v2, v2

    .line 1480
    aput-byte v2, p0, v3

    const/16 v2, 0x8

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1481
    aput-byte v2, p0, v24

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    shl-long v2, v68, v11

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1482
    aput-byte v0, p0, v8

    shr-long v0, v68, v32

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1483
    aput-byte v0, p0, v32

    const/16 v0, 0xb

    shr-long v0, v68, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1484
    aput-byte v0, p0, v21

    const/16 v0, 0x13

    shr-long v0, v68, v0

    shl-long v2, v70, v8

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1485
    aput-byte v0, p0, v11

    shr-long v0, v70, v28

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1486
    aput-byte v0, p0, v28

    const/16 v0, 0xe

    shr-long v0, v70, v0

    shl-long v2, v72, v14

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1487
    aput-byte v0, p0, v14

    shr-long v0, v72, v24

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x8

    .line 1488
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v72, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x9

    .line 1489
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v72, v0

    shl-long v2, v74, v21

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1490
    aput-byte v0, p0, v6

    shr-long v0, v74, v21

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 1491
    aput-byte v0, p0, v1

    const/16 v0, 0xc

    shr-long v0, v74, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    .line 1492
    aput-byte v0, p0, v1

    const/16 v0, 0x14

    shr-long v0, v74, v0

    shl-long v2, v76, v24

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v25, 0xd

    .line 1493
    aput-byte v0, p0, v25

    shr-long v0, v76, v14

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xe

    .line 1494
    aput-byte v0, p0, v1

    const/16 v29, 0xf

    shr-long v0, v76, v29

    shl-long v2, v78, v28

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1495
    aput-byte v0, p0, v29

    shr-long v0, v78, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    .line 1496
    aput-byte v0, p0, v1

    shr-long v0, v78, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x11

    .line 1497
    aput-byte v0, p0, v1

    const/16 v33, 0x12

    shr-long v0, v78, v33

    shl-long v2, v80, v32

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1498
    aput-byte v0, p0, v33

    shr-long v0, v80, v11

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x13

    .line 1499
    aput-byte v0, p0, v1

    const/16 v25, 0xd

    shr-long v0, v80, v25

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x14

    .line 1500
    aput-byte v0, p0, v1

    long-to-int v0, v4

    int-to-byte v0, v0

    const/16 v36, 0x15

    .line 1501
    aput-byte v0, p0, v36

    const/16 v0, 0x8

    shr-long v0, v4, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x16

    .line 1502
    aput-byte v0, p0, v1

    const/16 v0, 0x10

    shr-long v0, v4, v0

    shl-long v2, v84, v11

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v39, 0x17

    .line 1503
    aput-byte v0, p0, v39

    shr-long v0, v84, v32

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x18

    .line 1504
    aput-byte v0, p0, v1

    const/16 v0, 0xb

    shr-long v0, v84, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x19

    .line 1505
    aput-byte v0, p0, v1

    const/16 v0, 0x13

    shr-long v0, v84, v0

    shl-long v2, v17, v8

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    .line 1506
    aput-byte v0, p0, v1

    shr-long v0, v17, v28

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    .line 1507
    aput-byte v0, p0, v1

    const/16 v0, 0xe

    shr-long v0, v17, v0

    shl-long v2, v86, v14

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    .line 1508
    aput-byte v0, p0, v1

    shr-long v0, v86, v24

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    .line 1509
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v86, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    .line 1510
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v86, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    .line 1511
    aput-byte v0, p0, v1

    return-void
.end method

.method public static neg([J[J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    .line 768
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 769
    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public static pow2252m3([J[J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/16 v0, 0xa

    .line 777
    new-array v1, v0, [J

    .line 778
    new-array v2, v0, [J

    .line 779
    new-array v3, v0, [J

    .line 782
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 785
    invoke-static {v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 787
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 791
    invoke-static {v2, p1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 794
    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 797
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 800
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 803
    invoke-static {v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    const/4 v4, 0x1

    move v5, v4

    :goto_22
    const/4 v6, 0x5

    if-ge v5, v6, :cond_2b

    .line 805
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 809
    :cond_2b
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 812
    invoke-static {v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v5, v4

    :goto_32
    if-ge v5, v0, :cond_3a

    .line 814
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 818
    :cond_3a
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 821
    invoke-static {v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v5, v4

    :goto_41
    const/16 v6, 0x14

    if-ge v5, v6, :cond_4b

    .line 823
    invoke-static {v3, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 827
    :cond_4b
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 830
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v5, v4

    :goto_52
    if-ge v5, v0, :cond_5a

    .line 832
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 836
    :cond_5a
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 839
    invoke-static {v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v0, v4

    :goto_61
    const/16 v5, 0x32

    if-ge v0, v5, :cond_6b

    .line 841
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 845
    :cond_6b
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 848
    invoke-static {v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v0, v4

    :goto_72
    const/16 v6, 0x64

    if-ge v0, v6, :cond_7c

    .line 850
    invoke-static {v3, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 854
    :cond_7c
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 857
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    :goto_82
    if-ge v4, v5, :cond_8a

    .line 859
    invoke-static {v2, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 863
    :cond_8a
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 866
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 868
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 872
    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-void
.end method

.method public static reduce([B)V
    .registers 75
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 912
    invoke-static {v0, v1}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    const/4 v5, 0x2

    .line 913
    invoke-static {v0, v5}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    and-long/2addr v6, v3

    .line 914
    invoke-static {v0, v8}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v9

    shr-long/2addr v9, v5

    and-long/2addr v9, v3

    const/4 v11, 0x7

    .line 915
    invoke-static {v0, v11}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v12

    shr-long/2addr v12, v11

    and-long/2addr v12, v3

    const/16 v14, 0xa

    .line 916
    invoke-static {v0, v14}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v15

    const/16 v17, 0x4

    shr-long v15, v15, v17

    and-long/2addr v15, v3

    move-wide/from16 v18, v3

    const/16 v3, 0xd

    .line 917
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v20

    const/4 v4, 0x1

    shr-long v20, v20, v4

    and-long v20, v20, v18

    move/from16 v22, v3

    const/16 v3, 0xf

    .line 918
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v23

    const/16 v25, 0x6

    shr-long v23, v23, v25

    and-long v23, v23, v18

    move/from16 v26, v3

    const/16 v3, 0x12

    .line 919
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v27

    const/16 v29, 0x3

    shr-long v27, v27, v29

    and-long v27, v27, v18

    move/from16 v30, v3

    const/16 v3, 0x15

    .line 920
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v31

    and-long v31, v31, v18

    move/from16 v33, v3

    const/16 v3, 0x17

    .line 921
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v34

    shr-long v34, v34, v8

    and-long v34, v34, v18

    const/16 v3, 0x1a

    .line 922
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v36

    shr-long v36, v36, v5

    and-long v36, v36, v18

    const/16 v3, 0x1c

    .line 923
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v38

    shr-long v38, v38, v11

    and-long v38, v38, v18

    const/16 v3, 0x1f

    .line 924
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v40

    shr-long v40, v40, v17

    and-long v40, v40, v18

    const/16 v3, 0x22

    .line 925
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v42

    shr-long v42, v42, v4

    and-long v42, v42, v18

    const/16 v3, 0x24

    .line 926
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v44

    shr-long v44, v44, v25

    and-long v44, v44, v18

    const/16 v3, 0x27

    .line 927
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v46

    shr-long v46, v46, v29

    and-long v46, v46, v18

    const/16 v3, 0x2a

    .line 928
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v48

    and-long v48, v48, v18

    const/16 v3, 0x2c

    .line 929
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v8

    and-long v50, v50, v18

    const/16 v3, 0x2f

    .line 930
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v52

    shr-long v52, v52, v5

    and-long v52, v52, v18

    const/16 v3, 0x31

    .line 931
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v54

    shr-long v54, v54, v11

    and-long v54, v54, v18

    const/16 v3, 0x34

    .line 932
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v17

    and-long v56, v56, v18

    const/16 v3, 0x37

    .line 933
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v4

    and-long v58, v58, v18

    const/16 v3, 0x39

    .line 934
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v25

    and-long v18, v60, v18

    const/16 v3, 0x3c

    .line 935
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v29

    const-wide/32 v62, 0xa2c13

    mul-long v64, v60, v62

    add-long v38, v38, v64

    const-wide/32 v64, 0x72d18

    mul-long v66, v60, v64

    add-long v40, v40, v66

    const-wide/32 v66, 0x9fb67

    mul-long v68, v60, v66

    add-long v42, v42, v68

    const-wide/32 v68, 0xf39ad

    mul-long v70, v60, v68

    sub-long v44, v44, v70

    const-wide/32 v70, 0x215d1

    mul-long v72, v60, v70

    add-long v46, v46, v72

    const-wide/32 v72, 0xa6f7d

    mul-long v60, v60, v72

    sub-long v48, v48, v60

    mul-long v60, v18, v62

    add-long v36, v36, v60

    mul-long v60, v18, v64

    add-long v38, v38, v60

    mul-long v60, v18, v66

    add-long v40, v40, v60

    mul-long v60, v18, v68

    sub-long v42, v42, v60

    mul-long v60, v18, v70

    add-long v44, v44, v60

    mul-long v18, v18, v72

    sub-long v46, v46, v18

    mul-long v18, v58, v62

    add-long v34, v34, v18

    mul-long v18, v58, v64

    add-long v36, v36, v18

    mul-long v18, v58, v66

    add-long v38, v38, v18

    mul-long v18, v58, v68

    sub-long v40, v40, v18

    mul-long v18, v58, v70

    add-long v42, v42, v18

    mul-long v58, v58, v72

    sub-long v44, v44, v58

    mul-long v18, v56, v62

    add-long v31, v31, v18

    mul-long v18, v56, v64

    add-long v34, v34, v18

    mul-long v18, v56, v66

    add-long v36, v36, v18

    mul-long v18, v56, v68

    sub-long v38, v38, v18

    mul-long v18, v56, v70

    add-long v40, v40, v18

    mul-long v56, v56, v72

    sub-long v42, v42, v56

    mul-long v18, v54, v62

    add-long v27, v27, v18

    mul-long v18, v54, v64

    add-long v31, v31, v18

    mul-long v18, v54, v66

    add-long v34, v34, v18

    mul-long v18, v54, v68

    sub-long v36, v36, v18

    mul-long v18, v54, v70

    add-long v38, v38, v18

    mul-long v54, v54, v72

    sub-long v40, v40, v54

    mul-long v18, v52, v62

    add-long v23, v23, v18

    mul-long v18, v52, v64

    add-long v27, v27, v18

    mul-long v18, v52, v66

    add-long v31, v31, v18

    mul-long v18, v52, v68

    sub-long v34, v34, v18

    mul-long v18, v52, v70

    add-long v36, v36, v18

    mul-long v52, v52, v72

    sub-long v38, v38, v52

    const-wide/32 v18, 0x100000

    add-long v52, v23, v18

    shr-long v52, v52, v33

    add-long v27, v27, v52

    shl-long v52, v52, v33

    sub-long v23, v23, v52

    add-long v52, v31, v18

    shr-long v52, v52, v33

    add-long v34, v34, v52

    shl-long v52, v52, v33

    sub-long v31, v31, v52

    add-long v52, v36, v18

    shr-long v52, v52, v33

    add-long v38, v38, v52

    shl-long v52, v52, v33

    sub-long v36, v36, v52

    add-long v52, v40, v18

    shr-long v52, v52, v33

    add-long v42, v42, v52

    shl-long v52, v52, v33

    sub-long v40, v40, v52

    add-long v52, v44, v18

    shr-long v52, v52, v33

    add-long v46, v46, v52

    shl-long v52, v52, v33

    sub-long v44, v44, v52

    add-long v52, v48, v18

    shr-long v52, v52, v33

    add-long v50, v50, v52

    shl-long v52, v52, v33

    sub-long v48, v48, v52

    add-long v52, v27, v18

    shr-long v52, v52, v33

    add-long v31, v31, v52

    shl-long v52, v52, v33

    sub-long v27, v27, v52

    add-long v52, v34, v18

    shr-long v52, v52, v33

    add-long v36, v36, v52

    shl-long v52, v52, v33

    sub-long v34, v34, v52

    add-long v52, v38, v18

    shr-long v52, v52, v33

    add-long v40, v40, v52

    shl-long v52, v52, v33

    sub-long v38, v38, v52

    add-long v52, v42, v18

    shr-long v52, v52, v33

    add-long v44, v44, v52

    shl-long v52, v52, v33

    sub-long v42, v42, v52

    add-long v52, v46, v18

    shr-long v52, v52, v33

    add-long v48, v48, v52

    shl-long v52, v52, v33

    sub-long v46, v46, v52

    mul-long v52, v50, v62

    add-long v20, v20, v52

    mul-long v52, v50, v64

    add-long v23, v23, v52

    mul-long v52, v50, v66

    add-long v27, v27, v52

    mul-long v52, v50, v68

    sub-long v31, v31, v52

    mul-long v52, v50, v70

    add-long v34, v34, v52

    mul-long v50, v50, v72

    sub-long v36, v36, v50

    mul-long v50, v48, v62

    add-long v15, v15, v50

    mul-long v50, v48, v64

    add-long v20, v20, v50

    mul-long v50, v48, v66

    add-long v23, v23, v50

    mul-long v50, v48, v68

    sub-long v27, v27, v50

    mul-long v50, v48, v70

    add-long v31, v31, v50

    mul-long v48, v48, v72

    sub-long v34, v34, v48

    mul-long v48, v46, v62

    add-long v12, v12, v48

    mul-long v48, v46, v64

    add-long v15, v15, v48

    mul-long v48, v46, v66

    add-long v20, v20, v48

    mul-long v48, v46, v68

    sub-long v23, v23, v48

    mul-long v48, v46, v70

    add-long v27, v27, v48

    mul-long v46, v46, v72

    sub-long v31, v31, v46

    mul-long v46, v44, v62

    add-long v9, v9, v46

    mul-long v46, v44, v64

    add-long v12, v12, v46

    mul-long v46, v44, v66

    add-long v15, v15, v46

    mul-long v46, v44, v68

    sub-long v20, v20, v46

    mul-long v46, v44, v70

    add-long v23, v23, v46

    mul-long v44, v44, v72

    sub-long v27, v27, v44

    mul-long v44, v42, v62

    add-long v6, v6, v44

    mul-long v44, v42, v64

    add-long v9, v9, v44

    mul-long v44, v42, v66

    add-long v12, v12, v44

    mul-long v44, v42, v68

    sub-long v15, v15, v44

    mul-long v44, v42, v70

    add-long v20, v20, v44

    mul-long v42, v42, v72

    sub-long v23, v23, v42

    mul-long v42, v40, v62

    add-long v1, v1, v42

    mul-long v42, v40, v64

    add-long v6, v6, v42

    mul-long v42, v40, v66

    add-long v9, v9, v42

    mul-long v42, v40, v68

    sub-long v12, v12, v42

    mul-long v42, v40, v70

    add-long v15, v15, v42

    mul-long v40, v40, v72

    sub-long v20, v20, v40

    add-long v40, v1, v18

    shr-long v40, v40, v33

    add-long v6, v6, v40

    shl-long v40, v40, v33

    sub-long v1, v1, v40

    add-long v40, v9, v18

    shr-long v40, v40, v33

    add-long v12, v12, v40

    shl-long v40, v40, v33

    sub-long v9, v9, v40

    add-long v40, v15, v18

    shr-long v40, v40, v33

    add-long v20, v20, v40

    shl-long v40, v40, v33

    sub-long v15, v15, v40

    add-long v40, v23, v18

    shr-long v40, v40, v33

    add-long v27, v27, v40

    shl-long v40, v40, v33

    sub-long v23, v23, v40

    add-long v40, v31, v18

    shr-long v40, v40, v33

    add-long v34, v34, v40

    shl-long v40, v40, v33

    sub-long v31, v31, v40

    add-long v40, v36, v18

    shr-long v40, v40, v33

    add-long v38, v38, v40

    shl-long v40, v40, v33

    sub-long v36, v36, v40

    add-long v40, v6, v18

    shr-long v40, v40, v33

    add-long v9, v9, v40

    shl-long v40, v40, v33

    sub-long v6, v6, v40

    add-long v40, v12, v18

    shr-long v40, v40, v33

    add-long v15, v15, v40

    shl-long v40, v40, v33

    sub-long v12, v12, v40

    add-long v40, v20, v18

    shr-long v40, v40, v33

    add-long v23, v23, v40

    shl-long v40, v40, v33

    sub-long v20, v20, v40

    add-long v40, v27, v18

    shr-long v40, v40, v33

    add-long v31, v31, v40

    shl-long v40, v40, v33

    sub-long v27, v27, v40

    add-long v40, v34, v18

    shr-long v40, v40, v33

    add-long v36, v36, v40

    shl-long v40, v40, v33

    sub-long v34, v34, v40

    add-long v18, v38, v18

    shr-long v18, v18, v33

    shl-long v40, v18, v33

    sub-long v38, v38, v40

    mul-long v40, v18, v62

    add-long v1, v1, v40

    mul-long v40, v18, v64

    add-long v6, v6, v40

    mul-long v40, v18, v66

    add-long v9, v9, v40

    mul-long v40, v18, v68

    sub-long v12, v12, v40

    mul-long v40, v18, v70

    add-long v15, v15, v40

    mul-long v18, v18, v72

    sub-long v20, v20, v18

    shr-long v18, v1, v33

    add-long v6, v6, v18

    shl-long v18, v18, v33

    sub-long v1, v1, v18

    shr-long v18, v6, v33

    add-long v9, v9, v18

    shl-long v18, v18, v33

    sub-long v6, v6, v18

    shr-long v18, v9, v33

    add-long v12, v12, v18

    shl-long v18, v18, v33

    sub-long v9, v9, v18

    shr-long v18, v12, v33

    add-long v15, v15, v18

    shl-long v18, v18, v33

    sub-long v12, v12, v18

    shr-long v18, v15, v33

    add-long v20, v20, v18

    shl-long v18, v18, v33

    sub-long v15, v15, v18

    shr-long v18, v20, v33

    add-long v23, v23, v18

    shl-long v18, v18, v33

    sub-long v20, v20, v18

    shr-long v18, v23, v33

    add-long v27, v27, v18

    shl-long v18, v18, v33

    sub-long v23, v23, v18

    shr-long v18, v27, v33

    add-long v31, v31, v18

    shl-long v18, v18, v33

    sub-long v27, v27, v18

    shr-long v18, v31, v33

    add-long v34, v34, v18

    shl-long v18, v18, v33

    sub-long v31, v31, v18

    shr-long v18, v34, v33

    add-long v36, v36, v18

    shl-long v18, v18, v33

    sub-long v34, v34, v18

    shr-long v18, v36, v33

    add-long v38, v38, v18

    shl-long v18, v18, v33

    sub-long v36, v36, v18

    shr-long v18, v38, v33

    shl-long v40, v18, v33

    sub-long v38, v38, v40

    mul-long v62, v62, v18

    add-long v1, v1, v62

    mul-long v64, v64, v18

    add-long v6, v6, v64

    mul-long v66, v66, v18

    add-long v9, v9, v66

    mul-long v68, v68, v18

    sub-long v12, v12, v68

    mul-long v70, v70, v18

    add-long v15, v15, v70

    mul-long v18, v18, v72

    sub-long v20, v20, v18

    shr-long v18, v1, v33

    add-long v6, v6, v18

    shl-long v18, v18, v33

    sub-long v1, v1, v18

    shr-long v18, v6, v33

    add-long v9, v9, v18

    shl-long v18, v18, v33

    sub-long v6, v6, v18

    shr-long v18, v9, v33

    add-long v12, v12, v18

    shl-long v18, v18, v33

    sub-long v9, v9, v18

    shr-long v18, v12, v33

    add-long v15, v15, v18

    shl-long v18, v18, v33

    sub-long v12, v12, v18

    shr-long v18, v15, v33

    add-long v20, v20, v18

    shl-long v18, v18, v33

    sub-long v15, v15, v18

    shr-long v18, v20, v33

    add-long v23, v23, v18

    shl-long v18, v18, v33

    sub-long v20, v20, v18

    shr-long v18, v23, v33

    add-long v27, v27, v18

    shl-long v18, v18, v33

    sub-long v23, v23, v18

    shr-long v18, v27, v33

    add-long v31, v31, v18

    shl-long v18, v18, v33

    sub-long v27, v27, v18

    shr-long v18, v31, v33

    add-long v34, v34, v18

    shl-long v18, v18, v33

    move/from16 v40, v4

    move v3, v5

    sub-long v4, v31, v18

    shr-long v18, v34, v33

    add-long v36, v36, v18

    shl-long v18, v18, v33

    sub-long v34, v34, v18

    shr-long v18, v36, v33

    add-long v38, v38, v18

    shl-long v18, v18, v33

    sub-long v36, v36, v18

    move/from16 v18, v3

    long-to-int v3, v1

    int-to-byte v3, v3

    const/16 v19, 0x0

    .line 1128
    aput-byte v3, v0, v19

    const/16 v3, 0x8

    move/from16 v19, v8

    move-wide/from16 v31, v9

    shr-long v8, v1, v3

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 1129
    aput-byte v8, v0, v40

    const/16 v8, 0x10

    shr-long/2addr v1, v8

    shl-long v9, v6, v19

    or-long/2addr v1, v9

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1130
    aput-byte v1, v0, v18

    shr-long v1, v6, v29

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1131
    aput-byte v1, v0, v29

    const/16 v1, 0xb

    shr-long v1, v6, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1132
    aput-byte v1, v0, v17

    const/16 v1, 0x13

    shr-long v1, v6, v1

    shl-long v6, v31, v18

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1133
    aput-byte v1, v0, v19

    shr-long v1, v31, v25

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1134
    aput-byte v1, v0, v25

    const/16 v1, 0xe

    shr-long v1, v31, v1

    shl-long v6, v12, v11

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1135
    aput-byte v1, v0, v11

    shr-long v1, v12, v40

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1136
    aput-byte v1, v0, v3

    const/16 v1, 0x9

    shr-long v1, v12, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x9

    .line 1137
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v12, v1

    shl-long v6, v15, v17

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1138
    aput-byte v1, v0, v14

    shr-long v1, v15, v17

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xb

    .line 1139
    aput-byte v1, v0, v2

    const/16 v1, 0xc

    shr-long v1, v15, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xc

    .line 1140
    aput-byte v1, v0, v2

    const/16 v1, 0x14

    shr-long v1, v15, v1

    shl-long v6, v20, v40

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1141
    aput-byte v1, v0, v22

    shr-long v1, v20, v11

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xe

    .line 1142
    aput-byte v1, v0, v2

    shr-long v1, v20, v26

    shl-long v6, v23, v25

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1143
    aput-byte v1, v0, v26

    shr-long v1, v23, v18

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1144
    aput-byte v1, v0, v8

    shr-long v1, v23, v14

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x11

    .line 1145
    aput-byte v1, v0, v2

    shr-long v1, v23, v30

    shl-long v6, v27, v29

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1146
    aput-byte v1, v0, v30

    shr-long v1, v27, v19

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x13

    .line 1147
    aput-byte v1, v0, v2

    shr-long v1, v27, v22

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x14

    .line 1148
    aput-byte v1, v0, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 1149
    aput-byte v1, v0, v33

    shr-long v1, v4, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x16

    .line 1150
    aput-byte v1, v0, v2

    shr-long v1, v4, v8

    shl-long v3, v34, v19

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x17

    .line 1151
    aput-byte v1, v0, v2

    shr-long v1, v34, v29

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x18

    .line 1152
    aput-byte v1, v0, v2

    const/16 v1, 0xb

    shr-long v1, v34, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x19

    .line 1153
    aput-byte v1, v0, v2

    const/16 v1, 0x13

    shr-long v1, v34, v1

    shl-long v3, v36, v18

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1a

    .line 1154
    aput-byte v1, v0, v2

    shr-long v1, v36, v25

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1b

    .line 1155
    aput-byte v1, v0, v2

    const/16 v1, 0xe

    shr-long v1, v36, v1

    shl-long v3, v38, v11

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1c

    .line 1156
    aput-byte v1, v0, v2

    shr-long v1, v38, v40

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1d

    .line 1157
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    shr-long v1, v38, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1e

    .line 1158
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v38, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1f

    .line 1159
    aput-byte v1, v0, v2

    return-void
.end method

.method public static scalarMultWithBase([B)Lcom/google/crypto/tink/internal/Ed25519$XYZ;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/16 v0, 0x40

    .line 586
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v3, v4, :cond_23

    mul-int/lit8 v4, v3, 0x2

    .line 588
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/2addr v4, v5

    .line 589
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_23
    move p0, v2

    move v3, p0

    :goto_25
    const/16 v4, 0x3f

    if-ge p0, v4, :cond_3d

    .line 599
    aget-byte v4, v1, p0

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, p0

    add-int/lit8 v4, v3, 0x8

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v6, v4, 0x4

    sub-int/2addr v3, v6

    int-to-byte v3, v3

    .line 602
    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    move v3, v4

    goto :goto_25

    .line 604
    :cond_3d
    aget-byte p0, v1, v4

    add-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    .line 606
    new-instance p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    sget-object v3, Lcom/google/crypto/tink/internal/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;

    invoke-direct {p0, v3}, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    .line 607
    new-instance v3, Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    invoke-direct {v3}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>()V

    :goto_4f
    if-ge v5, v0, :cond_69

    .line 613
    new-instance v4, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    sget-object v6, Lcom/google/crypto/tink/internal/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    invoke-direct {v4, v6}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    .line 614
    div-int/lit8 v6, v5, 0x2

    aget-byte v7, v1, v5

    invoke-static {v4, v6, v7}, Lcom/google/crypto/tink/internal/Ed25519;->select(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;IB)V

    .line 615
    invoke-static {v3, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lcom/google/crypto/tink/internal/Ed25519;->add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_4f

    .line 620
    :cond_69
    new-instance v4, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v4}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>()V

    .line 621
    invoke-static {v4, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    .line 622
    invoke-static {v4, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    .line 623
    invoke-static {v4, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    .line 624
    invoke-static {v4, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/crypto/tink/internal/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    :goto_8a
    if-ge v2, v0, :cond_a4

    .line 628
    new-instance v4, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    sget-object v5, Lcom/google/crypto/tink/internal/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    invoke-direct {v4, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    .line 629
    div-int/lit8 v5, v2, 0x2

    aget-byte v6, v1, v2

    invoke-static {v4, v5, v6}, Lcom/google/crypto/tink/internal/Ed25519;->select(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;IB)V

    .line 630
    invoke-static {v3, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/google/crypto/tink/internal/Ed25519;->add(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_8a

    .line 635
    :cond_a4
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V

    .line 636
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->isOnCurve()Z

    move-result p0

    if-eqz p0, :cond_b0

    return-object v0

    .line 637
    :cond_b0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "arithmetic error in scalar multiplication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scalarMultWithBaseToBytes([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 651
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->toBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static select(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;IB)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "pos",
            "b"
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x7

    shr-int/2addr v0, v1

    neg-int v2, v0

    and-int/2addr v2, p2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    sub-int/2addr p2, v2

    .line 558
    sget-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    aget-object v4, v2, p1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {p2, v3}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 559
    aget-object v4, v2, p1

    aget-object v3, v4, v3

    const/4 v4, 0x2

    invoke-static {p2, v4}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 560
    aget-object v3, v2, p1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 561
    aget-object v3, v2, p1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-static {p2, v4}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 562
    aget-object v3, v2, p1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {p2, v4}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 563
    aget-object v3, v2, p1

    aget-object v3, v3, v4

    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 564
    aget-object v3, v2, p1

    aget-object v3, v3, v4

    invoke-static {p2, v1}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 565
    aget-object p1, v2, p1

    aget-object p1, p1, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/google/crypto/tink/internal/Ed25519;->eq(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    .line 567
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    const/16 p2, 0xa

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 568
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 569
    iget-object v2, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    .line 570
    invoke-static {p2, p2}, Lcom/google/crypto/tink/internal/Ed25519;->neg([J[J)V

    .line 571
    new-instance v2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    invoke-direct {v2, p1, v1, p2}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 572
    invoke-virtual {p0, v2, v0}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V

    return-void
.end method

.method public static sign([B[B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "publicKey",
            "hashedPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1543
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1544
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/16 v2, 0x20

    .line 1545
    invoke-virtual {v0, p2, v2, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1546
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1547
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1548
    invoke-static {v3}, Lcom/google/crypto/tink/internal/Ed25519;->reduce([B)V

    .line 1550
    invoke-static {v3}, Lcom/google/crypto/tink/internal/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->toBytes()[B

    move-result-object v4

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1551
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 1552
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1553
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1554
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1555
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1556
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->reduce([B)V

    .line 1557
    new-array p1, v2, [B

    .line 1558
    invoke-static {p1, p0, p2, v3}, Lcom/google/crypto/tink/internal/Ed25519;->mulAdd([B[B[B[B)V

    .line 1559
    filled-new-array {v1, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static slide([B)[B
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/16 v0, 0x100

    .line 656
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x1

    if-ge v3, v0, :cond_19

    shr-int/lit8 v5, v3, 0x3

    .line 661
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v3, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_19
    move p0, v2

    :goto_1a
    if-ge p0, v0, :cond_5e

    .line 666
    aget-byte v3, v1, p0

    if-eqz v3, :cond_5b

    move v3, v4

    :goto_21
    const/4 v5, 0x6

    if-gt v3, v5, :cond_5b

    add-int v5, p0, v3

    if-ge v5, v0, :cond_5b

    .line 668
    aget-byte v6, v1, v5

    if-eqz v6, :cond_58

    .line 669
    aget-byte v7, v1, p0

    shl-int v8, v6, v3

    add-int/2addr v8, v7

    const/16 v9, 0xf

    if-gt v8, v9, :cond_3d

    shl-int/2addr v6, v3

    add-int/2addr v7, v6

    int-to-byte v6, v7

    .line 670
    aput-byte v6, v1, p0

    .line 671
    aput-byte v2, v1, v5

    goto :goto_58

    :cond_3d
    shl-int v8, v6, v3

    sub-int v8, v7, v8

    const/16 v9, -0xf

    if-lt v8, v9, :cond_5b

    shl-int/2addr v6, v3

    sub-int/2addr v7, v6

    int-to-byte v6, v7

    .line 673
    aput-byte v6, v1, p0

    :goto_4a
    if-ge v5, v0, :cond_58

    .line 675
    aget-byte v6, v1, v5

    if-nez v6, :cond_53

    .line 676
    aput-byte v4, v1, v5

    goto :goto_58

    .line 679
    :cond_53
    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_5b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1a

    :cond_5e
    return-object v1
.end method

.method public static sub(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    const/16 v0, 0xa

    .line 440
    new-array v0, v0, [J

    .line 443
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v3, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 446
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v3, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 449
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 452
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 455
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 458
    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, p1}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 461
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v0, p1, p1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 464
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {p2, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 467
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p2, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {p2, p1, p2}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 470
    iget-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p2}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 473
    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {p0, v0, p0}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    return-void
.end method

.method public static verify([B[B[B)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "signature",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1600
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    const/16 v0, 0x20

    .line 1603
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1604
    invoke-static {v2}, Lcom/google/crypto/tink/internal/Ed25519;->isSmallerThanGroupOrder([B)Z

    move-result v3

    if-nez v3, :cond_14

    return v1

    .line 1607
    :cond_14
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v4, "SHA-512"

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 1608
    invoke-virtual {v3, p1, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 1609
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 1610
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1611
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1612
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519;->reduce([B)V

    .line 1614
    invoke-static {p2}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->access$500([B)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object p2

    .line 1615
    invoke-static {p0, p2, v2}, Lcom/google/crypto/tink/internal/Ed25519;->doubleScalarMultVarTime([BLcom/google/crypto/tink/internal/Ed25519$XYZT;[B)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    move-result-object p0

    .line 1616
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->toBytes()[B

    move-result-object p0

    move p2, v1

    :goto_3b
    if-ge p2, v0, :cond_47

    .line 1618
    aget-byte v2, p0, p2

    aget-byte v3, p1, p2

    if-eq v2, v3, :cond_44

    return v1

    :cond_44
    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_47
    const/4 p0, 0x1

    return p0
.end method

###### Class com.google.crypto.tink.internal.Ed25519.CachedXYT (com.google.crypto.tink.internal.Ed25519$CachedXYT)
.class public Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedXYT"
.end annotation


# instance fields
.field public final t2d:[J

.field public final yMinusX:[J

.field public final yPlusX:[J


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xa

    .line 300
    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>([J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    .line 321
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    .line 322
    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    return-void
.end method

.method public constructor <init>([J[J[J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yPlusX",
            "yMinusX",
            "t2d"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    .line 315
    iput-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    .line 316
    iput-object p3, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    return-void
.end method


# virtual methods
.method public copyConditional(Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "icopy"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/internal/Curve25519;->copyConditional([J[JI)V

    .line 335
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/internal/Curve25519;->copyConditional([J[JI)V

    .line 336
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/internal/Curve25519;->copyConditional([J[JI)V

    return-void
.end method

.method public multByZ([J[J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 327
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

###### Class com.google.crypto.tink.internal.Ed25519.CachedXYZT (com.google.crypto.tink.internal.Ed25519$CachedXYZT)
.class public Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;
.super Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedXYZT"
.end annotation


# instance fields
.field public final z:[J


# direct methods
.method public constructor <init>()V
    .registers 5

    const/16 v0, 0xa

    .line 345
    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;-><init>([J[J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$XYZT;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xyzt"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yPlusX:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 358
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->yMinusX:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 359
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;->z:[J

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;->t2d:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->t:[J

    sget-object v1, Lcom/google/crypto/tink/internal/Ed25519Constants;->D2:[J

    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-void
.end method

.method public constructor <init>([J[J[J[J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yPlusX",
            "yMinusX",
            "z",
            "t2d"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2, p4}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 373
    iput-object p3, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;->z:[J

    return-void
.end method


# virtual methods
.method public multByZ([J[J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYZT;->z:[J

    invoke-static {p1, p2, v0}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-void
.end method

###### Class com.google.crypto.tink.internal.Ed25519.PartialXYZT (com.google.crypto.tink.internal.Ed25519$PartialXYZT)
.class public Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartialXYZT"
.end annotation


# instance fields
.field public final t:[J

.field public final xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 274
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    .line 284
    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xyz",
            "t"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    .line 279
    iput-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    return-void
.end method

###### Class com.google.crypto.tink.internal.Ed25519.XYZ (com.google.crypto.tink.internal.Ed25519$XYZ)
.class public Lcom/google/crypto/tink/internal/Ed25519$XYZ;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XYZ"
.end annotation


# instance fields
.field public final x:[J

.field public final y:[J

.field public final z:[J


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xa

    .line 76
    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>([J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialXYZT"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>()V

    .line 96
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xyz"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    .line 90
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    .line 91
    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    return-void
.end method

.method public constructor <init>([J[J[J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    .line 84
    iput-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    .line 85
    iput-object p3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    return-void
.end method

.method public static fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-object p0
.end method


# virtual methods
.method public isOnCurve()Z
    .registers 7

    const/16 v0, 0xa

    .line 127
    new-array v1, v0, [J

    .line 128
    iget-object v2, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 129
    new-array v2, v0, [J

    .line 130
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 131
    new-array v3, v0, [J

    .line 132
    iget-object v4, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 133
    new-array v4, v0, [J

    .line 134
    invoke-static {v4, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 135
    new-array v5, v0, [J

    .line 137
    invoke-static {v5, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 139
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 140
    new-array v0, v0, [J

    .line 142
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 144
    sget-object v1, Lcom/google/crypto/tink/internal/Ed25519Constants;->D:[J

    invoke-static {v0, v0, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 146
    invoke-static {v0, v4}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J)V

    .line 149
    invoke-static {v0, v0}, Lcom/google/crypto/tink/internal/Field25519;->reduce([J[J)V

    .line 151
    invoke-static {v5}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .registers 5

    const/16 v0, 0xa

    .line 114
    new-array v1, v0, [J

    .line 115
    new-array v2, v0, [J

    .line 116
    new-array v0, v0, [J

    .line 117
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v1, v3}, Lcom/google/crypto/tink/internal/Field25519;->inverse([J[J)V

    .line 118
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v2, v3, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 119
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, v3, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 120
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v0

    const/16 v1, 0x1f

    .line 121
    aget-byte v3, v0, v1

    invoke-static {v2}, Lcom/google/crypto/tink/internal/Ed25519;->access$000([J)I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

###### Class com.google.crypto.tink.internal.Ed25519.XYZT (com.google.crypto.tink.internal.Ed25519$XYZT)
.class public Lcom/google/crypto/tink/internal/Ed25519$XYZT;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XYZT"
.end annotation


# instance fields
.field public final t:[J

.field public final xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 173
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialXYZT"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>()V

    .line 183
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xyz",
            "t"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    .line 178
    iput-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->t:[J

    return-void
.end method

.method public static synthetic access$400(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;
    .registers 2

    .line 167
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500([B)Lcom/google/crypto/tink/internal/Ed25519$XYZT;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->fromBytesNegateVarTime([B)Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytesNegateVarTime([B)Lcom/google/crypto/tink/internal/Ed25519$XYZT;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 203
    new-array v1, v0, [J

    .line 204
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v2

    .line 205
    new-array v3, v0, [J

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    .line 206
    aput-wide v5, v3, v4

    .line 207
    new-array v4, v0, [J

    .line 208
    new-array v5, v0, [J

    .line 209
    new-array v6, v0, [J

    .line 210
    new-array v7, v0, [J

    .line 211
    new-array v8, v0, [J

    .line 212
    invoke-static {v5, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 213
    sget-object v9, Lcom/google/crypto/tink/internal/Ed25519Constants;->D:[J

    invoke-static {v6, v5, v9}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 214
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 215
    invoke-static {v6, v6, v3}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 217
    new-array v0, v0, [J

    .line 218
    invoke-static {v0, v6}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 219
    invoke-static {v0, v0, v6}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 220
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 221
    invoke-static {v1, v1, v6}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 222
    invoke-static {v1, v1, v5}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 224
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Ed25519;->access$100([J[J)V

    .line 225
    invoke-static {v1, v1, v0}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 226
    invoke-static {v1, v1, v5}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 228
    invoke-static {v7, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 229
    invoke-static {v7, v7, v6}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 230
    invoke-static {v8, v7, v5}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 231
    invoke-static {v8}, Lcom/google/crypto/tink/internal/Ed25519;->access$200([J)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 232
    invoke-static {v8, v7, v5}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    .line 233
    invoke-static {v8}, Lcom/google/crypto/tink/internal/Ed25519;->access$200([J)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 237
    sget-object v0, Lcom/google/crypto/tink/internal/Ed25519Constants;->SQRTM1:[J

    invoke-static {v1, v1, v0}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    goto :goto_67

    .line 234
    :cond_5f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_67
    :goto_67
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->access$200([J)Z

    move-result v0

    const/16 v5, 0x1f

    if-nez v0, :cond_80

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_78

    goto :goto_80

    .line 241
    :cond_78
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x\'s least significant bit is not zero"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_80
    :goto_80
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->access$000([J)I

    move-result v0

    aget-byte p0, p0, v5

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_8f

    .line 245
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Ed25519;->access$300([J[J)V

    .line 248
    :cond_8f
    invoke-static {v4, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 249
    new-instance p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;

    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>([J[J[J)V

    invoke-direct {p0, v0, v4}, Lcom/google/crypto/tink/internal/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;[J)V

    return-object p0
.end method

.method public static fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZT;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZT;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 193
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 194
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZT;->t:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-object p0
.end method
