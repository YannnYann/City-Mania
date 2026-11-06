###### Class com.facebook.ads.redexgen.X.AbstractC2079Zg (com.facebook.ads.redexgen.X.Zg)
.class public abstract Lcom/facebook/ads/redexgen/X/Zg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pp;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ZP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZP;)V
    .registers 2

    .line 79922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/ZP;

    .line 79924
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Mk;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/L9;
        }
    .end annotation

    .line 79925
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Zg;->A0B(Lcom/facebook/ads/redexgen/X/Mk;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zg;->A0C(Lcom/facebook/ads/redexgen/X/Mk;J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/Mk;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/L9;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/Mk;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/L9;
        }
    .end annotation
.end method
