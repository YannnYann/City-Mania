###### Class ads_mobile_sdk.t32 (ads_mobile_sdk.t32)
.class public final Lads_mobile_sdk/t32;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Landroid/widget/ImageView$ScaleType;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/s02;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lads_mobile_sdk/hl1;

.field public final f:Lads_mobile_sdk/t22;

.field public final g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final h:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/s02;Lads_mobile_sdk/ex0;Lads_mobile_sdk/hl1;Lads_mobile_sdk/t22;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/gson/JsonObject;)V
    .registers 10

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalMediaContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdSettingsDataStore"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdJson"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lads_mobile_sdk/t32;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/t32;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    iput-object p3, p0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    .line 40
    iput-object p4, p0, Lads_mobile_sdk/t32;->d:Lads_mobile_sdk/ex0;

    .line 41
    iput-object p5, p0, Lads_mobile_sdk/t32;->e:Lads_mobile_sdk/hl1;

    .line 42
    iput-object p6, p0, Lads_mobile_sdk/t32;->f:Lads_mobile_sdk/t22;

    .line 43
    iput-object p7, p0, Lads_mobile_sdk/t32;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 44
    iput-object p8, p0, Lads_mobile_sdk/t32;->h:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/o32;Landroid/view/MotionEvent;)V
    .registers 3

    .line 349
    const-string v0, "$nativeAdViewContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    check-cast p0, Lads_mobile_sdk/p32;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/p32;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static final a(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;)V
    .registers 19

    move-object/from16 v0, p0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v1, v0, Lads_mobile_sdk/t32;->h:Lcom/google/gson/JsonObject;

    const-string v2, "attribution"

    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 35
    const-string v4, "allow_pub_rendering"

    .line 36
    invoke-static {v1, v4, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_2d

    .line 37
    :cond_1c
    move-object/from16 v1, p1

    check-cast v1, Lads_mobile_sdk/p32;

    const-string v4, "3011"

    invoke-virtual {v1, v4}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    if-eqz v4, :cond_2d

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    goto :goto_2e

    :cond_2d
    :goto_2d
    move-object v1, v3

    :goto_2e
    const/4 v4, 0x1

    if-eqz v1, :cond_32

    move v2, v4

    .line 38
    :cond_32
    move-object/from16 v5, p1

    check-cast v5, Lads_mobile_sdk/p32;

    invoke-virtual {v5}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    goto :goto_42

    :cond_41
    move-object v6, v3

    :goto_42
    if-nez v6, :cond_46

    goto/16 :goto_ef

    .line 39
    :cond_46
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    iget-object v8, v0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    iget-object v9, v8, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x9

    const/16 v14, 0xc

    const/16 v15, 0xb

    const/16 v3, 0xa

    if-eqz v9, :cond_94

    if-nez v2, :cond_92

    .line 48
    iget-object v0, v8, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    if-eqz v0, :cond_92

    .line 49
    sget-object v8, Lads_mobile_sdk/q32;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    if-eq v0, v4, :cond_89

    if-eq v0, v12, :cond_82

    if-eq v0, v11, :cond_7b

    if-eq v0, v10, :cond_74

    goto :goto_8f

    .line 63
    :cond_74
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_8f

    .line 65
    :cond_7b
    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_8f

    .line 67
    :cond_82
    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_8f

    .line 69
    :cond_89
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    :goto_8f
    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_92
    move-object v3, v9

    goto :goto_ed

    .line 77
    :cond_94
    iget-object v8, v8, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    if-nez v8, :cond_9a

    const/4 v3, 0x0

    goto :goto_ed

    :cond_9a
    if-nez v2, :cond_ca

    .line 80
    iget-object v9, v8, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 81
    sget-object v16, Lads_mobile_sdk/q32;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v16, v9

    if-eq v9, v4, :cond_c4

    if-eq v9, v12, :cond_bd

    if-eq v9, v11, :cond_b6

    if-eq v9, v10, :cond_af

    goto :goto_ca

    .line 95
    :cond_af
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_ca

    .line 97
    :cond_b6
    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_ca

    .line 99
    :cond_bd
    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_ca

    .line 101
    :cond_c4
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    :cond_ca
    :goto_ca
    new-instance v3, Lads_mobile_sdk/wc1;

    invoke-direct {v3, v6, v8, v7}, Lads_mobile_sdk/wc1;-><init>(Landroid/content/Context;Lads_mobile_sdk/ak1;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 104
    iget-object v0, v0, Lads_mobile_sdk/t32;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-string v4, "key"

    const-string v7, "gads:ad_choices_content_description"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultValue"

    const-string v8, "Ad Choices Icon"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v4, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v7, v8, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_ed
    if-nez v3, :cond_f0

    :goto_ef
    return-void

    .line 150
    :cond_f0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_fb

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_fb
    if-eqz v2, :cond_108

    if-eqz v1, :cond_102

    .line 153
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_102
    if-eqz v1, :cond_122

    .line 154
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_122

    .line 156
    :cond_108
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    invoke-direct {v0, v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v5}, Lads_mobile_sdk/p32;->d()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_122

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    :cond_122
    :goto_122
    const-string v0, "3012"

    invoke-virtual {v5, v3, v0}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/o32;)V
    .registers 11

    .line 169
    const-string v0, "nativeAdViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    check-cast p1, Lads_mobile_sdk/p32;

    const-string v0, "3010"

    invoke-virtual {p1, v0}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 320
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_16

    :cond_15
    move-object v0, v2

    .line 321
    :goto_16
    iget-object v3, p0, Lads_mobile_sdk/t32;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/r32;

    invoke-direct {v6, p0, v0, v2}, Lads_mobile_sdk/r32;-><init>(Lads_mobile_sdk/t32;Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    if-nez v0, :cond_27

    goto :goto_5f

    .line 324
    :cond_27
    invoke-virtual {p0, v0}, Lads_mobile_sdk/t32;->a(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 325
    iget-object v0, p0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-nez v0, :cond_34

    goto :goto_5f

    :cond_34
    new-instance v1, Lads_mobile_sdk/t32$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lads_mobile_sdk/t32$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/o32;)V

    .line 326
    iput-object v1, v0, Lads_mobile_sdk/r31;->u:Lads_mobile_sdk/tu1;

    return-void

    .line 327
    :cond_3c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    invoke-virtual {p1}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_46

    goto :goto_5f

    .line 329
    :cond_46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 330
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    iget-object v3, p0, Lads_mobile_sdk/t32;->e:Lads_mobile_sdk/hl1;

    .line 332
    iget-object v4, v3, Lads_mobile_sdk/hl1;->c:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5c

    .line 333
    iget-object v3, v3, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    iget-object v3, v3, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-eqz v3, :cond_5d

    iget-object v2, v3, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_5d

    :cond_5c
    move-object v2, v4

    :cond_5d
    :goto_5d
    if-nez v2, :cond_60

    :goto_5f
    return-void

    .line 334
    :cond_60
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-virtual {p1}, Lads_mobile_sdk/p32;->e()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    if-nez p1, :cond_70

    sget-object p1, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    .line 338
    :cond_70
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 342
    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Z
    .registers 8

    .line 507
    const-string v0, "mediaViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 693
    :cond_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 694
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1d

    :cond_1c
    move-object v2, v4

    :goto_1d
    if-eqz v2, :cond_22

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    :cond_22
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v5, -0x1

    .line 698
    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 703
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v0, p0, Lads_mobile_sdk/t32;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    const-string v2, "key"

    const-string v3, "gads:native:disable_video_rect_for_fixed_size:enabled"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    if-eqz v0, :cond_55

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v2, :cond_55

    goto :goto_85

    .line 740
    :cond_55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_60

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v2, :cond_60

    goto :goto_85

    .line 741
    :cond_60
    iget-object p1, p0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    iget-object p1, p1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object p1

    if-eqz p1, :cond_6e

    iget-object v4, p1, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    :cond_6e
    sget-object p1, Lads_mobile_sdk/u14;->e:Lads_mobile_sdk/u14;

    if-ne v4, p1, :cond_85

    .line 743
    iget-object p1, p0, Lads_mobile_sdk/t32;->c:Lads_mobile_sdk/s02;

    iget-object p1, p1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-nez p1, :cond_79

    goto :goto_85

    .line 744
    :cond_79
    new-instance v0, Lads_mobile_sdk/v14;

    sget-object v2, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/16 v3, 0xe

    invoke-direct {v0, v2, v1, v1, v3}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 745
    invoke-virtual {p1, v0}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    :cond_85
    :goto_85
    const/4 p1, 0x1

    return p1
.end method

###### Class ads_mobile_sdk.t32$$ExternalSyntheticLambda0 (ads_mobile_sdk.t32$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/t32$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/tu1;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/o32;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/o32;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/t32$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/o32;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/t32$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/o32;

    invoke-static {v0, p1}, Lads_mobile_sdk/t32;->a(Lads_mobile_sdk/o32;Landroid/view/MotionEvent;)V

    return-void
.end method
