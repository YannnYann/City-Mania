###### Class com.facebook.ads.redexgen.X.C4W (com.facebook.ads.redexgen.X.4W)
.class public final Lcom/facebook/ads/redexgen/X/4W;
.super Lcom/facebook/ads/redexgen/X/9k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/9k<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient A00:I

.field public final transient A01:I

.field public final transient A02:Lcom/facebook/ads/redexgen/X/Vq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient A03:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vq;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "alternatingKeysAndValues",
            "keyOffset",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 11027
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    .local p1, "map":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9k;-><init>()V

    .line 11028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4W;->A02:Lcom/facebook/ads/redexgen/X/Vq;

    .line 11029
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4W;->A03:[Ljava/lang/Object;

    .line 11030
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4W;->A00:I

    .line 11031
    iput p4, p0, Lcom/facebook/ads/redexgen/X/4W;->A01:I

    .line 11032
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/4W;)I
    .registers 1

    .line 11033
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4W;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4W;)I
    .registers 1

    .line 11034
    iget p0, p0, Lcom/facebook/ads/redexgen/X/4W;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/4W;)[Ljava/lang/Object;
    .registers 1

    .line 11035
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4W;->A03:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final A0I([Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 11036
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9k;->A0J()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9l;->A0I([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .registers 2

    .line 11037
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/9l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 11038
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/4X;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4X;-><init>(Lcom/facebook/ads/redexgen/X/4W;)V

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/VV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/VV<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 11039
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9k;->A0J()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 11040
    .local p1, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 11041
    check-cast p1, Ljava/util/Map$Entry;

    .line 11042
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 11043
    .local v2, "k":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 11044
    .local v3, "v":Ljava/lang/Object;
    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4W;->A02:Lcom/facebook/ads/redexgen/X/Vq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Vq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    return v3

    .line 11045
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1f
    return v3
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 11046
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4W;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 11047
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4W;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4W;->A01:I

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C4X (com.facebook.ads.redexgen.X.4X)
.class public final Lcom/facebook/ads/redexgen/X/4X;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4W;->A0M()Lcom/facebook/ads/redexgen/X/9l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9l<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4W;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4W;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 11048
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4X;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9l;-><init>()V

    return-void
.end method

.method private final A00(I)Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 11049
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4X;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A00(Lcom/facebook/ads/redexgen/X/4W;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A00(II)I

    .line 11050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A02(Lcom/facebook/ads/redexgen/X/4W;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, p1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A01(Lcom/facebook/ads/redexgen/X/4W;)I

    move-result v0

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 11051
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A02(Lcom/facebook/ads/redexgen/X/4W;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, p1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A01(Lcom/facebook/ads/redexgen/X/4W;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11052
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A0K()Z
    .registers 2

    .line 11053
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4X;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 11054
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4X;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A00(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 11055
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4X;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4W;->A00(Lcom/facebook/ads/redexgen/X/4W;)I

    move-result v0

    return v0
.end method
