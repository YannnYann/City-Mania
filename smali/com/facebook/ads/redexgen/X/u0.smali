###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3321u0 (com.facebook.ads.redexgen.X.u0)
.class public final Lcom/facebook/ads/redexgen/X/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ep;->AGb(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ep;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 3746
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "itOWPxSAafQZkTcpSE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P8wVkr4WQB2iTQj27U1zAKNwbIgp5ttm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3fifleoLwZA9ZUHROlHUKOtdLR5u4T8w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3T74ydaV22"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9uWerCzeZ8xawRpMyxj77IpYV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ULhUZegm5nSDnYs3Ds4NwOgfcNiZFAvv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CnafhHPdNyHtxs0BoCQt5IwpL7l3OIL1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MX4uPfGpQbRpYZ87lJTfxvNpA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/u0;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ep;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113327
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/u0;->A00:Lcom/facebook/ads/redexgen/X/Ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v4, p0

    .line 113328
    .local v0, "this":Lcom/facebook/ads/redexgen/X/u0;
    .local v3, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/u0;->A00:Lcom/facebook/ads/redexgen/X/Ep;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ep;->A03(Lcom/facebook/ads/redexgen/X/Ep;)V

    .line 113329
    return-void
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_e

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/u0;
    .end local v3    # "view":Landroid/view/View;
    :catchall_e
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/u0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/u0;->A01:[Ljava/lang/String;

    const-string v1, "eKgsbHFhDVYlHC4UrNgZgZ37z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vADQv3Fh0d5p8ZODn5ENkbcNb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
