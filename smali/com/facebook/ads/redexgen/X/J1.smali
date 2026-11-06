###### Class com.facebook.ads.redexgen.X.J1 (com.facebook.ads.redexgen.X.J1)
.class public final Lcom/facebook/ads/redexgen/X/J1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/iJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7O;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7O;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 754
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "m0v39bkLL0n2S0xNgN89hz2dGOcTpwho"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Je1TSnUfgjz87J45b10M9zAxXIUpZahJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5NPz60Ycb2xlrnlJbjQuqitLPDDjbzHA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GN4TkK3T6zCNiBjoupvxTPY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uEyRXI1LEgEguUOEBvXDLSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uM6injuc1j2LJ4wHPsuMaMxVec9yzmkB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WB5Y9xOLXhFok7BjZ8qu5ygjzkxXvdjS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QTx8NC78KyDJtqbkFzNokRxLjqTFyIiz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/J1;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7O;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47771
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/J1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

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

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/J1;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x27t
        -0x9t
        0x2t
        0x2t
        -0x5t
        -0x6t
        -0x4at
        -0x9t
        0xat
        0xat
        -0x9t
        -0x7t
        -0x2t
        -0x4at
        0x5t
        0x4t
        -0x4at
        -0x9t
        -0x4at
        -0x7t
        -0x2t
        -0x1t
        0x2t
        -0x6t
        -0x4at
        0xdt
        -0x2t
        -0x1t
        -0x7t
        -0x2t
        -0x4at
        -0x1t
        0x9t
        -0x4at
        0x4t
        0x5t
        0xat
        -0x4at
        -0x6t
        -0x5t
        0xat
        -0x9t
        -0x7t
        -0x2t
        -0x5t
        -0x6t
        -0x30t
        -0x4at
        -0x4bt
        -0x4dt
        -0x42t
        -0x42t
        -0x49t
        -0x4at
        0x72t
        -0x4at
        -0x49t
        -0x3at
        -0x4dt
        -0x4bt
        -0x46t
        0x72t
        -0x3ft
        -0x40t
        0x72t
        -0x4dt
        -0x40t
        0x72t
        -0x4dt
        -0x42t
        -0x3ct
        -0x49t
        -0x4dt
        -0x4at
        -0x35t
        0x72t
        -0x4at
        -0x49t
        -0x3at
        -0x4dt
        -0x4bt
        -0x46t
        -0x49t
        -0x4at
        0x72t
        -0x4bt
        -0x46t
        -0x45t
        -0x42t
        -0x4at
        0x72t
    .end array-data
.end method


# virtual methods
.method public final A4l(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 9

    .line 47772
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7O;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v4

    .line 47773
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/jE;
    if-eqz v4, :cond_15

    .line 47774
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jE;->A0p()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jE;->A0s()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 47775
    :cond_12
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jE;->A0a()V

    .line 47776
    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7O;->A0x(Lcom/facebook/ads/redexgen/X/7O;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47777
    return-void

    .line 47778
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    .line 47779
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7O;->A1L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A6V(I)V
    .registers 7

    .line 47780
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/J1;->A7s(I)Landroid/view/View;

    move-result-object v0

    .line 47781
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 47782
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7O;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v4

    .line 47783
    .local v1, "vh":Lcom/facebook/ads/redexgen/X/jE;
    if-eqz v4, :cond_1d

    .line 47784
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jE;->A0p()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jE;->A0s()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 47785
    :cond_18
    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/jE;->A0e(I)V

    .line 47786
    .end local v1    # "vh":Lcom/facebook/ads/redexgen/X/jE;
    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7O;->A0v(Lcom/facebook/ads/redexgen/X/7O;I)V

    .line 47787
    return-void

    .line 47788
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x2b

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    .line 47789
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7O;->A1L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A7s(I)Landroid/view/View;
    .registers 3

    .line 47790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7O;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A7t()I
    .registers 2

    .line 47791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7O;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final A7w(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;
    .registers 3

    .line 47792
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7O;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v0

    return-object v0
.end method

.method public final AAl(Landroid/view/View;)I
    .registers 3

    .line 47793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7O;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final AEq(Landroid/view/View;)V
    .registers 4

    .line 47794
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7O;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v1

    .line 47795
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/jE;
    if-eqz v1, :cond_b

    .line 47796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jE;->A0G(Lcom/facebook/ads/redexgen/X/jE;Lcom/facebook/ads/redexgen/X/7O;)V

    .line 47797
    :cond_b
    return-void
.end method

.method public final AFd(Landroid/view/View;)V
    .registers 4

    .line 47798
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7O;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v1

    .line 47799
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/jE;
    if-eqz v1, :cond_b

    .line 47800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jE;->A0H(Lcom/facebook/ads/redexgen/X/jE;Lcom/facebook/ads/redexgen/X/7O;)V

    .line 47801
    :cond_b
    return-void
.end method

.method public final AJh()V
    .registers 5

    .line 47802
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/J1;->A7t()I

    move-result v3

    .line 47803
    .local v0, "count":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v2, v3, :cond_16

    .line 47804
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/J1;->A7s(I)Landroid/view/View;

    move-result-object v1

    .line 47805
    .local v2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7O;->A1m(Landroid/view/View;)V

    .line 47806
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 47807
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 47808
    .end local v1    # "i":I
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7O;->removeAllViews()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/J1;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_33

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47809
    :cond_33
    sget-object v2, Lcom/facebook/ads/redexgen/X/J1;->A02:[Ljava/lang/String;

    const-string v1, "YVtNrV2twtC96zFGqk3M5li58NeZhLji"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method public final AJn(I)V
    .registers 6

    .line 47810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7O;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47811
    .local v0, "child":Landroid/view/View;
    if-eqz v1, :cond_10

    .line 47812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7O;->A1m(Landroid/view/View;)V

    .line 47813
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 47814
    :cond_10
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    sget-object v1, Lcom/facebook/ads/redexgen/X/J1;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/J1;->A02:[Ljava/lang/String;

    const-string v1, "BurwQQkBxJzMJJK1acCycPqXpvrCcXzS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/7O;->removeViewAt(I)V

    .line 47815
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final addView(Landroid/view/View;I)V
    .registers 4

    .line 47816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7O;->addView(Landroid/view/View;I)V

    .line 47817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/7O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7O;->A1l(Landroid/view/View;)V

    .line 47818
    return-void
.end method
