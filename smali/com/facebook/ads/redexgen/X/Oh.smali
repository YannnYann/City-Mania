###### Class com.facebook.ads.redexgen.X.C1818Oh (com.facebook.ads.redexgen.X.Oh)
.class public final Lcom/facebook/ads/redexgen/X/Oh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bV;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;)V"
        }
    .end annotation

    .line 60668
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Ljava/util/List;

    .line 60670
    return-void
.end method


# virtual methods
.method public final A88(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation

    .line 60671
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public final A8e(I)J
    .registers 4

    .line 60672
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 60673
    const-wide/16 v0, 0x0

    return-wide v0

    .line 60674
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final A8f()I
    .registers 2

    .line 60675
    const/4 v0, 0x1

    return v0
.end method

.method public final A9D(J)I
    .registers 6

    .line 60676
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
