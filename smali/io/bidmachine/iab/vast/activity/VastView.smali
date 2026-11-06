###### Class io.bidmachine.iab.vast.activity.VastView (io.bidmachine.iab.vast.activity.VastView)
.class public Lio/bidmachine/iab/vast/activity/VastView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/activity/VastView$B;,
        Lio/bidmachine/iab/vast/activity/VastView$C;,
        Lio/bidmachine/iab/vast/activity/VastView$y;,
        Lio/bidmachine/iab/vast/activity/VastView$z;,
        Lio/bidmachine/iab/vast/activity/VastView$x;,
        Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;,
        Lio/bidmachine/iab/vast/activity/VastView$A;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public final O:Ljava/util/List;

.field public final P:Ljava/util/List;

.field public final Q:Ljava/lang/Runnable;

.field public final R:Ljava/lang/Runnable;

.field public final S:Lio/bidmachine/iab/vast/activity/VastView$B;

.field public final T:Lio/bidmachine/iab/vast/activity/VastView$B;

.field public final U:Ljava/util/LinkedList;

.field public V:I

.field public W:F

.field public final a:Ljava/lang/String;

.field public final a0:Lio/bidmachine/iab/vast/activity/VastView$B;

.field public b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

.field public final b0:Landroid/view/TextureView$SurfaceTextureListener;

.field public c:Landroid/widget/FrameLayout;

.field public final c0:Landroid/media/MediaPlayer$OnCompletionListener;

.field public d:Landroid/view/Surface;

.field public final d0:Landroid/media/MediaPlayer$OnErrorListener;

.field public e:Landroid/widget/FrameLayout;

.field public final e0:Landroid/media/MediaPlayer$OnPreparedListener;

.field public f:Lio/bidmachine/iab/view/CloseableLayout;

.field public final f0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public g:Lio/bidmachine/iab/utils/IabCloseWrapper;

.field public g0:Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;

.field public h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

.field public final h0:Landroid/view/View$OnTouchListener;

.field public i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

.field public final i0:Landroid/webkit/WebChromeClient;

.field public j:Lio/bidmachine/iab/utils/IabMuteWrapper;

.field public final j0:Landroid/webkit/WebViewClient;

.field public k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

.field public l:Lio/bidmachine/iab/utils/IabProgressWrapper;

.field public m:Lio/bidmachine/iab/utils/IabCtaWrapper;

.field public n:Landroid/media/MediaPlayer;

.field public o:Landroid/view/View;

.field public p:Lio/bidmachine/iab/vast/tags/CompanionTag;

.field public q:Lio/bidmachine/iab/vast/tags/CompanionTag;

.field public r:Landroid/widget/ImageView;

.field public s:Lio/bidmachine/iab/mraid/MraidInterstitial;

.field public t:Lio/bidmachine/iab/vast/VastRequest;

.field public u:Lio/bidmachine/iab/vast/activity/VastView$C;

.field public v:Lio/bidmachine/iab/vast/VastViewListener;

.field public w:Lio/bidmachine/iab/vast/VastPlaybackListener;

.field public x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

.field public y:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

.field public z:Lio/bidmachine/iab/vast/activity/VastView$z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VastView-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    .line 68
    new-instance p2, Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-direct {p2}, Lio/bidmachine/iab/vast/activity/VastView$C;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->A:I

    .line 84
    iput p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->B:I

    .line 89
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    .line 90
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->F:Z

    .line 92
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->G:Z

    .line 93
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->H:Z

    .line 94
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    .line 95
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->J:Z

    .line 96
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->K:Z

    .line 98
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->L:Z

    const/4 p3, 0x1

    .line 100
    iput-boolean p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->M:Z

    .line 101
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->N:Z

    .line 103
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->O:Ljava/util/List;

    .line 105
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    .line 934
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$a;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$a;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    .line 1551
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$b;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$b;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->R:Ljava/lang/Runnable;

    .line 1577
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$c;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$c;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->S:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 1603
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$d;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$d;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->T:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 1650
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->U:Ljava/util/LinkedList;

    .line 1652
    iput p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->V:I

    const/4 p3, 0x0

    .line 1653
    iput p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->W:F

    .line 1661
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$e;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$e;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->a0:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 1715
    new-instance p3, Lio/bidmachine/iab/vast/activity/VastView$f;

    invoke-direct {p3, p0}, Lio/bidmachine/iab/vast/activity/VastView$f;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->b0:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1756
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$g;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$g;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->c0:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1766
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$h;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$h;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->d0:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1777
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$i;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$i;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->e0:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1825
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$j;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$j;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->f0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1837
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$l;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$l;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->g0:Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;

    .line 2076
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$m;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$m;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->h0:Landroid/view/View$OnTouchListener;

    .line 2094
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$n;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$n;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->i0:Landroid/webkit/WebChromeClient;

    .line 2127
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$o;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$o;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j0:Landroid/webkit/WebViewClient;

    const/high16 v0, -0x1000000

    .line 2128
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2129
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$k;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$k;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2139
    new-instance v0, Lio/bidmachine/iab/vast/view/IabVideoTexture;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/view/IabVideoTexture;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    .line 2140
    invoke-virtual {v0, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2141
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    .line 2142
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2146
    iget-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2150
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    .line 2151
    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2152
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2156
    new-instance p1, Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/bidmachine/iab/view/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2157
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2158
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/measurer/VastAdMeasurer;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-object p0
.end method

.method public static synthetic B(Lio/bidmachine/iab/vast/activity/VastView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    return p0
.end method

.method public static synthetic C(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    return-void
.end method

.method public static synthetic D(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->A()V

    return-void
.end method

.method public static synthetic E(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->q()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;F)F
    .registers 2

    .line 7
    iput p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->W:F

    return p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->C:I

    return p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->t()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Z)V
    .registers 4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Ljava/util/List;)V
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Z)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)Z
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/activity/VastView;I)I
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->D:I

    return p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->d()V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/activity/VastView;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->G:Z

    return p1
.end method

.method public static synthetic c(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->S:Lio/bidmachine/iab/vast/activity/VastView$B;

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/iab/vast/activity/VastView;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->H:Z

    return p1
.end method

.method public static synthetic d(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->T:Lio/bidmachine/iab/vast/activity/VastView$B;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/vast/activity/VastView;Z)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    return-void
.end method

.method public static synthetic e(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a0:Lio/bidmachine/iab/vast/activity/VastView$B;

    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/iab/vast/activity/VastView;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->J:Z

    return p1
.end method

.method public static synthetic f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/iab/vast/activity/VastView;Z)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Z)V

    return-void
.end method

