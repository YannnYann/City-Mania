###### Class com.facebook.ads.redexgen.X.EP (com.facebook.ads.redexgen.X.EP)
.class public final Lcom/facebook/ads/redexgen/X/EP;
.super Lcom/facebook/ads/redexgen/X/IX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/vb;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/va;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/vb;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/vb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    .line 36075
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IX;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/EP;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/EP;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0xet
        0x5t
        0x1t
        -0x1t
        -0x12t
        0x0t
        0x32t
        0x2ft
        0x29t
    .end array-data
.end method


# virtual methods
.method public final A09(IIIIILandroid/os/Bundle;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36076
    packed-switch p5, :pswitch_data_5a

    .line 36077
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 36078
    :pswitch_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A01(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/va;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/va;->AEL()V

    .line 36079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A0A(Lcom/facebook/ads/redexgen/X/vb;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 36080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/vb;->A08(Lcom/facebook/ads/redexgen/X/vb;Z)V

    .line 36081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A00(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A5P()V

    goto :goto_e

    .line 36082
    :pswitch_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A01(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/va;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/va;->AEM()V

    .line 36083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A0A(Lcom/facebook/ads/redexgen/X/vb;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/vb;->A08(Lcom/facebook/ads/redexgen/X/vb;Z)V

    .line 36085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A00(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A5Q()V

    goto :goto_e

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public final A0A(ILandroid/os/Bundle;)V
    .registers 6

    .line 36086
    packed-switch p1, :pswitch_data_30

    .line 36087
    .end local v0
    :goto_3
    :pswitch_3
    return-void

    .line 36088
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A01(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/va;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/va;->AG5()V

    goto :goto_3

    .line 36089
    :pswitch_e
    if-eqz p2, :cond_1e

    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    :cond_1e
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 36090
    .local v0, "url":Ljava/lang/String;
    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:Lcom/facebook/ads/redexgen/X/vb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/vb;->A01(Lcom/facebook/ads/redexgen/X/vb;)Lcom/facebook/ads/redexgen/X/va;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/va;->AGE(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_e
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
