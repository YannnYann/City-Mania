###### Class com.facebook.ads.redexgen.X.YE (com.facebook.ads.redexgen.X.YE)
.class public final Lcom/facebook/ads/redexgen/X/YE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/YE;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YE;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YE;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A00(III)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 77287
    sget-object v0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YE;->A01(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y9;->A00()Z

    move-result v0

    if-nez v0, :cond_11

    .line 77288
    return p0

    .line 77289
    :cond_11
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/YE;->A02(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 77290
    const/4 v0, 0x1

    .line 77291
    :goto_18
    return v0

    .line 77292
    :cond_19
    const/4 v0, 0x3

    goto :goto_18
.end method

.method private final A01(I)Z
    .registers 4

    .line 77293
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt v0, p1, :cond_8

    const/4 v0, 0x7

    if-ge p1, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public static final A02(II)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 77294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 77295
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 77296
    .local v1, "hour":I
    if-ge v0, p0, :cond_e

    if-gt v0, p1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
