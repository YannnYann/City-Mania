###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3384v1 (com.facebook.ads.redexgen.X.v1)
.class public final Lcom/facebook/ads/redexgen/X/v1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/v3;->A0F(Lcom/facebook/ads/redexgen/X/El;Landroid/widget/ImageView;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/v3;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/v1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/v3;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114949
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/v1;->A01:Lcom/facebook/ads/redexgen/X/v3;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/v1;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/v1;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/v1;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x3bt
        -0x32t
        -0x3ct
        -0x3dt
        -0x3ft
        -0x2et
        -0x3ct
        -0x2dt
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

    .line 114950
    .local v0, "this":Lcom/facebook/ads/redexgen/X/v1;
    .local v4, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/v1;->A00:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_1a

    .line 114951
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/v1;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/v1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/El;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ec;

    .line 114952
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/v1;
    :cond_1a
    return-void
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1b

    .end local v4    # "view":Landroid/view/View;
    :catchall_1b
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
