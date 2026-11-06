###### Class com.facebook.ads.redexgen.X.NS (com.facebook.ads.redexgen.X.NS)
.class public abstract Lcom/facebook/ads/redexgen/X/NS;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/TE;)V
    .registers 1

    .line 57453
    if-eqz p0, :cond_5

    .line 57454
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/TE;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 57455
    :catch_5
    :cond_5
    return-void
.end method
