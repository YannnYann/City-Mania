###### Class com.facebook.ads.redexgen.X.AbstractC1999Vy (com.facebook.ads.redexgen.X.Vy)
.class public abstract Lcom/facebook/ads/redexgen/X/Vy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9p;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Vy;

.field public static final A01:Lcom/facebook/ads/redexgen/X/Vy;

.field public static final A02:Lcom/facebook/ads/redexgen/X/Vy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1481
    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9q;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vy;

    .line 1482
    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9p;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Lcom/facebook/ads/redexgen/X/Vy;

    .line 1483
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9p;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A01:Lcom/facebook/ads/redexgen/X/Vy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 75091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 2

    .line 75092
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vy;-><init>()V

    return-void
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/Vy;
    .registers 1

    .line 75093
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vy;

    return-object v0
.end method

.method public static synthetic A02()Lcom/facebook/ads/redexgen/X/Vy;
    .registers 1

    .line 75094
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Lcom/facebook/ads/redexgen/X/Vy;

    return-object v0
.end method

.method public static synthetic A03()Lcom/facebook/ads/redexgen/X/Vy;
    .registers 1

    .line 75095
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A01:Lcom/facebook/ads/redexgen/X/Vy;

    return-object v0
.end method

.method public static synthetic A04()Lcom/facebook/ads/redexgen/X/Vy;
    .registers 1

    .line 75096
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vy;

    return-object v0
.end method


# virtual methods
.method public abstract A05()I
.end method

.method public abstract A06(II)Lcom/facebook/ads/redexgen/X/Vy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A07(JJ)Lcom/facebook/ads/redexgen/X/Vy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/Vy;"
        }
    .end annotation
.end method

.method public abstract A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A0A(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

###### Class com.facebook.ads.redexgen.X.C14439p (com.facebook.ads.redexgen.X.9p)
.class public final Lcom/facebook/ads/redexgen/X/9p;
.super Lcom/facebook/ads/redexgen/X/Vy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InactiveComparisonChain"
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 29189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/9q;)V

    .line 29190
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:I

    .line 29191
    return-void
.end method


# virtual methods
.method public final A05()I
    .registers 2

    .line 29192
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:I

    return v0
.end method

.method public final A06(II)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29193
    return-object p0
.end method

.method public final A07(JJ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29194
    return-object p0
.end method

.method public final A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/Vy;"
        }
    .end annotation

    .line 29195
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    return-object p0
.end method

.method public final A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29196
    return-object p0
.end method

.method public final A0A(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29197
    return-object p0
.end method

###### Class com.facebook.ads.redexgen.X.C14449q (com.facebook.ads.redexgen.X.9q)
.class public final Lcom/facebook/ads/redexgen/X/9q;
.super Lcom/facebook/ads/redexgen/X/Vy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/9q;)V

    return-void
.end method

.method private final A00(I)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 29199
    if-gez p1, :cond_7

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A02()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    if-lez p1, :cond_e

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A03()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A04()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final A05()I
    .registers 2

    .line 29200
    const/4 v0, 0x0

    return v0
.end method

.method public final A06(II)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29201
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9q;->A00(I)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method

.method public final A07(JJ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29202
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9q;->A00(I)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/Vy;"
        }
    .end annotation

    .line 29203
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9q;->A00(I)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method

.method public final A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29204
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9q;->A00(I)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(ZZ)Lcom/facebook/ads/redexgen/X/Vy;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 29205
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9q;->A00(I)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method
