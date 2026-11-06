###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3362uf (com.facebook.ads.redexgen.X.uf)
.class public final Lcom/facebook/ads/redexgen/X/uf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eg;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eg;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/uf;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eg;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114653
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/uf;->A00:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/uf;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/uf;->A01:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x38t
        0x3ct
        0x30t
        0x36t
        0x34t
    .end array-data
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

    .line 114654
    .local v0, "this":Lcom/facebook/ads/redexgen/X/uf;
    .local v4, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/uf;->A00:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/un;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/El;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ec;

    .line 114655
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/uf;->A00:Lcom/facebook/ads/redexgen/X/Eg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/un;->A08:Lcom/facebook/ads/redexgen/X/ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ur;->A0D()Lcom/facebook/ads/redexgen/X/rz;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 114656
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/uf;->A00:Lcom/facebook/ads/redexgen/X/Eg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/un;->A08:Lcom/facebook/ads/redexgen/X/ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ur;->A0D()Lcom/facebook/ads/redexgen/X/rz;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rz;->ADH()V

    .line 114657
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/uf;
    :cond_2e
    return-void
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2f

    .end local v4    # "view":Landroid/view/View;
    :catchall_2f
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
