###### Class com.facebook.ads.redexgen.X.C1466Am (com.facebook.ads.redexgen.X.Am)
.class public final Lcom/facebook/ads/redexgen/X/Am;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e3;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/animation/ObjectAnimator;

.field public A03:Lcom/facebook/ads/redexgen/X/Be;

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/widget/ProgressBar;

.field public final A07:Lcom/facebook/ads/redexgen/X/mQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/mQ;

.field public final A09:Lcom/facebook/ads/redexgen/X/mQ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/mQ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 453
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Hq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OjgwQqPrmANjyfbphJ39Mu61StzsnX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ENHlAXCFtvifbfpvqNNdhmMf2tSqJsHo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jqwCZFsclm8lKMB7op"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "K89S7l71J8gMFKO9TsoXH7DZJ5zzjbee"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9i4hb0lNaQ8A7VlgsO2M315Ld"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BIioCxLzD8LCeZg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Am;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()V

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A0K:I

    sput v0, Lcom/facebook/ads/redexgen/X/Am;->A0D:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;I)V
    .registers 9

    .line 31031
    sget v2, Lcom/facebook/ads/redexgen/X/Am;->A0D:I

    const v3, -0xbf7f01

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Am;-><init>(Lcom/facebook/ads/redexgen/X/Hi;IIII)V

    .line 31032
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;IIII)V
    .registers 11

    .line 31033
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31034
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Am;->A04:Z

    .line 31035
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 31036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Z

    .line 31037
    new-instance v0, Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/50;-><init>(Lcom/facebook/ads/redexgen/X/Am;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A0A:Lcom/facebook/ads/redexgen/X/mQ;

    .line 31038
    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/Am;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A08:Lcom/facebook/ads/redexgen/X/mQ;

    .line 31039
    new-instance v0, Lcom/facebook/ads/redexgen/X/4y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4y;-><init>(Lcom/facebook/ads/redexgen/X/Am;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A09:Lcom/facebook/ads/redexgen/X/mQ;

    .line 31040
    new-instance v0, Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/Am;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A07:Lcom/facebook/ads/redexgen/X/mQ;

    .line 31041
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 31042
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    .line 31043
    invoke-virtual {p0, p3, p4, v4}, Lcom/facebook/ads/redexgen/X/Am;->A0A(IIZ)V

    .line 31044
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 31045
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31046
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Am;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31047
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Be;
    .registers 1

    .line 31048
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Am;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 3

    .line 31049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_16

    .line 31050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 31051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 31052
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    .line 31053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 31054
    :cond_16
    return-void
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Am;->A0B:[B

    return-void

    :array_a
    .array-data 1
        -0x47t
        -0x45t
        -0x48t
        -0x50t
        -0x45t
        -0x52t
        -0x44t
        -0x44t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Am;)V
    .registers 1

    .line 31055
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Am;)Z
    .registers 1

    .line 31056
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Z

    return p0
.end method


# virtual methods
.method public final A06()V
    .registers 6

    .line 31057
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    .line 31058
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    .line 31059
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31062
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 31063
    return-void
.end method

.method public final A07()V
    .registers 2

    .line 31064
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    .line 31065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A04:Z

    .line 31066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    .line 31067
    return-void
.end method

.method public final A08()V
    .registers 1

    .line 31068
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    .line 31069
    return-void
.end method

.method public final A09(I)V
    .registers 9

    .line 31070
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A04:Z

    if-eqz v0, :cond_5

    .line 31071
    return-void

    .line 31072
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Am;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_95

    .line 31073
    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A0C:[Ljava/lang/String;

    const-string v1, "yedT1VOxRsFXzyFrRMoEWNeYHyjr2k"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ZZEnXydL5Apwe4z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 31074
    .local v0, "duration":I
    if-lez v0, :cond_5d

    mul-int/lit16 v3, p1, 0x2710

    div-int/2addr v3, v0

    .line 31075
    .local v1, "progress":I
    :goto_29
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    if-ge v1, v3, :cond_2f

    if-gt v0, p1, :cond_5f

    .line 31076
    :cond_2f
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_59

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    const/16 v3, 0x2710

    sget-object v1, Lcom/facebook/ads/redexgen/X/Am;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_5a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A0C:[Ljava/lang/String;

    const-string v1, "BPpXZJNGY8Y3FUuotYxOER1m1YlSVT68"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_59

    .line 31077
    :goto_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31078
    :cond_59
    return-void

    :cond_5a
    if-ge v4, v3, :cond_59

    goto :goto_54

    .line 31079
    :cond_5d
    const/4 v3, 0x0

    goto :goto_29

    .line 31080
    :cond_5f
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    filled-new-array {v1, v3}, [I

    move-result-object v5

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/16 v1, 0x35

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Am;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    .line 31081
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    const/16 v1, 0xfa

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31084
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 31085
    return-void

    :cond_95
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0A(IIZ)V
    .registers 11

    .line 31086
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 31087
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31088
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 31089
    .local v1, "progressBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31090
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 31091
    .local v2, "secProgressDr":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p3, :cond_22

    .line 31092
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 31093
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 31094
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 31095
    :cond_22
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const v0, 0x800003

    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1, v4, v0, v3, v2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    .line 31096
    .local v3, "progressDr":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v6, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 31097
    .local v4, "resultDr":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 31098
    const v0, 0x102000f

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 31099
    const v0, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 31100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31101
    return-void
.end method

.method public final A0B(Z)V
    .registers 10

    .line 31102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    if-nez v0, :cond_5

    .line 31103
    return-void

    .line 31104
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Am;->A02()V

    .line 31105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getCurrentPositionInMillis()I

    move-result v7

    .line 31106
    .local v0, "position":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getDuration()I

    move-result v6

    .line 31107
    .local v1, "duration":I
    :goto_19
    if-lez v6, :cond_38

    mul-int/lit16 v3, v7, 0x2710

    div-int/2addr v3, v6

    .line 31108
    .local v3, "progress":I
    :goto_1e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    if-ge v0, v3, :cond_24

    if-gt v6, v7, :cond_3d

    .line 31109
    :cond_24
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_37

    .line 31110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31111
    :cond_37
    return-void

    .line 31112
    :cond_38
    const/4 v3, 0x0

    goto :goto_1e

    .line 31113
    :cond_3a
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    goto :goto_19

    .line 31114
    :cond_3d
    if-eqz p1, :cond_75

    .line 31115
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    filled-new-array {v0, v3}, [I

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    .line 31116
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31119
    :goto_72
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 31120
    return-void

    .line 31121
    :cond_75
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_72
.end method

.method public final ABd(Lcom/facebook/ads/redexgen/X/Be;)V
    .registers 6

    .line 31122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    .line 31123
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A08:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A09:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A0A:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A07:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    .line 31124
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A03([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 31125
    return-void
.end method

.method public final ALp(Lcom/facebook/ads/redexgen/X/Be;)V
    .registers 6

    .line 31126
    if-eqz p1, :cond_20

    .line 31127
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A0A:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A09:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A08:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A07:Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v2, v1

    .line 31128
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A04([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 31129
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/Be;

    .line 31130
    return-void
.end method

.method public getCustomDuration()I
    .registers 2

    .line 31131
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    return v0
.end method

.method public setCustomDuration(I)V
    .registers 2

    .line 31132
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 31133
    return-void
.end method

.method public setShouldClearAnimationWhenVideoCompleted(Z)V
    .registers 2

    .line 31134
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Z

    .line 31135
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13384x (com.facebook.ads.redexgen.X.4x)
.class public final Lcom/facebook/ads/redexgen/X/4x;
.super Lcom/facebook/ads/redexgen/X/BM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Am;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11483
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5Y;)V
    .registers 3

    .line 11484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A00(Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A05(Lcom/facebook/ads/redexgen/X/Am;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 11485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A06()V

    .line 11486
    :cond_15
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11487
    check-cast p1, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4x;->A00(Lcom/facebook/ads/redexgen/X/5Y;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13394y (com.facebook.ads.redexgen.X.4y)
.class public final Lcom/facebook/ads/redexgen/X/4y;
.super Lcom/facebook/ads/redexgen/X/BE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Am;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11488
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BE;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/BF;)V
    .registers 4

    .line 11489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A00(Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 11490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0B(Z)V

    .line 11491
    :cond_e
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11492
    check-cast p1, Lcom/facebook/ads/redexgen/X/BF;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4y;->A00(Lcom/facebook/ads/redexgen/X/BF;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13404z (com.facebook.ads.redexgen.X.4z)
.class public final Lcom/facebook/ads/redexgen/X/4z;
.super Lcom/facebook/ads/redexgen/X/BG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Am;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11493
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BG;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5W;)V
    .registers 3

    .line 11494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A04(Lcom/facebook/ads/redexgen/X/Am;)V

    .line 11495
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11496
    check-cast p1, Lcom/facebook/ads/redexgen/X/5W;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4z;->A00(Lcom/facebook/ads/redexgen/X/5W;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass50 (com.facebook.ads.redexgen.X.50)
.class public final Lcom/facebook/ads/redexgen/X/50;
.super Lcom/facebook/ads/redexgen/X/BB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Am;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 177
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5cZwmFwOCvoIimHKJKs7c8Wrfuwl5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kR6Rx7ETQGlVhfpD5OxJcFg21Ovz094i"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oaAjYFLN3m9AYmyloxlSIBJp6ETHW3KF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dCQrNLE74jmKWuOaqJJ4Sbhiwuuv5ad"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "onBgfHhqxGhqxLvpU2wfKqg3mDsyExyq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SCROov7hAW1gh5oss5LLtyUv0yBfa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SAPoZVZ00ZwZwmL71sxtzrpJli3hIy2X"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TEn6j3AzMnGgqeyMrOghHZKrMbMLSMuC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/50;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11497
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BB;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5V;)V
    .registers 6

    .line 11498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A00(Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 11499
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Am;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A01:[Ljava/lang/String;

    const-string v1, "B8raFzKF2tgWcMrESvgtBPeFcOBIsHL1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0B(Z)V

    .line 11500
    :cond_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11501
    check-cast p1, Lcom/facebook/ads/redexgen/X/5V;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/5V;)V

    return-void
.end method
