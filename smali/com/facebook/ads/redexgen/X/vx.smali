###### Class com.facebook.ads.redexgen.X.AbstractC3442vx (com.facebook.ads.redexgen.X.vx)
.class public abstract Lcom/facebook/ads/redexgen/X/vx;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/ur;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)Lcom/facebook/ads/redexgen/X/6V;
    .registers 5

    .line 115996
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 115997
    new-instance v0, Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/3r;-><init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    .line 115998
    :goto_8
    return-object v0

    .line 115999
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/3s;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/3s;-><init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.redexgen.X.C13063r (com.facebook.ads.redexgen.X.3r)
.class public final Lcom/facebook/ads/redexgen/X/3r;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 124
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/px;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/3r;->A00:I

    .line 125
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/px;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/3r;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V
    .registers 5

    .line 7454
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Lcom/facebook/ads/redexgen/X/ur;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    .line 7455
    return-void
.end method


# virtual methods
.method public final A04()Z
    .registers 2

    .line 7456
    const/4 v0, 0x0

    return v0
.end method

.method public final A1q(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 9

    .line 7457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/un;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/uV;

    move-result-object v5

    .line 7458
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/uV;
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/uV;->setAlignment(I)V

    .line 7459
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7460
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/uV;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7461
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/3r;->A00:I

    invoke-virtual {v5, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/uV;->setPadding(IIII)V

    .line 7462
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7463
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7464
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7465
    .local v6, "adDetails":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0W(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 7466
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7467
    .local v3, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7468
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7469
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7470
    sget v3, Lcom/facebook/ads/redexgen/X/3r;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/3r;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/3r;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/3r;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7471
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3r;->addView(Landroid/view/View;)V

    .line 7474
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/3r;->addView(Landroid/view/View;)V

    .line 7475
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13073s (com.facebook.ads.redexgen.X.3s)
.class public final Lcom/facebook/ads/redexgen/X/3s;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 126
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/px;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ur;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V
    .registers 5

    .line 7476
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Lcom/facebook/ads/redexgen/X/ur;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Cc;)V

    .line 7477
    return-void
.end method


# virtual methods
.method public final A03()Z
    .registers 2

    .line 7478
    const/4 v0, 0x0

    return v0
.end method

.method public final A0H()Z
    .registers 2

    .line 7479
    const/4 v0, 0x0

    return v0
.end method

.method public final A1q(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 10

    .line 7480
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/un;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/uV;

    move-result-object v4

    .line 7481
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/uV;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/uV;->setAlignment(I)V

    .line 7482
    const/4 v7, -0x1

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7483
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7484
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/uV;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7485
    sget v3, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/uV;->setPadding(IIII)V

    .line 7486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/un;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0V(Landroid/view/View;Landroid/content/Context;)V

    .line 7487
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7488
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7490
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3s;->addView(Landroid/view/View;)V

    .line 7491
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/3s;->addView(Landroid/view/View;)V

    .line 7492
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getCtaButton()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3s;->addView(Landroid/view/View;)V

    .line 7493
    return-void
.end method
