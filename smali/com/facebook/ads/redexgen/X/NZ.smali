###### Class com.facebook.ads.redexgen.X.NZ (com.facebook.ads.redexgen.X.NZ)
.class public abstract Lcom/facebook/ads/redexgen/X/NZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api21"
.end annotation


# direct methods
.method public static A00(Ljava/lang/Throwable;)Z
    .registers 2

    .line 57660
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic A01(Ljava/lang/Throwable;)Z
    .registers 1

    .line 57661
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NZ;->A00(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
