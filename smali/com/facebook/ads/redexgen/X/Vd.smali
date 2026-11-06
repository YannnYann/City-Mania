###### Class com.facebook.ads.redexgen.X.AbstractC1980Vd (com.facebook.ads.redexgen.X.Vd)
.class public abstract Lcom/facebook/ads/redexgen/X/Vd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vd;->A02()V

    return-void
.end method

.method public static A00(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "index"
        }
    .end annotation

    .line 74669
    if-eqz p0, :cond_3

    .line 74670
    return-object p0

    .line 74671
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vd;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vd;->A00:[B

    return-void

    :array_a
    .array-data 1
        0xct
        0x19t
        0x4dt
        0x4t
        0x3t
        0x9t
        0x8t
        0x15t
        0x4dt
    .end array-data
.end method

.method public static varargs A03([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 74672
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Vd;->A04([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 74673
    return-object p0
.end method

.method public static A04([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "length"
        }
    .end annotation

    .line 74674
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, p1, :cond_b

    .line 74675
    aget-object v0, p0, v1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vd;->A00(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 74676
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74677
    .end local v0    # "i":I
    :cond_b
    return-object p0
.end method

.method public static A05([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 74678
    .local p1, "reference":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Va;->A01([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
