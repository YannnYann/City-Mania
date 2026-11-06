###### Class com.facebook.ads.redexgen.X.U6 (com.facebook.ads.redexgen.X.U6)
.class public final Lcom/facebook/ads/redexgen/X/U6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jt;


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/Js;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Js<",
            "Lcom/facebook/ads/redexgen/X/U6;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/U8;

.field public final A01:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1338
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ClIjfNGNXsUk9Y65KCPt0kyaipz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CNTSnfydZqXddc4vWhW6qn2wSRN26B1h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bmCjOqxcxaOGr21LifywwZxlc2XULa8r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pOixQKHn13K2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "le"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m5Yl4zAIkaBSDrKZZfoRRREfDj1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5me5y5ryL2nahGoSPpOL6tfSSzOLyGKY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U6;->A05:Ljava/lang/String;

    .line 1339
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U6;->A04:Ljava/lang/String;

    .line 1340
    new-instance v0, Lcom/facebook/ads/redexgen/X/U7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/U7;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/U6;->A03:Lcom/facebook/ads/redexgen/X/Js;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/U8;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/U8;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72887
    .local p2, "trackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72888
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 72889
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2c

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/U8;->A01:I

    if-ge v1, v0, :cond_2c

    .line 72890
    :cond_23
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    .line 72891
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/9l;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/9l;

    .line 72892
    return-void

    .line 72893
    :cond_2c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/U6;
    .registers 4

    .line 72894
    sget-object v0, Lcom/facebook/ads/redexgen/X/U6;->A05:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 72895
    .local v0, "trackGroupBundle":Landroid/os/Bundle;
    sget-object v0, Lcom/facebook/ads/redexgen/X/U8;->A07:Lcom/facebook/ads/redexgen/X/Js;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Js;->A7F(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/U8;

    .line 72896
    .local v1, "mediaTrackGroup":Lcom/facebook/ads/redexgen/X/U8;
    sget-object v0, Lcom/facebook/ads/redexgen/X/U6;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 72897
    .local v2, "tracks":[I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/19;->A09([I)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/U6;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/U6;-><init>(Lcom/facebook/ads/redexgen/X/U8;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .registers 2

    .line 72898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/U8;->A02:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 72899
    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    .line 72900
    return v5

    .line 72901
    :cond_4
    const/4 v4, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_69

    sget-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const-string v1, "XfF7V5xjwCjiq8qmEdtylrR0E5w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_28

    .line 72902
    .end local v2
    :cond_27
    return v4

    .line 72903
    :cond_28
    sget-object v1, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const-string v1, "sevTgvOvcIIO9hcSdxKvVaXYDQ2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/redexgen/X/U6;

    .line 72904
    .local v2, "that":Lcom/facebook/ads/redexgen/X/U6;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    :goto_48
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/9l;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    :goto_52
    return v5

    :cond_53
    sget-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const-string v1, "u5GjXIxc3Iwrp0kRgHbkZLfq8SY7HrhC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/redexgen/X/U6;

    .local v2, "that":Lcom/facebook/ads/redexgen/X/U6;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_48

    :cond_67
    const/4 v5, 0x0

    goto :goto_52

    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    .line 72905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U8;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.facebook.ads.redexgen.X.U7 (com.facebook.ads.redexgen.X.U7)
.class public final synthetic Lcom/facebook/ads/redexgen/X/U7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Js;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 72906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7F(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/Jt;
    .registers 3

    .line 72907
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U6;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/U6;

    move-result-object v0

    return-object v0
.end method
