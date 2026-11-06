###### Class com.vungle.ads.internal.ui.view.MediaView (com.vungle.ads.internal.ui.view.MediaView)
.class public final Lcom/vungle/ads/internal/ui/view/MediaView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/vungle/ads/nativead/NativeVideoListener;

.field public b:Lcom/vungle/ads/internal/ui/view/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/ui/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/ui/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 1
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/ui/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getVideoControl()Lcom/vungle/ads/nativead/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    instance-of v1, v0, Lcom/vungle/ads/nativead/a;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/vungle/ads/nativead/a;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 57
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/e;->a()V

    .line 58
    :cond_11
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/o1;)V
    .registers 9

    const-string v0, "internal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/vungle/ads/internal/o1;->r()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "context"

    if-eqz v0, :cond_3f

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    if-nez v0, :cond_6a

    .line 3
    new-instance v0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p1}, Lcom/vungle/ads/internal/ui/view/m;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;)V

    .line 4
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->a:Lcom/vungle/ads/nativead/NativeVideoListener;

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/ui/view/e;->setNativeVideoListener(Lcom/vungle/ads/nativead/NativeVideoListener;)V

    .line 6
    sget-object v3, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    new-instance v4, Lcom/vungle/ads/internal/j2;

    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->NATIVE_PLAY_ASSET_TYPE:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v4, v5}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v5, 0x1

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/ads/internal/j2;->a(Ljava/lang/Long;)V

    .line 9
    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object p1

    .line 10
    invoke-static {v3, v4, p1, v1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 11
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    goto :goto_6a

    .line 22
    :cond_3f
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    if-nez v0, :cond_6a

    .line 23
    new-instance v0, Lcom/vungle/ads/internal/ui/view/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p1}, Lcom/vungle/ads/internal/ui/view/e;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;)V

    .line 24
    sget-object v3, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 25
    new-instance v4, Lcom/vungle/ads/internal/j2;

    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->NATIVE_PLAY_ASSET_TYPE:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v4, v5}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v5, 0x2

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/ads/internal/j2;->a(Ljava/lang/Long;)V

    .line 27
    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object p1

    .line 28
    invoke-static {v3, v4, p1, v1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 29
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    .line 39
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    if-eqz p1, :cond_9e

    .line 41
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_91

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_91
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ui/view/e;->a(Landroid/content/Context;)V

    :cond_9e
    return-void
.end method

.method public final getCurrentTime()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/view/MediaView;->getVideoControl()Lcom/vungle/ads/nativead/a;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/m;->getCurrentTime()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/view/MediaView;->getVideoControl()Lcom/vungle/ads/nativead/a;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/m;->getDuration()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final setNativeVideoListener(Lcom/vungle/ads/nativead/NativeVideoListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->a:Lcom/vungle/ads/nativead/NativeVideoListener;

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MediaView;->b:Lcom/vungle/ads/internal/ui/view/e;

    instance-of v1, v0, Lcom/vungle/ads/internal/ui/view/m;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/view/e;->setNativeVideoListener(Lcom/vungle/ads/nativead/NativeVideoListener;)V

    return-void
.end method
