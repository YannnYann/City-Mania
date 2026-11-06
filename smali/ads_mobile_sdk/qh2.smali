###### Class ads_mobile_sdk.qh2 (ads_mobile_sdk.qh2)
.class public final Lads_mobile_sdk/qh2;
.super Lads_mobile_sdk/nh2;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/uh2;

.field public final synthetic b:Lads_mobile_sdk/ck1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/uh2;Lads_mobile_sdk/ck1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qh2;->a:Lads_mobile_sdk/uh2;

    iput-object p2, p0, Lads_mobile_sdk/qh2;->b:Lads_mobile_sdk/ck1;

    .line 247
    invoke-direct {p0}, Lads_mobile_sdk/nh2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;Landroid/widget/LinearLayout;)V
    .registers 8

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 251
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 254
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    .line 263
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    iget-object v3, p0, Lads_mobile_sdk/qh2;->a:Lads_mobile_sdk/uh2;

    .line 269
    iget-object v3, v3, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    .line 270
    const-string v4, "TOP"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/16 v3, 0x31

    goto :goto_40

    .line 272
    :cond_33
    const-string v4, "BOTTOM"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/16 v3, 0x51

    goto :goto_40

    :cond_3e
    const/16 v3, 0x11

    .line 273
    :goto_40
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 281
    iget-object v3, p0, Lads_mobile_sdk/qh2;->a:Lads_mobile_sdk/uh2;

    .line 282
    iget v3, v3, Lads_mobile_sdk/uh2;->o:I

    if-lez v3, :cond_59

    int-to-float v3, v3

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v4, 0x1

    .line 284
    invoke-static {v4, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 285
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    :cond_59
    iget-object p1, p0, Lads_mobile_sdk/qh2;->b:Lads_mobile_sdk/ck1;

    .line 295
    iget-object p1, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_68

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    :goto_69
    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 297
    :cond_6e
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 300
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 292
    iget-object v0, p0, Lads_mobile_sdk/qh2;->b:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->destroy()V

    return-void
.end method
