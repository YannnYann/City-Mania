###### Class com.facebook.ads.internal.api.AdComponentFrameLayout (com.facebook.ads.internal.api.AdComponentFrameLayout)
.class public abstract Lcom/facebook/ads/internal/api/AdComponentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AdComponentFrameLayout.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentView;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

.field private final mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;-><init>(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;-><init>(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;-><init>(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;-><init>(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public static synthetic access$001(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$1001(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;I)V
    .registers 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$101(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;II)V
    .registers 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public static synthetic access$1101(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$1201(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;II)V
    .registers 4

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic access$201(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V
    .registers 1

    .line 27
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public static synthetic access$301(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V
    .registers 1

    .line 27
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public static synthetic access$401(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;II)V
    .registers 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public static synthetic access$501(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$601(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Z)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public static synthetic access$701(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;I)V
    .registers 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$801(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$901(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 138
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;)V

    return-void

    .line 140
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;I)V

    return-void

    .line 149
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 166
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;II)V

    return-void

    .line 168
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 176
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 178
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 157
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 159
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V
    .registers 4

    .line 120
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->isFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-nez v0, :cond_1b

    .line 127
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 128
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 129
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    return-void

    .line 131
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdComponentViewApi can\'t be attached more then once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToWindow()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 222
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    return-void

    .line 224
    :cond_8
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 232
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    return-void

    .line 234
    :cond_8
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 194
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    return-void

    .line 196
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 203
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    .line 205
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 212
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->onWindowFocusChanged(Z)V

    return-void

    .line 214
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 185
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 187
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class com.facebook.ads.internal.api.AdComponentFrameLayout.AnonymousClass1 (com.facebook.ads.internal.api.AdComponentFrameLayout$1)
.class public Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;
.super Ljava/lang/Object;
.source "AdComponentFrameLayout.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentViewParentApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/api/AdComponentFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$901(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$1001(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$1201(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$801(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$1101(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$501(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$201(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$301(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$101(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;II)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$701(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$601(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$001(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdComponentFrameLayout$1;->this$0:Lcom/facebook/ads/internal/api/AdComponentFrameLayout;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->access$401(Lcom/facebook/ads/internal/api/AdComponentFrameLayout;II)V

    return-void
.end method
