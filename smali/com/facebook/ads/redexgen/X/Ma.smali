###### Class com.facebook.ads.redexgen.X.C1759Ma (com.facebook.ads.redexgen.X.Ma)
.class public final Lcom/facebook/ads/redexgen/X/Ma;
.super Landroid/telephony/TelephonyCallback;
.source ""

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfoCallback"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Me;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1006
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qJ49io2EbpxURWUKkMAdMHlA9JYN5Nx4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mfwonON7wXzSPnH255f9j8pE1fefvDwu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FvYkXdUo0reKOi4up0muwTRn3FqaqpLa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "c6GPrSjIoHZjgGAXu1GV7xSWA7eqy98w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JEE49BVEpsHR3WAFPo4mVlXWEy9GYai5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WI1VXowVkYo8LKiTqFwx9ewX2jx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4YwPPYvSx3JtrtRsePNFwywRSMcRfEvC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iRVdC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Me;)V
    .registers 2

    .line 54430
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 54431
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 54432
    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 8

    .line 54433
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v5

    .line 54434
    .local v0, "overrideNetworkType":I
    const/4 v0, 0x3

    const/4 v3, 0x5

    if-eq v5, v0, :cond_33

    const/4 v4, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A01:[Ljava/lang/String;

    const-string v1, "Aye3dtDH7Uo1HR1wrzzbgtOGJKeq1ANF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "zcbTySA6e1TwkaXxCT9LVPuVYYe2fXuv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_33

    if-ne v5, v3, :cond_3e

    :cond_33
    const/4 v1, 0x1

    .line 54435
    .local v1, "is5gNsa":Z
    :goto_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Me;

    if-eqz v1, :cond_3a

    const/16 v3, 0xa

    :cond_3a
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Me;->A08(Lcom/facebook/ads/redexgen/X/Me;I)V

    .line 54436
    return-void

    .line 54437
    :cond_3e
    const/4 v1, 0x0

    goto :goto_34
.end method
