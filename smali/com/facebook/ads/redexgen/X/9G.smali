###### Class com.facebook.ads.redexgen.X.C9G (com.facebook.ads.redexgen.X.9G)
.class public final Lcom/facebook/ads/redexgen/X/9G;
.super Lcom/facebook/ads/redexgen/X/9o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullFilteringHeadersMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9o<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 28450
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;-><init>()V

    .line 28451
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Ljava/util/Map;

    .line 28452
    return-void
.end method

.method private final A00(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28453
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_3
.end method

.method public static synthetic A01(Ljava/lang/String;)Z
    .registers 1

    .line 28454
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    :goto_3
    return p0

    :cond_4
    const/4 p0, 0x0

    goto :goto_3
.end method

.method public static synthetic A02(Ljava/util/Map$Entry;)Z
    .registers 1

    .line 28455
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    :goto_7
    return p0

    :cond_8
    const/4 p0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final bridge synthetic A03()Ljava/lang/Object;
    .registers 2

    .line 28456
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A05()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Ljava/util/Map;

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 28458
    if-eqz p1, :cond_a

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 28459
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->A06(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 28460
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/9o;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TB;-><init>()V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VX;->A07(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/Wt;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 28461
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->A07(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28462
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9G;->A00(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 28463
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A04()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    .line 28464
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/9o;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/9o;->size()I

    move-result v0

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public final keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28465
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/9o;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TC;-><init>()V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VX;->A07(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/Wt;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 3

    .line 28466
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/9o;->size()I

    move-result v1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

###### Class com.facebook.ads.redexgen.X.TB (com.facebook.ads.redexgen.X.TB)
.class public final synthetic Lcom/facebook/ads/redexgen/X/TB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wt;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 71122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4d(Ljava/lang/Object;)Z
    .registers 3

    .line 71123
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A02(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.TC (com.facebook.ads.redexgen.X.TC)
.class public final synthetic Lcom/facebook/ads/redexgen/X/TC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wt;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 71124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4d(Ljava/lang/Object;)Z
    .registers 3

    .line 71125
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A01(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
