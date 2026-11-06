###### Class com.facebook.ads.redexgen.X.C1823Om (com.facebook.ads.redexgen.X.Om)
.class public final Lcom/facebook/ads/redexgen/X/Om;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/bL;)V
    .registers 2

    .line 60762
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Om;-><init>()V

    return-void
.end method


# virtual methods
.method public final A68()Lcom/facebook/ads/redexgen/X/ZK;
    .registers 4

    .line 60763
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(J)V

    return-object v0
.end method

.method public final AIa(Lcom/facebook/ads/redexgen/X/Q9;)J
    .registers 4

    .line 60764
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final ALV(J)V
    .registers 3

    .line 60765
    return-void
.end method
