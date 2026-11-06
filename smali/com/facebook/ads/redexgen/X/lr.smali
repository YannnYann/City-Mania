###### Class com.facebook.ads.redexgen.X.AbstractC2823lr (com.facebook.ads.redexgen.X.lr)
.class public abstract Lcom/facebook/ads/redexgen/X/lr;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/ur;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;I)Lcom/facebook/ads/redexgen/X/5h;
    .registers 6

    .line 102164
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 102165
    packed-switch p4, :pswitch_data_18

    .line 102166
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/3j;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/3j;-><init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    return-object v0

    .line 102167
    :pswitch_c
    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    return-object v0

    .line 102168
    :pswitch_12
    new-instance v0, Lcom/facebook/ads/redexgen/X/3k;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/3k;-><init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

###### Class com.facebook.ads.redexgen.X.C12983j (com.facebook.ads.redexgen.X.3j)
.class public final Lcom/facebook/ads/redexgen/X/3j;
.super Lcom/facebook/ads/redexgen/X/5h;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 121
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/px;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/3j;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V
    .registers 5

    .line 7249
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/5h;-><init>(Lcom/facebook/ads/redexgen/X/ur;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    .line 7250
    return-void
.end method


# virtual methods
.method public final A03()Z
    .registers 2

    .line 7251
    const/4 v0, 0x0

    return v0
.end method

.method public final A0H()Z
    .registers 2

    .line 7252
    const/4 v0, 0x0

    return v0
.end method

.method public final A1t(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 10

    .line 7253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/un;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/uV;

    move-result-object v4

    .line 7254
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/uV;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/uV;->setAlignment(I)V

    .line 7255
    const/4 v7, -0x1

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7256
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7257
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/uV;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7258
    sget v3, Lcom/facebook/ads/redexgen/X/3j;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/3j;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/3j;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/3j;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/uV;->setPadding(IIII)V

    .line 7259
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/un;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0V(Landroid/view/View;Landroid/content/Context;)V

    .line 7260
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7261
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7262
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3j;->addView(Landroid/view/View;)V

    .line 7264
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/3j;->addView(Landroid/view/View;)V

    .line 7265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3j;->addView(Landroid/view/View;)V

    .line 7266
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/iv;)V
    .registers 3

    .line 7267
    return-void
.end method
