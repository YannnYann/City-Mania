###### Class com.vungle.ads.internal.ui.view.e (com.vungle.ads.internal.ui.view.e)
.class public Lcom/vungle/ads/internal/ui/view/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/o1;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/vungle/ads/nativead/NativeVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/e;->a:Lcom/vungle/ads/internal/o1;

    .line 9
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    .line 11
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 18
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 6
    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_12

    :catchall_f
    move-exception v1

    goto :goto_2b

    :cond_11
    move-object v1, v0

    .line 8
    :goto_12
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_25

    .line 9
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_25
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_f

    goto :goto_34

    :goto_2b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_34
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_3b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3b
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    if-nez p1, :cond_a

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    :goto_e
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/e;->a:Lcom/vungle/ads/internal/o1;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/o1;->c(Landroid/widget/ImageView;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final getImageView$vungle_ads_release()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getInternal()Lcom/vungle/ads/internal/o1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/e;->a:Lcom/vungle/ads/internal/o1;

    return-object v0
.end method

.method public final getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/e;->c:Lcom/vungle/ads/nativead/NativeVideoListener;

    return-object v0
.end method

.method public final setImageView$vungle_ads_release(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/e;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public final setNativeVideoListener(Lcom/vungle/ads/nativead/NativeVideoListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/e;->c:Lcom/vungle/ads/nativead/NativeVideoListener;

    return-void
.end method
