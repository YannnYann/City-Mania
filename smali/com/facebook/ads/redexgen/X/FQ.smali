###### Class com.facebook.ads.redexgen.X.FQ (com.facebook.ads.redexgen.X.FQ)
.class public final Lcom/facebook/ads/redexgen/X/FQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/je;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FM;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FQ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FM;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/FQ;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/FQ;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0xbt
        -0x2t
        0x1t
        0x5t
        -0x9t
        -0xft
        0x0t
        -0xdt
        0x8t
        -0xft
        -0xct
        -0xdt
        0x4t
    .end array-data
.end method


# virtual methods
.method public final AAw()Z
    .registers 7

    .line 40933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0n(Lcom/facebook/ads/redexgen/X/FM;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 40934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/r2;->getToolbarActionMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 40935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    .line 40936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0f(Lcom/facebook/ads/redexgen/X/FM;)V

    .line 40937
    :cond_20
    :goto_20
    return v2

    .line 40938
    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/r2;->getToolbarActionMode()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x34

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/FQ;->A00(III)Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_5d

    .line 40939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0E(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hv;->A0D(Ljava/lang/String;)V

    .line 40940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A07(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/nO;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A08(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/r9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0B(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/s3;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    goto :goto_20

    .line 40942
    :cond_5d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0G(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hI;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    .line 40943
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0G(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hI;->A0h()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 40944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0E(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hv;->A0D(Ljava/lang/String;)V

    .line 40945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A07(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/nO;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A08(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/r9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0B(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/s3;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    goto :goto_20

    .line 40947
    :cond_99
    const/4 v0, 0x0

    return v0
.end method
