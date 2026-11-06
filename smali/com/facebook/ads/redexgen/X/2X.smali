###### Class com.facebook.ads.redexgen.X.C2X (com.facebook.ads.redexgen.X.2X)
.class public final Lcom/facebook/ads/redexgen/X/2X;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1i;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2X;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/2l;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;Z)Z"
        }
    .end annotation

    .line 5338
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2l;->A04:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_c

    .line 5339
    :cond_6
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/2m;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A04:Lcom/facebook/ads/redexgen/X/2m;

    if-eq v1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final synthetic A01(Lcom/facebook/ads/redexgen/X/2X;Lcom/facebook/ads/redexgen/X/2l;Z)Z
    .registers 3

    .line 5340
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2X;->A00(Lcom/facebook/ads/redexgen/X/2l;Z)Z

    move-result p0

    return p0
.end method
