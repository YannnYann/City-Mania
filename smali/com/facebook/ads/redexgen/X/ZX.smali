###### Class com.facebook.ads.redexgen.X.ZX (com.facebook.ads.redexgen.X.ZX)
.class public abstract Lcom/facebook/ads/redexgen/X/ZX;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(II)I
    .registers 4

    .line 79884
    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_10

    .line 79885
    return v1

    .line 79886
    :sswitch_5
    const/16 v0, 0x20

    if-ne p1, v0, :cond_a

    const/4 v1, 0x4

    :cond_a
    return v1

    .line 79887
    :sswitch_b
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/N1;->A03(I)I

    move-result v0

    return v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_5
        0xfffe -> :sswitch_b
    .end sparse-switch
.end method