.method public static synthetic g(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->g()V

    return-void
.end method

.method private getAvailableHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getAvailableWidth()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static synthetic h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    return-object p0
.end method

.method public static synthetic i(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastViewListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    return-object p0
.end method

.method public static synthetic j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->U:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic k(Lio/bidmachine/iab/vast/activity/VastView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->V:I

    return p0
.end method

.method public static synthetic l(Lio/bidmachine/iab/vast/activity/VastView;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->V:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->V:I

    return v0
.end method

.method public static synthetic m(Lio/bidmachine/iab/vast/activity/VastView;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->W:F

    return p0
.end method

.method public static synthetic n(Lio/bidmachine/iab/vast/activity/VastView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->H:Z

    return p0
.end method

.method public static synthetic o(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->r()V

    return-void
.end method

.method public static synthetic p(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->l()V

    return-void
.end method

.method public static synthetic q(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->y()V

    return-void
.end method

.method public static synthetic r(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->u()V

    return-void
.end method

.method public static synthetic s(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->x()V

    return-void
.end method

.method private setCloseControlsVisible(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->L:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->w()V

    return-void
.end method

.method private setLoadingViewVisibility(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->bringToFront()V

    return-void

    :cond_11
    const/16 p1, 0x8

    .line 8
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    return-void
.end method

.method private setMute(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMuted"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean p1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->x()V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean p1, p1, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    if-eqz p1, :cond_10

    .line 4
    sget-object p1, Lio/bidmachine/iab/vast/TrackingEvent;->mute:Lio/bidmachine/iab/vast/TrackingEvent;

    goto :goto_12

    .line 5
    :cond_10
    sget-object p1, Lio/bidmachine/iab/vast/TrackingEvent;->unmute:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 6
    :goto_12
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    return-void
.end method

.method private setPlaceholderViewVisible(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v1, :cond_b

    .line 3
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->getPlaceholderTimeoutSec()F

    move-result v1

    goto :goto_d

    :cond_b
    const/high16 v1, 0x40400000    # 3.0f

    .line 4
    :goto_d
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    return-void
.end method

.method public static synthetic t(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->h()V

    return-void
.end method

.method public static synthetic u(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->z()V

    return-void
.end method

.method public static synthetic v(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->O:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic w(Lio/bidmachine/iab/vast/activity/VastView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->i()Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->o()V

    return-void
.end method

.method public static synthetic y(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->f()V

    return-void
.end method

.method public static synthetic z(Lio/bidmachine/iab/vast/activity/VastView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    return p0
.end method


# virtual methods
.method public final A()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setMute(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/iab/vast/tags/CompanionTag;)Landroid/view/View;
    .registers 12

    .line 212
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 214
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    if-lez v1, :cond_10

    .line 215
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_17

    :cond_10
    if-eqz v0, :cond_15

    const/high16 v1, 0x44360000    # 728.0f

    goto :goto_17

    :cond_15
    const/high16 v1, 0x43a00000    # 320.0f

    .line 216
    :goto_17
    invoke-static {p1, v1}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 223
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v2

    if-lez v2, :cond_27

    .line 224
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2e

    :cond_27
    if-eqz v0, :cond_2c

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_2e

    :cond_2c
    const/high16 v0, 0x42480000    # 50.0f

    .line 225
    :goto_2e
    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 232
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->generateViewId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 235
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v0, 0x0

    .line 236
    invoke-virtual {v3, v0}, Landroid/view/View;->setScrollContainer(Z)V

    .line 237
    invoke-virtual {v3, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 238
    invoke-virtual {v3, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v1, 0x2000000

    .line 239
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 240
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 241
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 242
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->h0:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j0:Landroid/webkit/WebViewClient;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 244
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->i0:Landroid/webkit/WebChromeClient;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 245
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHtml()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 247
    const-string v7, "utf-8"

    const/4 v8, 0x0

    const-string v4, ""

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7f
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 251
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final a(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 3

    .line 320
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 322
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public final a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    if-nez p2, :cond_1a

    .line 202
    new-instance p2, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {p2}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 203
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getAssetsColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    .line 204
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getAssetsBackgroundColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    return-object p2

    .line 207
    :cond_1a
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->hasStrokeColor()Z

    move-result v0

    if-nez v0, :cond_27

    .line 208
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getAssetsColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    .line 210
    :cond_27
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->hasFillColor()Z

    move-result v0

    if-nez v0, :cond_34

    .line 211
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getAssetsBackgroundColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    :cond_34
    return-object p2
.end method

.method public final a()V
    .registers 3

    .line 323
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/utils/IabElementWrapper;

    .line 324
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->cancelHide()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final a(Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 325
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "handleCompanionExpired - %s"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    sget-object p1, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_COMPANION:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 329
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-eqz p1, :cond_1b

    .line 330
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->k()V

    const/4 p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Z)V

    :cond_1b
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 5

    .line 363
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Banner Event: %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-eqz v0, :cond_16

    .line 365
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/Map;Lio/bidmachine/iab/vast/TrackingEvent;)V

    :cond_16
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 146
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 172
    :cond_11
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->g:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-eqz p1, :cond_18

    .line 173
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_18
    return-void

    .line 174
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->g:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-nez v0, :cond_2e

    .line 175
    new-instance v0, Lio/bidmachine/iab/utils/IabCloseWrapper;

    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$s;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$s;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabCloseWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->g:Lio/bidmachine/iab/utils/IabCloseWrapper;

    .line 192
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-eqz p1, :cond_35

    .line 196
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 197
    :goto_36
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->g:Lio/bidmachine/iab/utils/IabCloseWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastExtension;Z)V
    .registers 5

    if-nez p2, :cond_3f

    if-eqz p1, :cond_12

    .line 125
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCtaStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 127
    :cond_12
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->m:Lio/bidmachine/iab/utils/IabCtaWrapper;

    if-nez p2, :cond_27

    .line 128
    new-instance p2, Lio/bidmachine/iab/utils/IabCtaWrapper;

    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$r;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$r;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-direct {p2, v0}, Lio/bidmachine/iab/utils/IabCtaWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->m:Lio/bidmachine/iab/utils/IabCtaWrapper;

    .line 134
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    if-eqz p1, :cond_2e

    .line 138
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCtaStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p2

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    .line 139
    :goto_2f
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->m:Lio/bidmachine/iab/utils/IabCtaWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void

    .line 144
    :cond_3f
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->m:Lio/bidmachine/iab/utils/IabCtaWrapper;

    if-eqz p1, :cond_46

    .line 145
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_46
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/CacheControl;Z)V
    .registers 6

    .line 41
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$p;

    invoke-direct {v0, p0, p4, p3}, Lio/bidmachine/iab/vast/activity/VastView$p;-><init>(Lio/bidmachine/iab/vast/activity/VastView;ZLio/bidmachine/iab/CacheControl;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/vast/VastRequest;->setVastVideoLoadedListener(Lio/bidmachine/iab/vast/VastVideoLoadedListener;)V

    .line 57
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/VastExtension;)V

    const/4 p1, 0x1

    .line 58
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setPlaceholderViewVisible(Z)V

    .line 59
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Z)V
    .registers 6

    .line 60
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result v1

    iput v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->A:I

    if-eqz v0, :cond_21

    .line 64
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->getCtaStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 65
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->getCompanionTag()Lio/bidmachine/iab/vast/tags/CompanionTag;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    goto :goto_24

    :cond_21
    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 70
    :goto_24
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-nez v1, :cond_32

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/bidmachine/iab/vast/processor/VastAd;->getBanner(Landroid/content/Context;)Lio/bidmachine/iab/vast/tags/CompanionTag;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 73
    :cond_32
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 76
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    const/4 p2, 0x1

    goto :goto_3d

    :cond_3c
    move p2, v1

    :goto_3d
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Z)V

    .line 77
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 78
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 79
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->e(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 80
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 81
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->g(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 82
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 83
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 86
    invoke-direct {p0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 88
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    if-eqz p2, :cond_66

    .line 89
    invoke-interface {p2, p0}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V

    .line 90
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    invoke-interface {p2, v1}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdView(Landroid/view/View;)V

    .line 93
    :cond_66
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz p2, :cond_78

    .line 95
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-eqz v1, :cond_73

    .line 96
    iget v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->B:I

    goto :goto_75

    .line 97
    :cond_73
    iget v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->A:I

    .line 98
    :goto_75
    invoke-interface {p2, p0, p1, v1}, Lio/bidmachine/iab/vast/VastViewListener;->onOrientationRequested(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;I)V

    :cond_78
    if-nez p3, :cond_b1

    .line 105
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    .line 106
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->M:Z

    iput-boolean v1, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    .line 107
    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->N:Z

    iput-boolean v1, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    if-eqz v0, :cond_94

    .line 109
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->isMuted()Z

    move-result v0

    iput-boolean v0, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    .line 111
    :cond_94
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getFusedVideoCloseTimeSec()F

    move-result v0

    iput v0, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    .line 112
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    if-eqz p2, :cond_aa

    .line 113
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    invoke-interface {p2, v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdViewReady(Landroid/view/View;)V

    .line 114
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    invoke-interface {p2}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdShown()V

    .line 116
    :cond_aa
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz p2, :cond_b1

    .line 117
    invoke-interface {p2, p0, p1}, Lio/bidmachine/iab/vast/VastViewListener;->onShown(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V

    .line 122
    :cond_b1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;)Z

    move-result p1

    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load (restoring: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastSpecError;)V
    .registers 3

    .line 382
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    :cond_7
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 381
    invoke-interface {p1, p0, p2, p3}, Lio/bidmachine/iab/vast/VastViewListener;->onShowFailed(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_18

    :cond_7
    if-eqz p1, :cond_19

    .line 373
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_19

    .line 377
    :cond_10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_18
    :goto_18
    return-void

    .line 380
    :cond_19
    :goto_19
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\turl list is null"

    invoke-static {p1, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 366
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 367
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    return-void

    .line 369
    :cond_12
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Processing Event - fail: %s (tracking event map is null or empty)"

    invoke-static {p1, v0, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .registers 6

    .line 253
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_119

    :cond_8
    const/4 v0, 0x0

    if-nez p1, :cond_49

    .line 257
    invoke-direct {p0}, Lio/bidmachine/iab/vast/activity/VastView;->getAvailableWidth()I

    move-result p1

    .line 258
    invoke-direct {p0}, Lio/bidmachine/iab/vast/activity/VastView;->getAvailableHeight()I

    move-result v1

    .line 259
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v2}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v2

    .line 260
    invoke-virtual {v2, p1, v1}, Lio/bidmachine/iab/vast/processor/VastAd;->getCompanion(II)Lio/bidmachine/iab/vast/tags/CompanionTag;

    move-result-object p1

    .line 261
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-eq v1, p1, :cond_49

    if-eqz p1, :cond_3a

    .line 262
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->shouldUseScreenSizeForCompanionOrientation()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 263
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lio/bidmachine/iab/utils/Utils;->orientationBySize(II)I

    move-result v1

    iput v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->B:I

    goto :goto_3e

    .line 265
    :cond_3a
    iget v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->A:I

    iput v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->B:I

    .line 267
    :goto_3e
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 268
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz p1, :cond_49

    .line 269
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->destroy()V

    .line 270
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    .line 274
    :cond_49
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-nez p1, :cond_5c

    .line 275
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_119

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    return-void

    .line 278
    :cond_5c
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_119

    .line 279
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->p()V

    .line 280
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHtmlForMraid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_110

    .line 282
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 285
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->getPostBannerTag()Lio/bidmachine/iab/vast/tags/PostBannerTag;

    move-result-object v1

    goto :goto_7d

    :cond_7c
    move-object v1, v0

    .line 288
    :goto_7d
    new-instance v2, Lio/bidmachine/iab/vast/activity/VastView$y;

    invoke-direct {v2, p0, v0}, Lio/bidmachine/iab/vast/activity/VastView$y;-><init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/activity/VastView$k;)V

    .line 289
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidInterstitial;->newBuilder()Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v0}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    sget-object v3, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    .line 291
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 292
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v3

    invoke-virtual {v0, v3}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 293
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v3

    invoke-virtual {v0, v3}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setIsTag(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->y:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 295
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setListener(Lio/bidmachine/iab/mraid/MraidInterstitialListener;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    if-eqz v1, :cond_f7

    .line 300
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 301
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 302
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getLoadingStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setLoadingStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 303
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 304
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getDurationSec()F

    move-result v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 305
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getProductLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 306
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->isForceUseNativeClose()Z

    move-result v2

    if-eqz v2, :cond_e9

    const/4 v2, 0x1

    .line 307
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 309
    :cond_e9
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->isR1()Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 310
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->isR2()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    .line 313
    :cond_f7
    :try_start_f7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidInterstitial;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    .line 314
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_f7 .. :try_end_104} :catchall_105

    return-void

    :catchall_105
    move-exception p1

    .line 316
    const-string v0, "Exception during companion creation"

    invoke-static {v0, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/IabError;)V

    goto :goto_119

    .line 319
    :cond_110
    const-string p1, "Companion creative is null"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/IabError;)V

    :cond_119
    :goto_119
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;)Z
    .registers 4

    .line 124
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getVideoType()Lio/bidmachine/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result p1

    if-gtz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z
    .registers 6

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    if-nez p3, :cond_c

    .line 15
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/activity/VastView$C;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    :cond_c
    if-eqz p2, :cond_16

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    .line 20
    :cond_16
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    const/4 p2, 0x0

    if-nez p1, :cond_28

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    .line 23
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "VastRequest is null. Stop playing..."

    invoke-static {p1, v0, p3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 26
    :cond_28
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    .line 29
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "VastAd is null. Stop playing..."

    invoke-static {p1, v0, p3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 33
    :cond_3b
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getCacheControl()Lio/bidmachine/iab/CacheControl;

    move-result-object p2

    .line 34
    sget-object v1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    if-ne p2, v1, :cond_4d

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 35
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/CacheControl;Z)V

    goto :goto_6a

    .line 36
    :cond_4d
    sget-object v1, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    if-ne p2, v1, :cond_67

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v1

    if-nez v1, :cond_67

    .line 37
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/CacheControl;Z)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->performCache(Landroid/content/Context;Lio/bidmachine/iab/vast/VastRequestListener;)V

    goto :goto_6a

    .line 40
    :cond_67
    invoke-virtual {p0, p1, v0, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Z)V

    :goto_6a
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z
    .registers 5

    .line 332
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 333
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    if-eqz v0, :cond_12

    .line 336
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getWrapperCompanionClickTrackingUrlList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz p1, :cond_1a

    .line 339
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getCompanionClickTrackingList()Ljava/util/List;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, v1

    :goto_1b
    if-nez v0, :cond_20

    if-nez p1, :cond_20

    goto :goto_2f

    .line 346
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2a

    .line 348
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    if-eqz v0, :cond_2f

    .line 351
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    :cond_2f
    :goto_2f
    invoke-virtual {p0, v1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7

    .line 355
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "processClickThroughEvent: %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    if-eqz p2, :cond_2d

    .line 359
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_2c

    .line 360
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->l()V

    .line 361
    invoke-direct {p0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 362
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    new-instance v3, Lio/bidmachine/iab/vast/activity/VastView$x;

    invoke-direct {v3, p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$x;-><init>(Lio/bidmachine/iab/vast/activity/VastView;Ljava/util/List;)V

    invoke-interface {v0, p0, v2, v3, p2}, Lio/bidmachine/iab/vast/VastViewListener;->onClick(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V

    :cond_2c
    return v1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method public addView(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 142
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->z:Lio/bidmachine/iab/vast/activity/VastView$z;

    if-eqz v0, :cond_a

    .line 143
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView$z;->a()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->z:Lio/bidmachine/iab/vast/activity/VastView$z;

    :cond_a
    return-void
.end method

.method public final b(Lio/bidmachine/iab/IabError;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleCompanionShowError - %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_COMPANION:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 148
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    .line 150
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-eqz p1, :cond_23

    .line 151
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->k()V

    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Z)V

    return-void

    .line 153
    :cond_23
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz p1, :cond_32

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_32

    .line 154
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isFinished()Z

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lio/bidmachine/iab/vast/VastViewListener;->onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V

    :cond_32
    return-void
.end method

.method public final b(Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Companion Event: %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-eqz v0, :cond_16

    .line 157
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/Map;Lio/bidmachine/iab/vast/TrackingEvent;)V

    :cond_16
    return-void
.end method

.method public final b(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 5
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 15
    :cond_11
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz p1, :cond_18

    .line 16
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_18
    return-void

    .line 17
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 18
    new-instance v0, Lio/bidmachine/iab/utils/IabCountDownWrapper;

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabCountDownWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    .line 19
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    if-eqz p1, :cond_30

    .line 23
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    .line 24
    :cond_30
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public final b(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    const/4 p3, 0x0

    .line 31
    invoke-interface {p1, p0, p2, p3}, Lio/bidmachine/iab/vast/VastViewListener;->onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V

    :cond_b
    return-void
.end method

.method public final b(Z)V
    .registers 11

    .line 32
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    if-eqz v0, :cond_d

    :cond_a
    move-object v4, p0

    goto/16 :goto_fb

    :cond_d
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    .line 36
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean v0, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 38
    iget v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->B:I

    if-eq v1, v2, :cond_2b

    .line 39
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v1, :cond_2b

    .line 40
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-interface {v1, p0, v3, v2}, Lio/bidmachine/iab/vast/VastViewListener;->onOrientationRequested(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;I)V

    .line 43
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    if-eqz v1, :cond_32

    .line 44
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 46
    :cond_32
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    if-eqz v1, :cond_39

    .line 47
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 49
    :cond_39
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

    if-eqz v1, :cond_40

    .line 50
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 53
    :cond_40
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->a()V

    .line 55
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_73

    .line 56
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_58

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    .line 59
    :cond_58
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    .line 66
    :cond_73
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Z)V

    .line 67
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-nez p1, :cond_b5

    .line 68
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    .line 70
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_a9

    .line 71
    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    new-instance v3, Lio/bidmachine/iab/vast/activity/VastView$w;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 75
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v6

    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 76
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/iab/vast/activity/VastView$w;-><init>(Lio/bidmachine/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    iput-object v3, v4, Lio/bidmachine/iab/vast/activity/VastView;->z:Lio/bidmachine/iab/vast/activity/VastView$z;

    goto :goto_aa

    :cond_a9
    move-object v4, p0

    .line 114
    :goto_aa
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v0, v4, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ee

    :cond_b5
    move-object v4, p0

    const/4 p1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    .line 120
    iget-object v1, v4, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->o()V

    .line 122
    iget-object v1, v4, Lio/bidmachine/iab/vast/activity/VastView;->m:Lio/bidmachine/iab/utils/IabCtaWrapper;

    if-eqz v1, :cond_cb

    .line 123
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    .line 126
    :cond_cb
    iget-object v1, v4, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v1, :cond_e2

    .line 127
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 128
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 129
    iget-object v0, v4, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    goto :goto_ee

    .line 131
    :cond_de
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_ee

    .line 134
    :cond_e2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 135
    const-string p1, "CompanionInterstitial is null"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/IabError;)V

    .line 138
    :goto_ee
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    .line 139
    iget-object p1, v4, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 141
    sget-object p1, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/TrackingEvent;)V

    :goto_fb
    return-void
.end method

.method public final c()V
    .registers 2

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lio/bidmachine/iab/IabError;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handlePlaybackError - %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->K:Z

    .line 9
    sget-object v0, Lio/bidmachine/iab/vast/VastSpecError;->SHOWING:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->j()V

    return-void
.end method

.method public final c(Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 5

    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Event: %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_14

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1e

    .line 18
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/Map;Lio/bidmachine/iab/vast/TrackingEvent;)V

    :cond_1e
    return-void
.end method

.method public final c(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 2

    if-eqz p1, :cond_d

    .line 4
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->isVideoClickable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_d
    return-void
.end method

.method public final d()V
    .registers 4

    .line 25
    iget v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->C:I

    if-eqz v0, :cond_f

    iget v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->D:I

    if-nez v1, :cond_9

    goto :goto_f

    .line 29
    :cond_9
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->b:Lio/bidmachine/iab/vast/view/IabVideoTexture;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/iab/vast/view/IabVideoTexture;->setVideoSize(II)V

    return-void

    .line 30
    :cond_f
    :goto_f
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "configureVideoSurface - skip: videoWidth or videoHeight is 0"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 3
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getLoadingStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 12
    :cond_11
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    if-eqz p1, :cond_18

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_18
    return-void

    .line 14
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 15
    new-instance v0, Lio/bidmachine/iab/utils/IabLoadingWrapper;

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabLoadingWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    :cond_25
    if-eqz p1, :cond_2b

    .line 19
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getLoadingStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    .line 20
    :cond_2b
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->k:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->destroy()V

    .line 3
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    .line 4
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 6
    :cond_c
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    .line 7
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 8
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 9
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->y:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->z:Lio/bidmachine/iab/vast/activity/VastView$z;

    if-eqz v0, :cond_1d

    .line 11
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView$z;->a()V

    .line 12
    iput-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->z:Lio/bidmachine/iab/vast/activity/VastView$z;

    :cond_1d
    return-void
.end method

.method public display(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Boolean;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastRequest",
            "isFullscreen"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .registers 4

    .line 37
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleClose"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->close:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 40
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v1, :cond_1e

    .line 41
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isFinished()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lio/bidmachine/iab/vast/VastViewListener;->onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V

    :cond_1e
    return-void
.end method

.method public final e(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 3
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getMuteStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 18
    :cond_11
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    if-eqz p1, :cond_18

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_18
    return-void

    .line 20
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    if-nez v0, :cond_2e

    .line 21
    new-instance v0, Lio/bidmachine/iab/utils/IabMuteWrapper;

    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$t;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$t;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabMuteWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    .line 27
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-eqz p1, :cond_35

    .line 31
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getMuteStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 32
    :goto_36
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public final f()V
    .registers 4

    .line 32
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleCompanionClose"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->close:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 35
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v1, :cond_1e

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isFinished()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lio/bidmachine/iab/vast/VastViewListener;->onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V

    :cond_1e
    return-void
.end method

.method public final f(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 3
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 4
    :goto_9
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v2, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz p1, :cond_1e

    .line 13
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    .line 14
    :cond_1e
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$q;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$q;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V

    .line 31
    :cond_31
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/VastExtension;)V

    return-void
.end method

.method public final g()V
    .registers 4

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleComplete"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 31
    iget-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->K:Z

    if-nez v2, :cond_41

    iget-boolean v2, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    if-nez v2, :cond_41

    .line 32
    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    .line 33
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_20

    .line 34
    invoke-interface {v0}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoCompleted()V

    .line 36
    :cond_20
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v0, :cond_29

    .line 37
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-interface {v0, p0, v1}, Lio/bidmachine/iab/vast/VastViewListener;->onComplete(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V

    .line 39
    :cond_29
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->isR2()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    if-nez v0, :cond_3c

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->i()Z

    .line 42
    :cond_3c
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 44
    :cond_41
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    if-eqz v0, :cond_4a

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->j()V

    :cond_4a
    return-void
.end method

.method public final g(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 2
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 13
    :cond_11
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    if-eqz p1, :cond_18

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_18
    return-void

    .line 15
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 16
    new-instance v0, Lio/bidmachine/iab/utils/IabProgressWrapper;

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabProgressWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    .line 17
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    if-eqz p1, :cond_30

    .line 21
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    .line 22
    :cond_30
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 27
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lio/bidmachine/iab/utils/IabProgressWrapper;->changePercentage(FII)V

    return-void
.end method

.method public getListener()Lio/bidmachine/iab/vast/VastViewListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    return-object v0
.end method

.method public final h()V
    .registers 4

    .line 22
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleImpressions"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_1e

    .line 25
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    .line 26
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    :cond_1e
    return-void
.end method

.method public final h(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 5

    if-eqz p1, :cond_39

    .line 2
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getRepeatStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

    if-nez v0, :cond_25

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/IabRepeatWrapper;

    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$u;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$u;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabRepeatWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

    .line 10
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_25
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getRepeatStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void

    .line 20
    :cond_39
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->i:Lio/bidmachine/iab/utils/IabRepeatWrapper;

    if-eqz p1, :cond_40

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_40
    return-void
.end method

.method public handleBackPress()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->f:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout;->canBeClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    const-string v2, "OnBackPress event fired"

    invoke-static {v2}, Lio/bidmachine/iab/IabError;->placeholder(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_4e

    .line 8
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->m()V

    return-void

    .line 10
    :cond_2f
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVideoType()Lio/bidmachine/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->NonRewarded:Lio/bidmachine/iab/vast/VideoType;

    if-ne v0, v1, :cond_4e

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    if-nez v0, :cond_43

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    return-void

    .line 13
    :cond_43
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_4b

    .line 14
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->dispatchClose()V

    return-void

    .line 16
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->f()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final i(Lio/bidmachine/iab/vast/VastExtension;)V
    .registers 15

    if-eqz p1, :cond_d

    .line 2
    sget-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_VIDEO_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getVideoStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    goto :goto_f

    .line 4
    :cond_d
    sget-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_VIDEO_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    :goto_f
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    .line 6
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->isVideoClickable()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_24

    .line 10
    :cond_19
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    new-instance v3, Lio/bidmachine/iab/vast/activity/VastView$v;

    invoke-direct {v3, p0}, Lio/bidmachine/iab/vast/activity/VastView$v;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2f

    .line 11
    :cond_24
    :goto_24
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 21
    :goto_2f
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->o()V

    .line 23
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    const/16 v3, 0xd

    const/4 v4, -0x1

    if-eqz v2, :cond_14d

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v2, v2, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v2, :cond_14d

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-virtual {p0, v2, v5}, Lio/bidmachine/iab/vast/activity/VastView;->a(Landroid/content/Context;Lio/bidmachine/iab/vast/tags/CompanionTag;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    .line 26
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "inline"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 33
    sget-object v3, Lio/bidmachine/iab/utils/Assets;->DEF_INLINE_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v11, 0xc

    const/16 v12, 0xa

    if-ne v6, v8, :cond_c4

    const/16 v6, 0xf

    .line 36
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 38
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_b3

    .line 41
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_103

    .line 45
    :cond_b3
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_103

    :cond_c4
    const/16 v1, 0xe

    .line 50
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 52
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_ed

    .line 55
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_103

    .line 59
    :cond_ed
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_103

    .line 65
    :cond_fd
    sget-object v1, Lio/bidmachine/iab/utils/Assets;->DEF_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v1

    :goto_103
    if-eqz p1, :cond_10d

    .line 71
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastExtension;->getCtaStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v3

    .line 76
    :cond_10d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v3, p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, p1, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 78
    invoke-virtual {v3, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v3}, Lio/bidmachine/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 83
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget-object p1, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/TrackingEvent;)V

    return-void

    .line 87
    :cond_14d
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final i()Z
    .registers 5

    .line 92
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleInfoClicked"

    invoke-static {v0, v3, v2}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_25

    .line 95
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 96
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/processor/VastAd;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_25
    return v1
.end method

.method public isCompanionShown()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    return v0
.end method

.method public isFinished()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    if-nez v0, :cond_23

    :cond_13
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-eqz v0, :cond_25

    :cond_23
    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaybackStarted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->J:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isSkipEnabled()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    if-nez v1, :cond_10

    iget v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoFileLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "finishVideoPlaying"

    invoke-static {v0, v3, v2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_4d

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->isAutoClose()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 7
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 8
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->getPostBannerTag()Lio/bidmachine/iab/vast/tags/PostBannerTag;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->isVisible()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_4d

    .line 14
    :cond_38
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 15
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->close:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 17
    :cond_43
    invoke-direct {p0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->o()V

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->s()V

    return-void

    .line 20
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    return-void
.end method

.method public final k()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->p()V

    goto :goto_14

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->s:Lio/bidmachine/iab/mraid/MraidInterstitial;

    .line 7
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    return-void
.end method

.method public final l()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    if-nez v0, :cond_3a

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pausePlayback"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 6
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->c()V

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->a()V

    .line 10
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->pause:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_3a

    .line 12
    invoke-interface {v0}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoPaused()V

    :cond_3a
    return-void
.end method

.method public final m()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "performVideoCloseClick"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    .line 5
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->K:Z

    if-nez v0, :cond_49

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    if-nez v0, :cond_23

    .line 7
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->skip:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_23

    .line 9
    invoke-interface {v0}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoSkipped()V

    .line 14
    :cond_23
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_45

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVideoType()Lio/bidmachine/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    if-eqz v0, :cond_45

    .line 17
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_3c

    .line 18
    invoke-interface {v0}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoCompleted()V

    .line 20
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    if-eqz v0, :cond_45

    .line 21
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-interface {v0, p0, v1}, Lio/bidmachine/iab/vast/VastViewListener;->onComplete(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V

    .line 24
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->j()V

    return-void

    .line 26
    :cond_49
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->e()V

    return-void
.end method

.method public final n()V
    .registers 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v0, :cond_8f

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 5
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->c0:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->d0:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->e0:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->f0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_40

    :catch_3e
    move-exception v0

    goto :goto_81

    .line 13
    :cond_40
    :goto_40
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-nez v0, :cond_6f

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 20
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_7b

    .line 22
    :cond_6f
    invoke-direct {p0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 23
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 25
    :goto_7b
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_3e

    return-void

    .line 28
    :goto_81
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const-string v1, "Exception during preparing MediaPlayer"

    invoke-static {v1, v0}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/IabError;)V

    :cond_8f
    return-void
.end method

.method public final o()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->o:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    if-eqz v0, :cond_c

    .line 4
    const-string v0, "onAttachedToWindow"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/VastExtension;)V

    :cond_16
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lio/bidmachine/iab/vast/activity/VastView$A;

    if-nez v0, :cond_8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 5
    :cond_8
    check-cast p1, Lio/bidmachine/iab/vast/activity/VastView$A;

    .line 6
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 7
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$A;->a:Lio/bidmachine/iab/vast/activity/VastView$C;

    if-eqz p1, :cond_17

    .line 8
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    .line 10
    :cond_17
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/iab/vast/VastRequestManager;->get(Ljava/lang/String;)Lio/bidmachine/iab/vast/VastRequest;

    move-result-object p1

    if-eqz p1, :cond_26

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z

    :cond_26
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    .line 4
    :cond_10
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5
    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$A;

    invoke-direct {v1, v0}, Lio/bidmachine/iab/vast/activity/VastView$A;-><init>(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-object v0, v1, Lio/bidmachine/iab/vast/activity/VastView$A;->a:Lio/bidmachine/iab/vast/activity/VastView$C;

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onWindowFocusChanged: %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->z()V

    return-void
.end method

.method public final p()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->b()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    :cond_f
    return-void
.end method

.method public final q()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    .line 6
    iput v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->k()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/VastExtension;)V

    .line 10
    const-string v0, "restartPlayback"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 7
    invoke-direct {p0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    return-void

    .line 8
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v0, :cond_66

    .line 9
    const-string v0, "resumePlayback (canAutoResume: false)"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_27
    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    if-eqz v0, :cond_66

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "resumePlayback"

    invoke-static {v0, v3, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean v2, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->y()V

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->u()V

    .line 21
    invoke-direct {p0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    .line 22
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->resume:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 23
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_66

    .line 24
    invoke-interface {v0}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoResumed()V

    return-void

    .line 26
    :cond_5d
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v0, :cond_66

    .line 27
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method public final s()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->b(Z)V

    return-void
.end method

.method public setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastAdMeasurer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->x:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-void
.end method

.method public setCanAutoResume(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canAutoResume"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->M:Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean p1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    return-void
.end method

.method public setCanIgnorePostBanner(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canIgnorePostBanner"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->N:Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean p1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    return-void
.end method

.method public setListener(Lio/bidmachine/iab/vast/VastViewListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->v:Lio/bidmachine/iab/vast/VastViewListener;

    return-void
.end method

.method public setPlaybackListener(Lio/bidmachine/iab/vast/VastPlaybackListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    return-void
.end method

.method public setPostBannerAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mraidAdMeasurer"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;-><init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2
    :goto_9
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->y:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    return-void
.end method

.method public startPlayback(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "startPlayback: %s"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_4a

    :cond_12
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView;->setPlaceholderViewVisible(Z)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-eqz v0, :cond_20

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->s()V

    return-void

    .line 9
    :cond_20
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 10
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->G:Z

    if-eqz v0, :cond_3b

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->stopPlayback()V

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->k()V

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->d()V

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->n()V

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->g0:Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;

    invoke-static {p0, v0}, Lio/bidmachine/iab/vast/VastHelper;->addScreenStateChangeListener(Landroid/view/View;Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;)V

    goto :goto_3d

    .line 17
    :cond_3b
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->H:Z

    .line 19
    :goto_3d
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 20
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void

    .line 23
    :cond_4b
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->F:Z

    return-void
.end method

.method public stopPlayback()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3f

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stopPlayback"

    invoke-static {v0, v3, v2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    :try_start_13
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 7
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_23

    :catch_21
    move-exception v2

    goto :goto_2e

    .line 9
    :cond_23
    :goto_23
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 10
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_21

    goto :goto_33

    .line 12
    :goto_2e
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_33
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 16
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->J:Z

    .line 17
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->K:Z

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->c()V

    .line 20
    invoke-static {p0}, Lio/bidmachine/iab/vast/VastHelper;->removeScreenStateChangeListener(Landroid/view/View;)V

    :cond_3f
    return-void
.end method

.method public final t()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/utils/IabElementWrapper;

    .line 3
    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->toggleShow()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final u()V
    .registers 2

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->v()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->c()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->R:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final v()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->U:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->V:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->W:F

    return-void
.end method

.method public final w()V
    .registers 6

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->L:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    move v0, v1

    move v2, v0

    goto :goto_18

    .line 5
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->I:Z

    if-eqz v0, :cond_14

    goto :goto_17

    :cond_14
    move v0, v2

    move v2, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 12
    :goto_18
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView;->g:Lio/bidmachine/iab/utils/IabCloseWrapper;

    const/16 v4, 0x8

    if-eqz v3, :cond_26

    if-eqz v2, :cond_22

    move v2, v1

    goto :goto_23

    :cond_22
    move v2, v4

    .line 13
    :goto_23
    invoke-virtual {v3, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    .line 17
    :cond_26
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz v2, :cond_31

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v4

    .line 18
    :goto_2e
    invoke-virtual {v2, v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    :cond_31
    return-void
.end method

.method public final x()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->j:Lio/bidmachine/iab/utils/IabMuteWrapper;

    if-nez v0, :cond_b

    goto :goto_34

    .line 5
    :cond_b
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabMuteWrapper;->setMuted(Z)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    if-eqz v0, :cond_26

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_34

    .line 9
    invoke-interface {v0, v1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoVolumeChanged(F)V

    return-void

    .line 12
    :cond_26
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->w:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_34

    .line 14
    invoke-interface {v0, v1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoVolumeChanged(F)V

    :cond_34
    :goto_34
    return-void
.end method

.method public final y()V
    .registers 2

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->t()V

    return-void
.end method

.method public final z()V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->E:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastHelper;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 4
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView;->F:Z

    .line 5
    const-string v0, "onWindowFocusChanged"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->r()V

    return-void

    .line 9
    :cond_25
    invoke-direct {p0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    return-void

    .line 12
    :cond_29
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/activity/VastView;->l()V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.A (io.bidmachine.iab.vast.activity.VastView$A)
.class public Lio/bidmachine/iab/vast/activity/VastView$A;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "A"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/iab/vast/activity/VastView$A;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lio/bidmachine/iab/vast/activity/VastView$C;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$A$a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/activity/VastView$A$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/activity/VastView$A;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    const-class v0, Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$A;->a:Lio/bidmachine/iab/vast/activity/VastView$C;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$A;->a:Lio/bidmachine/iab/vast/activity/VastView$C;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.A.a (io.bidmachine.iab.vast.activity.VastView$A$a)
.class public Lio/bidmachine/iab/vast/activity/VastView$A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView$A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/activity/VastView$A;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$A;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/activity/VastView$A;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/bidmachine/iab/vast/activity/VastView$A;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/bidmachine/iab/vast/activity/VastView$A;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$A$a;->a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/activity/VastView$A;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$A$a;->a(I)[Lio/bidmachine/iab/vast/activity/VastView$A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.B (io.bidmachine.iab.vast.activity.VastView$B)
.class public interface abstract Lio/bidmachine/iab/vast/activity/VastView$B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "B"
.end annotation


# virtual methods
.method public abstract a(IIF)V
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.C (io.bidmachine.iab.vast.activity.VastView$C)
.class public Lio/bidmachine/iab/vast/activity/VastView$C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/iab/vast/activity/VastView$C;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$C$a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/activity/VastView$C$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/activity/VastView$C;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    .line 6
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    .line 12
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    .line 14
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    .line 16
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    .line 18
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    .line 19
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 23
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    .line 25
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    .line 28
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    .line 29
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 30
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    .line 31
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 32
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    .line 33
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    .line 35
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    .line 37
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    .line 38
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_44

    move v2, v1

    goto :goto_45

    :cond_44
    move v2, v0

    :goto_45
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v1

    goto :goto_50

    :cond_4f
    move v2, v0

    :goto_50
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5a

    move v2, v1

    goto :goto_5b

    :cond_5a
    move v2, v0

    :goto_5b
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_65

    move v2, v1

    goto :goto_66

    :cond_65
    move v2, v0

    :goto_66
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_70

    move v2, v1

    goto :goto_71

    :cond_70
    move v2, v0

    :goto_71
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v1

    goto :goto_7c

    :cond_7b
    move v2, v0

    :goto_7c
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_86

    move v2, v1

    goto :goto_87

    :cond_86
    move v2, v0

    :goto_87
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_91

    move v2, v1

    goto :goto_92

    :cond_91
    move v2, v0

    :goto_92
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9c

    move v2, v1

    goto :goto_9d

    :cond_9c
    move v2, v0

    :goto_9d
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_a6

    move v0, v1

    :cond_a6
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->e:Z

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    int-to-byte p2, p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    int-to-byte p2, p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    int-to-byte p2, p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    int-to-byte p2, p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    int-to-byte p2, p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    int-to-byte p2, p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    int-to-byte p2, p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    int-to-byte p2, p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$C;->n:Z

    int-to-byte p2, p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.C.a (io.bidmachine.iab.vast.activity.VastView$C$a)
.class public Lio/bidmachine/iab/vast/activity/VastView$C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView$C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/activity/VastView$C;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$C;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/activity/VastView$C;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/bidmachine/iab/vast/activity/VastView$C;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/bidmachine/iab/vast/activity/VastView$C;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$C$a;->a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/activity/VastView$C;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$C$a;->a(I)[Lio/bidmachine/iab/vast/activity/VastView$C;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.PostBannerAdMeasurer (io.bidmachine.iab.vast.activity.VastView$PostBannerAdMeasurer)
.class public Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/measurer/MraidAdMeasurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostBannerAdMeasurer"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/vast/activity/VastView;

.field public final b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastView",
            "mraidAdMeasurer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    return-void
.end method

.method public onAdShown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdShown()V

    return-void
.end method

.method public bridge synthetic onAdViewReady(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "webView"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->onAdViewReady(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onAdViewReady(Landroid/webkit/WebView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webView"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdViewReady(Landroid/view/View;)V

    return-void
.end method

.method public onError(Lio/bidmachine/iab/IabError;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iabError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onError(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "html"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/MraidAdMeasurer;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerAdContainer(Landroid/view/ViewGroup;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-interface {p1, v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic registerAdView(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "webView"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->registerAdView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public registerAdView(Landroid/webkit/WebView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webView"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdView(Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.RunnableC4214a (io.bidmachine.iab.vast.activity.VastView$a)
.class public Lio/bidmachine/iab/vast/activity/VastView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$a;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$a;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;)V

    :cond_d
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.RunnableC4215b (io.bidmachine.iab.vast.activity.VastView$b)
.class public Lio/bidmachine/iab/vast/activity/VastView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v1, v1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_73

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 6
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$B;->a(IIF)V

    .line 7
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$B;->a(IIF)V

    .line 8
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastView;->e(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastView$B;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/bidmachine/iab/vast/activity/VastView$B;->a(IIF)V

    const/high16 v0, 0x42d20000    # 105.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_73

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback tracking: video hang detected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->g(Lio/bidmachine/iab/vast/activity/VastView;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_73

    :catch_5f
    move-exception v0

    .line 16
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Playback tracking exception: %s"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_73
    :goto_73
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b;->a:Lio/bidmachine/iab/vast/activity/VastView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.C4216c (io.bidmachine.iab.vast.activity.VastView$c)
.class public Lio/bidmachine/iab/vast/activity/VastView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$c;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 10

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$c;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, p3, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    if-nez v0, :cond_63

    iget p3, p3, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_63

    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 3
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_63

    .line 6
    :cond_18
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$c;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget p3, p3, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v1

    int-to-float p2, p2

    sub-float v1, p3, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p2, v2

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 9
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "Skip percent: %s"

    invoke-static {p1, v2, p3}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x64

    if-ge p2, p1, :cond_53

    .line 10
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$c;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->h:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz p1, :cond_53

    float-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    .line 13
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/iab/utils/IabCountDownWrapper;->changePercentage(II)V

    :cond_53
    cmpg-float p1, v1, v0

    if-gtz p1, :cond_63

    .line 17
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$c;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p2, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput v0, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->b:F

    const/4 p3, 0x1

    .line 18
    iput-boolean p3, p2, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 19
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    :cond_63
    :goto_63
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.d (io.bidmachine.iab.vast.activity.VastView$d)
.class public Lio/bidmachine/iab/vast/activity/VastView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v2, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->h:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_f

    iget v1, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    if-ne v1, v3, :cond_f

    goto/16 :goto_10c

    .line 4
    :cond_f
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_37

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    if-le p2, v0, :cond_37

    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p2, p2, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    .line 6
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/VastRequest;->getVideoType()Lio/bidmachine/iab/vast/VideoType;

    move-result-object p2

    sget-object v0, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    if-ne p2, v0, :cond_37

    .line 7
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->i:Z

    .line 8
    invoke-static {p2, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 10
    :cond_37
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    int-to-float v2, v0

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v2, v4

    cmpl-float v2, p3, v2

    if-lez v2, :cond_10c

    if-ne v0, v3, :cond_72

    .line 12
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Video at third quartile: (%s)"

    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 14
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 15
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoThirdQuartile()V

    goto/16 :goto_103

    :cond_72
    if-nez v0, :cond_ab

    .line 18
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Video at start: (%s)"

    invoke-static {p2, v0, p3}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object p3, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 20
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p2

    if-eqz p2, :cond_103

    .line 21
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p2

    int-to-float p1, p1

    .line 22
    iget-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p3, p3, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean p3, p3, Lio/bidmachine/iab/vast/activity/VastView$C;->f:Z

    if-eqz p3, :cond_a5

    const/4 p3, 0x0

    goto :goto_a7

    :cond_a5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 23
    :goto_a7
    invoke-interface {p2, p1, p3}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoStarted(FF)V

    goto :goto_103

    :cond_ab
    if-ne v0, v1, :cond_d7

    .line 29
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Video at first quartile: (%s)"

    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 31
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 32
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoFirstQuartile()V

    goto :goto_103

    :cond_d7
    const/4 p1, 0x2

    if-ne v0, p1, :cond_103

    .line 35
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Video at midpoint: (%s)"

    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 37
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoMidpoint()V

    .line 41
    :cond_103
    :goto_103
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$d;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget p2, p1, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    add-int/2addr p2, v1

    iput p2, p1, Lio/bidmachine/iab/vast/activity/VastView$C;->c:I

    :cond_10c
    :goto_10c
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.e (io.bidmachine.iab.vast.activity.VastView$e)
.class public Lio/bidmachine/iab/vast/activity/VastView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v1}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_46

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Playing progressing error: seek"

    invoke-static {v0, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 9
    :cond_46
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_a9

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 12
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v4}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v4

    .line 15
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 16
    const-string v2, "Playing progressing position: last=%d, first=%d)"

    invoke-static {v4, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v3, v1, :cond_8f

    .line 21
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_a9

    .line 23
    :cond_8f
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->l(Lio/bidmachine/iab/vast/activity/VastView;)I

    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->k(Lio/bidmachine/iab/vast/activity/VastView;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a9

    .line 25
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    const-string p2, "Playing progressing error: video hang detected"

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V

    return-void

    .line 31
    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->j(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz p1, :cond_f7

    if-lez p2, :cond_f7

    .line 32
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    if-eqz v1, :cond_f7

    .line 33
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playing progressing percent: %s"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->m(Lio/bidmachine/iab/vast/activity/VastView;)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_f7

    .line 35
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0, p3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;F)F

    .line 36
    div-int/lit16 p1, p1, 0x3e8

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 39
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lio/bidmachine/iab/utils/IabProgressWrapper;

    invoke-virtual {v0, p3, p2, p1}, Lio/bidmachine/iab/utils/IabProgressWrapper;->changePercentage(FII)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_f7} :catch_f7

    :catch_f7
    :cond_f7
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.f (io.bidmachine.iab.vast.activity.VastView$f)
.class public Lio/bidmachine/iab/vast/activity/VastView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {p2, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->n(Lio/bidmachine/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 7
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_30
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p2, p1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->o(Lio/bidmachine/iab/vast/activity/VastView;)V

    :cond_46
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onSurfaceTextureDestroyed"

    invoke-static {p1, v2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    const/4 v1, 0x0

    iput-object v1, p1, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    .line 4
    invoke-static {p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 7
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->p(Lio/bidmachine/iab/vast/activity/VastView;)V

    :cond_2a
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "onSurfaceTextureSizeChanged: %d/%d"

    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.g (io.bidmachine.iab.vast.activity.VastView$g)
.class public Lio/bidmachine/iab/vast/activity/VastView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaPlayer - onCompletion"

    invoke-static {p1, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->g(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.h (io.bidmachine.iab.vast.activity.VastView$h)
.class public Lio/bidmachine/iab/vast/activity/VastView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 4
    const-string p3, "MediaPlayer - onError: what - %s, extra - %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.i (io.bidmachine.iab.vast.activity.VastView$i)
.class public Lio/bidmachine/iab/vast/activity/VastView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaPlayer - onPrepared"

    invoke-static {v0, v3, v2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v2, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v2, v2, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-nez v2, :cond_8f

    .line 5
    sget-object v2, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object v2, Lio/bidmachine/iab/vast/TrackingEvent;->fullscreen:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->e(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->g:Z

    if-nez v0, :cond_42

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->r(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 16
    :cond_42
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->s(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->d:I

    if-lez v0, :cond_6a

    .line 19
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->resume:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 21
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 22
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->onVideoResumed()V

    .line 25
    :cond_6a
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->m:Z

    if-nez v0, :cond_75

    .line 26
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->p(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 28
    :cond_75
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->k:Z

    if-nez v0, :cond_8f

    .line 29
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->t(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 30
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->shouldPreloadCompanion()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 31
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$i;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    :cond_8f
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.j (io.bidmachine.iab.vast.activity.VastView$j)
.class public Lio/bidmachine/iab/vast/activity/VastView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$j;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$j;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onVideoSizeChanged"

    invoke-static {p1, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$j;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;I)I

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$j;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;I)I

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$j;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.k (io.bidmachine.iab.vast.activity.VastView$k)
.class public Lio/bidmachine/iab/vast/activity/VastView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean p1, p1, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 2
    :cond_12
    :goto_12
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$k;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.l (io.bidmachine.iab.vast.activity.VastView$l)
.class public Lio/bidmachine/iab/vast/activity/VastView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenStateChange(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->u(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.m (io.bidmachine.iab.vast.activity.VastView$m)
.class public Lio/bidmachine/iab/vast/activity/VastView$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$m;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    goto :goto_1c

    .line 4
    :cond_a
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$m;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->v(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.n (io.bidmachine.iab.vast.activity.VastView$n)
.class public Lio/bidmachine/iab/vast/activity/VastView$n;
.super Lio/bidmachine/rendering/utils/BaseWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$n;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Lio/bidmachine/rendering/utils/BaseWebChromeClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/JsResult;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "JS alert"

    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p4}, Lio/bidmachine/iab/vast/activity/VastView$n;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "JS confirm"

    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p4}, Lio/bidmachine/iab/vast/activity/VastView$n;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "JS prompt"

    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p5}, Lio/bidmachine/iab/vast/activity/VastView$n;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.o (io.bidmachine.iab.vast.activity.VastView$o)
.class public Lio/bidmachine/iab/vast/activity/VastView$o;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->x(Lio/bidmachine/iab/vast/activity/VastView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->v(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_f
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView$o;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->v(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "banner clicked"

    invoke-static {p1, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$o;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-static {p1, v0, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.p (io.bidmachine.iab.vast.activity.VastView$p)
.class public Lio/bidmachine/iab/vast/activity/VastView$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastVideoLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/CacheControl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lio/bidmachine/iab/CacheControl;

.field public final synthetic c:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;ZLio/bidmachine/iab/CacheControl;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->c:Lio/bidmachine/iab/vast/activity/VastView;

    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->a:Z

    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->b:Lio/bidmachine/iab/CacheControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastViewListener;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->b:Lio/bidmachine/iab/CacheControl;

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 3
    const-string v2, "Error loading video after showing with %s - %s"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->placeholder(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    .line 4
    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->c:Lio/bidmachine/iab/vast/activity/VastView;

    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$p;->a:Z

    invoke-static {v0, p1, p2, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;Z)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.q (io.bidmachine.iab.vast.activity.VastView$q)
.class public Lio/bidmachine/iab/vast/activity/VastView$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->f(Lio/bidmachine/iab/vast/VastExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastViewListener;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v2, v2, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    const-string v3, "Close button clicked"

    invoke-static {v3}, Lio/bidmachine/iab/IabError;->placeholder(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastViewListener;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onCountDownFinish()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.r (io.bidmachine.iab.vast.activity.VastView$r)
.class public Lio/bidmachine/iab/vast/activity/VastView$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->w(Lio/bidmachine/iab/vast/activity/VastView;)Z

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.s (io.bidmachine.iab.vast.activity.VastView$s)
.class public Lio/bidmachine/iab/vast/activity/VastView$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/VastExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz p1, :cond_1b

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->isR1()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v0, v0, Lio/bidmachine/iab/vast/activity/VastView$C;->l:Z

    if-nez v0, :cond_1b

    .line 4
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->w(Lio/bidmachine/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return-void

    .line 8
    :cond_1b
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->B(Lio/bidmachine/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->C(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void

    .line 11
    :cond_29
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->handleBackPress()V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.t (io.bidmachine.iab.vast.activity.VastView$t)
.class public Lio/bidmachine/iab/vast/activity/VastView$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->e(Lio/bidmachine/iab/vast/VastExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$t;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$t;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->D(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.u (io.bidmachine.iab.vast.activity.VastView$u)
.class public Lio/bidmachine/iab/vast/activity/VastView$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/VastExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$u;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$u;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->E(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.v (io.bidmachine.iab.vast.activity.VastView$v)
.class public Lio/bidmachine/iab/vast/activity/VastView$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->i(Lio/bidmachine/iab/vast/VastExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$v;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$v;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->w(Lio/bidmachine/iab/vast/activity/VastView;)Z

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.w (io.bidmachine.iab.vast.activity.VastView$w)
.class public Lio/bidmachine/iab/vast/activity/VastView$w;
.super Lio/bidmachine/iab/vast/activity/VastView$z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w;->g:Lio/bidmachine/iab/vast/activity/VastView;

    iput-object p5, p0, Lio/bidmachine/iab/vast/activity/VastView$w;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2, p3, p4}, Lio/bidmachine/iab/vast/activity/VastView$z;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_40

    if-nez p1, :cond_15

    .line 4
    new-instance p1, Lio/bidmachine/iab/vast/activity/VastView$w$a;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/vast/activity/VastView$w$a;-><init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 12
    :cond_15
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$w$b;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$w$b;-><init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 24
    new-instance p1, Lio/bidmachine/iab/vast/activity/VastView$w$c;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/vast/activity/VastView$w$c;-><init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.w.a (io.bidmachine.iab.vast.activity.VastView$w$a)
.class public Lio/bidmachine/iab/vast/activity/VastView$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$w;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$w;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$a;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$a;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$w;->g:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->w(Lio/bidmachine/iab/vast/activity/VastView;)Z

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$a;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$w;->g:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->C(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.w.b (io.bidmachine.iab.vast.activity.VastView$w$b)
.class public Lio/bidmachine/iab/vast/activity/VastView$w$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$w;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$w;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$b;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$b;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$w;->g:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.w.c (io.bidmachine.iab.vast.activity.VastView$w$c)
.class public Lio/bidmachine/iab/vast/activity/VastView$w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$w;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$w;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$c;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$w$c;->a:Lio/bidmachine/iab/vast/activity/VastView$w;

    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$w;->g:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->w(Lio/bidmachine/iab/vast/activity/VastView;)Z

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.x (io.bidmachine.iab.vast.activity.VastView$x)
.class public Lio/bidmachine/iab/vast/activity/VastView$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "x"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final synthetic b:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clickHandled()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    return-void

    .line 3
    :cond_f
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->z(Lio/bidmachine/iab/vast/activity/VastView;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->p(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void

    .line 6
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->o(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

.method public clickVerified()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->A(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$x;->b:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->A(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    :cond_18
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.y (io.bidmachine.iab.vast.activity.VastView$y)
.class public final Lio/bidmachine/iab/vast/activity/VastView$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "y"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/activity/VastView$k;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$y;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method


# virtual methods
.method public onCalendarEvent(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onClose(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->y(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

.method public onExpired(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->c(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onLoadFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onLoaded(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$C;

    iget-boolean v1, v1, Lio/bidmachine/iab/vast/activity/VastView$C;->j:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->d(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    :cond_11
    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onOpenUrl(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 4

    .line 1
    invoke-interface {p3}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/activity/VastView;->a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    return-void
.end method

.method public onPlayVideo(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onShowFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->b(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onShown(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStorePicture(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 4

    .line 0
    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.z (io.bidmachine.iab.vast.activity.VastView$z)
.class public abstract Lio/bidmachine/iab/vast/activity/VastView$z;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "z"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->b:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->c:Ljava/lang/String;

    if-nez p3, :cond_30

    if-eqz p2, :cond_2b

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    new-instance p1, Ljava/io/File;

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_30

    :cond_2b
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$z;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 10
    :cond_30
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastView$z;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->e:Z

    return-void
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-string v2, "MediaFrameRetriever"

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    .line 5
    :try_start_12
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->b:Landroid/net/Uri;

    if-eqz v4, :cond_1c

    .line 6
    invoke-virtual {v1, v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_28

    :catch_1a
    move-exception v0

    goto :goto_40

    .line 7
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->c:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :cond_28
    :goto_28
    const/16 v0, 0x9

    .line 12
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    .line 16
    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v0, 0x2

    invoke-virtual {v1, v4, v5, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->d:Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3f} :catch_1a

    goto :goto_49

    .line 20
    :goto_40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_57

    :catch_4d
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :goto_57
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z;->e:Z

    if-eqz v0, :cond_5c

    return-void

    .line 30
    :cond_5c
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$z$a;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$z$a;-><init>(Lio/bidmachine/iab/vast/activity/VastView$z;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastView.z.a (io.bidmachine.iab.vast.activity.VastView$z$a)
.class public Lio/bidmachine/iab/vast/activity/VastView$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$z;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$z$a;->a:Lio/bidmachine/iab/vast/activity/VastView$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$z$a;->a:Lio/bidmachine/iab/vast/activity/VastView$z;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView$z;->a(Lio/bidmachine/iab/vast/activity/VastView$z;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView$z;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
