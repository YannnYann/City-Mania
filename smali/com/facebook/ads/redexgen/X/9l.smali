###### Class com.facebook.ads.redexgen.X.AbstractC14399l (com.facebook.ads.redexgen.X.9l)
.class public abstract Lcom/facebook/ads/redexgen/X/9l;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4e;,
        Lcom/facebook/ads/redexgen/X/3a;,
        Lcom/facebook/ads/redexgen/X/4d;,
        Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,
        Lcom/google/common/collect/ImmutableList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Vt<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static A00:[B = null

.field public static A01:[Ljava/lang/String; = null

.field public static final A02:Lcom/facebook/ads/redexgen/X/9R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9R<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = -0x35014542L


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 425
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fA1fnNssArdKpNGuPvEGSzi7pOUZHm7v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qns5CkO3MVDTshXVoTiVucy5w98kVhX8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FBilluItLEFIj11sI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xhOoaGlUfdtuNUXUR7COCy2p48irks40"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B9QowLQGlwGuP7x5xkpjNnYcMu4XR0jN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IeItZmW1RXx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W7RLvvUGiTAKxasjeCPHrioAHehOTeSb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bhxfXmBriQ73PypRFft5YTIqbznKEvYb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9l;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A0B()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:Lcom/facebook/ads/redexgen/X/9l;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/3a;-><init>(Lcom/facebook/ads/redexgen/X/9l;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9l;->A02:Lcom/facebook/ads/redexgen/X/9R;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29093
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/4e;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/4e<",
            "TE;>;"
        }
    .end annotation

    .line 29094
    new-instance v0, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    return-object v0
.end method

.method private final A02(II)Lcom/facebook/ads/redexgen/X/4d;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29095
    .local p1, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    sub-int/2addr p2, p1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Lcom/facebook/ads/redexgen/X/9l;II)V

    return-object v0
.end method

.method public static A03()Lcom/facebook/ads/redexgen/X/9l;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29096
    sget-object v0, Lcom/facebook/ads/redexgen/X/4Y;->A02:Lcom/facebook/ads/redexgen/X/9l;

    return-object v0
.end method

.method public static A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29097
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/9l;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29098
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/Vt;

    if-eqz v0, :cond_19

    .line 29099
    check-cast p0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vt;->A0J()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object p0

    .line 29100
    .local v0, "list":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vt;->A0K()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vt;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9l;->A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object p0

    :cond_18
    return-object p0

    .line 29101
    .end local v0    # "list":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    :cond_19
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9l;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public static A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29102
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;->A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public static A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29103
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-nez v0, :cond_8

    .line 29104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A03()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    .line 29105
    :goto_7
    return-object v0

    .line 29106
    :cond_8
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9l;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    goto :goto_7
.end method

.method public static varargs A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29107
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vd;->A03([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9l;->A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object p0

    return-object p0
.end method

.method public static A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/9l;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29108
    if-nez p1, :cond_7

    .line 29109
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A03()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0

    .line 29110
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/4Y;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/4Y;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/9l;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_3d

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9l;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_37

    sget-object v2, Lcom/facebook/ads/redexgen/X/9l;->A01:[Ljava/lang/String;

    const-string v1, "dhQRA9x0T6ID6JuO896L24zk9QRH59k7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7htLPED1qaLsB4bVZYo3T5RxRWmBeLII"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/9l;->A00:[B

    return-void

    :array_a
    .array-data 1
        -0x4at
        -0x2ct
        -0x3at
        -0x7ft
        -0x4ct
        -0x3at
        -0x2dt
        -0x36t
        -0x3et
        -0x33t
        -0x36t
        -0x25t
        -0x3at
        -0x3bt
        -0x59t
        -0x30t
        -0x2dt
        -0x32t
    .end array-data
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 29146
    .local v2, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0I([Ljava/lang/Object;I)I
    .registers 7
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

    .line 29111
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v3

    .line 29112
    .local v0, "size":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v2, v3, :cond_12

    .line 29113
    add-int v1, p2, v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    .line 29114
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 29115
    .end local v1    # "i":I
    :cond_12
    add-int/2addr p2, v3

    return p2
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/9l;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29116
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    return-object p0
.end method

.method public A0M(II)Lcom/facebook/ads/redexgen/X/9l;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 29117
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A0B(III)V

    .line 29118
    sub-int v1, p2, p1

    .line 29119
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    if-ne v1, v0, :cond_10

    .line 29120
    return-object p0

    .line 29121
    :cond_10
    if-nez v1, :cond_17

    .line 29122
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A03()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0

    .line 29123
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9l;->A02(II)Lcom/facebook/ads/redexgen/X/4d;

    move-result-object v0

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/VV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/VV<",
            "TE;>;"
        }
    .end annotation

    .line 29124
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0O()Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/9R;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9R<",
            "TE;>;"
        }
    .end annotation

    .line 29125
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0P(I)Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public A0P(I)Lcom/facebook/ads/redexgen/X/9R;
    .registers 3
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
            "Lcom/facebook/ads/redexgen/X/9R<",
            "TE;>;"
        }
    .end annotation

    .line 29126
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A01(II)I

    .line 29127
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29128
    sget-object v0, Lcom/facebook/ads/redexgen/X/9l;->A02:Lcom/facebook/ads/redexgen/X/9R;

    return-object v0

    .line 29129
    :cond_10
    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3a;-><init>(Lcom/facebook/ads/redexgen/X/9l;I)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29130
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "newElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29131
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
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

    .line 29132
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 29133
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A06(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 29134
    .local p1, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 29135
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v3

    .line 29136
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v3, :cond_18

    .line 29137
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 29138
    .end local v0    # "hashCode":I
    .local v3, "hashCode":I
    not-int v0, v1

    not-int v0, v0

    .line 29139
    .end local v3    # "hashCode":I
    .restart local v0    # "hashCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 29140
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
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

    .line 29141
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 29142
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
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

    .line 29143
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 29144
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0O()Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 29145
    .local v0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0P(I)Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3
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
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29147
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29148
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 29149
    .local v0, "this":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9l;->A0M(II)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C13184d (com.facebook.ads.redexgen.X.4d)
.class public final Lcom/facebook/ads/redexgen/X/4d;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9l<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient A00:I

.field public final transient A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/9l;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9l;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "offset",
            "length"
        }
    .end annotation

    .line 11085
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9l;-><init>()V

    .line 11086
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    .line 11087
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4d;->A00:I

    .line 11088
    return-void
.end method


# virtual methods
.method public final A0G()I
    .registers 3

    .line 11089
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0H()I
    .registers 3

    .line 11090
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0K()Z
    .registers 2

    .line 11091
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0L()[Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 11092
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A0L()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(II)Lcom/facebook/ads/redexgen/X/9l;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation

    .line 11093
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A00:I

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A0B(III)V

    .line 11094
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    add-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    add-int/2addr v0, p2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0M(II)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
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
            "(I)TE;"
        }
    .end annotation

    .line 11095
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A00:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A00(II)I

    .line 11096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4d;->A02:Lcom/facebook/ads/redexgen/X/9l;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A01:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 11097
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 11098
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0O()Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 11099
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0P(I)Lcom/facebook/ads/redexgen/X/9R;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 11100
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4d;->A00:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 11101
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4d;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4d;->A0M(II)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method
