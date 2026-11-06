###### Class com.facebook.ads.redexgen.X.AbstractC12500q (com.facebook.ads.redexgen.X.0q)
.class public abstract Lcom/facebook/ads/redexgen/X/0q;
.super Lcom/facebook/ads/redexgen/X/1r;
.source ""


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final A05(I)I
    .registers 2

    .line 4250
    if-gez p0, :cond_3

    .line 4251
    :goto_2
    return p0

    .line 4252
    :cond_3
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 4253
    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_16

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_2

    .line 4254
    :cond_16
    const p0, 0x7fffffff

    goto :goto_2
.end method
