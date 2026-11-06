###### Class com.facebook.ads.redexgen.X.C3264t5 (com.facebook.ads.redexgen.X.t5)
.class public final Lcom/facebook/ads/redexgen/X/t5;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Landroid/view/View$OnLayoutChangeListener;

.field public A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public A03:Landroid/widget/ImageView;

.field public A04:Z

.field public final A05:Landroid/view/View;

.field public final A06:Lcom/facebook/ads/NativeAdLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/LA;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A09:Lcom/facebook/ads/redexgen/X/qn;

.field public final A0A:Lcom/facebook/ads/redexgen/X/st;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;Lcom/facebook/ads/redexgen/X/LA;Landroid/view/View;Lcom/facebook/ads/redexgen/X/qn;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/st;)V
    .registers 8

    .line 112043
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112044
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/t5;->A05:Landroid/view/View;

    .line 112045
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/t5;->A09:Lcom/facebook/ads/redexgen/X/qn;

    .line 112046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t5;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    .line 112047
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    .line 112048
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/t5;->A0A:Lcom/facebook/ads/redexgen/X/st;

    .line 112049
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/t5;->A07:Lcom/facebook/ads/redexgen/X/LA;

    .line 112050
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/su;->A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;)V

    .line 112051
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A02()V

    .line 112052
    return-void
.end method

.method private A00(Landroid/graphics/Rect;)I
    .registers 4

    .line 112053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/t5;)Landroid/widget/ImageView;
    .registers 1

    .line 112054
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    return-object p0
.end method

.method private A02()V
    .registers 4

    .line 112055
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112056
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    .line 112057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A09:Lcom/facebook/ads/redexgen/X/qn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qo;->A01(Lcom/facebook/ads/redexgen/X/qn;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 112060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0P(Landroid/view/View;I)V

    .line 112061
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/t0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/t0;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112062
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A00:Landroid/os/Handler;

    .line 112063
    new-instance v0, Lcom/facebook/ads/redexgen/X/t1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/t1;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    .line 112064
    new-instance v0, Lcom/facebook/ads/redexgen/X/t2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/t2;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 112065
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/t4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/t4;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 112066
    return-void
.end method

.method private A03()V
    .registers 4

    .line 112067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 112068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112069
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    .line 112070
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1f

    .line 112071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 112072
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 112073
    :cond_1f
    return-void
.end method

.method private A04()V
    .registers 5

    .line 112074
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/t5;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/t3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/t3;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A07:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A2z()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112075
    return-void
.end method

.method private A05()V
    .registers 6

    .line 112076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    .line 112077
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 112078
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 112079
    .local v1, "anchorViewLocation":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A05:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112080
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 112081
    .local v2, "nativeAdLayoutLocation":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/NativeAdLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112082
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 112083
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112084
    iget v1, v4, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/t5;->A00(Landroid/graphics/Rect;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_46

    .line 112085
    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    .line 112086
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 112087
    :cond_46
    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v2, v0

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0P(Landroid/view/View;I)V

    .line 112090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 112091
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A04:Z

    if-nez v0, :cond_74

    .line 112092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A04:Z

    .line 112093
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A04()V

    .line 112094
    :cond_74
    return-void
.end method

.method private A06(II)V
    .registers 4

    .line 112095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/qc;->A0P(Landroid/view/View;I)V

    .line 112096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A05:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/qc;->A0P(Landroid/view/View;I)V

    .line 112097
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A05()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A05()V

    return-void
.end method


# virtual methods
.method public final A09()V
    .registers 4

    .line 112098
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A03()V

    .line 112099
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/t5;->A06(II)V

    .line 112100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A00:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 112101
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/t5;->A04:Z

    .line 112102
    return-void
.end method

.method public final A0A()V
    .registers 3

    .line 112103
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/t5;->A06(II)V

    .line 112104
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/sz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/sz;-><init>(Lcom/facebook/ads/redexgen/X/t5;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 112105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_19

    .line 112106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A01:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112107
    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_28

    .line 112108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 112109
    :cond_28
    return-void
.end method

.method public final A0B()V
    .registers 2

    .line 112110
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/t5;->A06(II)V

    .line 112111
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A05()V

    .line 112112
    return-void
.end method

.method public final synthetic A0C(Landroid/view/View;)V
    .registers 3

    .line 112113
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A03()V

    .line 112114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t5;->A0A:Lcom/facebook/ads/redexgen/X/st;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/st;->AEX(Landroid/view/View;)V

    .line 112115
    return-void
.end method

.method public final synthetic A0D(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 112116
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/t5;->A05()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC3258sz (com.facebook.ads.redexgen.X.sz)
.class public final synthetic Lcom/facebook/ads/redexgen/X/sz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/t5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 2

    .line 112028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/sz;->A00:Lcom/facebook/ads/redexgen/X/t5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 112029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/sz;->A00:Lcom/facebook/ads/redexgen/X/t5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/t5;->A07(Lcom/facebook/ads/redexgen/X/t5;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3259t0 (com.facebook.ads.redexgen.X.t0)
.class public final synthetic Lcom/facebook/ads/redexgen/X/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/t5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 2

    .line 112030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t0;->A00:Lcom/facebook/ads/redexgen/X/t5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 112031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t0;->A00:Lcom/facebook/ads/redexgen/X/t5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/t5;->A0C(Landroid/view/View;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.ViewOnLayoutChangeListenerC3260t1 (com.facebook.ads.redexgen.X.t1)
.class public final synthetic Lcom/facebook/ads/redexgen/X/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/t5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 2

    .line 112032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t1;->A00:Lcom/facebook/ads/redexgen/X/t5;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 112033
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/t1;->A00:Lcom/facebook/ads/redexgen/X/t5;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/t5;->A0D(Landroid/view/View;IIIIIIII)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.ViewTreeObserverOnScrollChangedListenerC3261t2 (com.facebook.ads.redexgen.X.t2)
.class public final synthetic Lcom/facebook/ads/redexgen/X/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/t5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 2

    .line 112034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t2;->A00:Lcom/facebook/ads/redexgen/X/t5;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    .line 112035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t2;->A00:Lcom/facebook/ads/redexgen/X/t5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/t5;->A08(Lcom/facebook/ads/redexgen/X/t5;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC3262t3 (com.facebook.ads.redexgen.X.t3)
.class public final synthetic Lcom/facebook/ads/redexgen/X/t3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/t5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/t5;)V
    .registers 2

    .line 112036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t3;->A00:Lcom/facebook/ads/redexgen/X/t5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 112037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/t3;->A00:Lcom/facebook/ads/redexgen/X/t5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/t5;->A09()V

    return-void
.end method
