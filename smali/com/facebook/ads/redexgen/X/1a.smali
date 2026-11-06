###### Class com.facebook.ads.redexgen.X.AbstractC12601a (com.facebook.ads.redexgen.X.1a)
.class public abstract Lcom/facebook/ads/redexgen/X/1a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final A00(C)Z
    .registers 2

    .line 4755
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
