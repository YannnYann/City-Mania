###### Class com.facebook.ads.redexgen.X.RV (com.facebook.ads.redexgen.X.RV)
.class public final Lcom/facebook/ads/redexgen/X/RV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/9l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;)V"
        }
    .end annotation

    .line 67915
    .local p3, "cues":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67916
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:J

    .line 67917
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Lcom/facebook/ads/redexgen/X/9l;

    .line 67918
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

    .line 67919
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Lcom/facebook/ads/redexgen/X/9l;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public final A8e(I)J
    .registers 4

    .line 67920
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 67921
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:J

    return-wide v0

    .line 67922
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final A8f()I
    .registers 2

    .line 67923
    const/4 v0, 0x1

    return v0
.end method

.method public final A9D(J)I
    .registers 6

    .line 67924
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
