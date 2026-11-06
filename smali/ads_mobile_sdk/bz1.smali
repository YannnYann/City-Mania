###### Class ads_mobile_sdk.bz1 (ads_mobile_sdk.bz1)
.class public final Lads_mobile_sdk/bz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ix1;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/tz1;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/ks1;

.field public final g:Lads_mobile_sdk/h41;

.field public final h:Lads_mobile_sdk/r31;

.field public final i:Lkotlinx/coroutines/sync/Mutex;

.field public j:Landroid/widget/PopupWindow;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/view/ViewGroup$LayoutParams;

.field public m:Lads_mobile_sdk/v14;

.field public n:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ix1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tz1;Ljava/util/Optional;Lads_mobile_sdk/f0;Lads_mobile_sdk/ks1;)V
    .registers 9

    .line 1
    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidViewabilityEventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalGmaWebViewContainer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidEventEmitter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lads_mobile_sdk/bz1;->a:Lads_mobile_sdk/ix1;

    .line 58
    iput-object p2, p0, Lads_mobile_sdk/bz1;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 59
    iput-object p3, p0, Lads_mobile_sdk/bz1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 60
    iput-object p4, p0, Lads_mobile_sdk/bz1;->d:Lads_mobile_sdk/tz1;

    .line 62
    iput-object p6, p0, Lads_mobile_sdk/bz1;->e:Lads_mobile_sdk/f0;

    .line 64
    iput-object p7, p0, Lads_mobile_sdk/bz1;->f:Lads_mobile_sdk/ks1;

    .line 67
    invoke-static {p5}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h41;

    iput-object p1, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    const/4 p2, 0x0

    if-eqz p1, :cond_42

    .line 68
    invoke-virtual {p1}, Lads_mobile_sdk/h41;->a()Lads_mobile_sdk/r31;

    move-result-object p1

    goto :goto_43

    :cond_42
    move-object p1, p2

    :goto_43
    iput-object p1, p0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 70
    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bz1;->i:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/bz1;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2696
    instance-of v3, v2, Lads_mobile_sdk/zy1;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/zy1;

    iget v4, v3, Lads_mobile_sdk/zy1;->m:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/zy1;->m:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/zy1;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/zy1;-><init>(Lads_mobile_sdk/bz1;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/zy1;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 2777
    iget v5, v3, Lads_mobile_sdk/zy1;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_58

    if-ne v5, v7, :cond_50

    iget v0, v3, Lads_mobile_sdk/zy1;->j:I

    iget v1, v3, Lads_mobile_sdk/zy1;->i:I

    iget v4, v3, Lads_mobile_sdk/zy1;->h:I

    iget v5, v3, Lads_mobile_sdk/zy1;->g:I

    iget v8, v3, Lads_mobile_sdk/zy1;->f:I

    iget-object v9, v3, Lads_mobile_sdk/zy1;->e:Lads_mobile_sdk/gy;

    iget-object v10, v3, Lads_mobile_sdk/zy1;->d:Landroid/view/ViewGroup;

    iget-object v11, v3, Lads_mobile_sdk/zy1;->c:Landroid/view/Window;

    iget-object v12, v3, Lads_mobile_sdk/zy1;->b:Landroid/app/Activity;

    iget-object v3, v3, Lads_mobile_sdk/zy1;->a:Lads_mobile_sdk/bz1;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v20, v1

    move-object v15, v3

    move/from16 v19, v4

    move-object/from16 v22, v9

    :goto_4a
    move/from16 v18, v5

    move/from16 v17, v8

    goto/16 :goto_1d6

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2778
    iget-object v2, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    if-eqz v2, :cond_311

    iget-object v2, v0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    if-nez v2, :cond_65

    goto/16 :goto_311

    .line 2780
    :cond_65
    iget-object v2, v0, Lads_mobile_sdk/bz1;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v2}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v12

    if-nez v12, :cond_77

    .line 2782
    iget-object v1, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v2, "There is no active activity, cannot resize."

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2783
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2785
    :cond_77
    iget-object v2, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    invoke-virtual {v2}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object v2

    iget-object v2, v2, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    sget-object v5, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    if-ne v2, v5, :cond_8d

    .line 2786
    iget-object v1, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v2, "Cannot resize full screen webview."

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2787
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2789
    :cond_8d
    iget-object v2, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    .line 2790
    iget-object v2, v2, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2791
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2792
    iget-object v1, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v2, "Cannot resize expanded webview."

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2793
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2795
    :cond_a1
    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    if-nez v11, :cond_b1

    .line 2797
    iget-object v1, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v2, "Activity does not have window, cannot resize."

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2798
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2800
    :cond_b1
    iget-object v2, v0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_bf

    check-cast v2, Landroid/view/ViewGroup;

    :goto_bd
    move-object v10, v2

    goto :goto_c1

    :cond_bf
    const/4 v2, 0x0

    goto :goto_bd

    :goto_c1
    if-nez v10, :cond_cd

    .line 2802
    iget-object v1, v0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v2, "Cannot resize webview that has no parent."

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2803
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2807
    :cond_cd
    const-string v2, "width"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, -0x1

    if-eqz v2, :cond_e4

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v8, v2

    goto :goto_e5

    :cond_e4
    move v8, v5

    .line 2808
    :goto_e5
    const-string v2, "height"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_fa

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_fa

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    .line 2809
    :cond_fa
    const-string v2, "offsetX"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_10f

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_110

    :cond_10f
    move v2, v6

    .line 2810
    :goto_110
    const-string v9, "offsetY"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_125

    invoke-static {v9}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_125

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_126

    :cond_125
    move v9, v6

    .line 2811
    :goto_126
    const-string v13, "allowOffscreen"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_13b

    invoke-static {v13}, Lkotlin/text/StringsKt__StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_13b

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto :goto_13c

    :cond_13b
    move v13, v7

    .line 2812
    :goto_13c
    const-string v14, "customClosePosition"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2821
    sget-object v14, Lads_mobile_sdk/gy;->b:Lads_mobile_sdk/fy;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1a7

    .line 2822
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_314

    goto :goto_1a7

    :sswitch_153
    const-string v14, "top-center"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    goto :goto_1a7

    .line 2824
    :cond_15c
    sget-object v1, Lads_mobile_sdk/gy;->d:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2825
    :sswitch_15f
    const-string v14, "bottom-center"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_168

    goto :goto_1a7

    .line 2831
    :cond_168
    sget-object v1, Lads_mobile_sdk/gy;->h:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2832
    :sswitch_16b
    const-string v14, "bottom-right"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_174

    goto :goto_1a7

    .line 2839
    :cond_174
    sget-object v1, Lads_mobile_sdk/gy;->i:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2840
    :sswitch_177
    const-string v14, "bottom-left"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    goto :goto_1a7

    .line 2845
    :cond_180
    sget-object v1, Lads_mobile_sdk/gy;->g:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2846
    :sswitch_183
    const-string v14, "top-left"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18c

    goto :goto_1a7

    .line 2847
    :cond_18c
    sget-object v1, Lads_mobile_sdk/gy;->c:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2848
    :sswitch_18f
    const-string v14, "top-right"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_198

    goto :goto_1a7

    .line 2851
    :cond_198
    sget-object v1, Lads_mobile_sdk/gy;->e:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2852
    :sswitch_19b
    const-string v14, "center"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a4

    goto :goto_1a7

    .line 2856
    :cond_1a4
    sget-object v1, Lads_mobile_sdk/gy;->f:Lads_mobile_sdk/gy;

    goto :goto_1a9

    .line 2860
    :cond_1a7
    :goto_1a7
    sget-object v1, Lads_mobile_sdk/gy;->e:Lads_mobile_sdk/gy;

    .line 2861
    :goto_1a9
    iget-object v14, v0, Lads_mobile_sdk/bz1;->d:Lads_mobile_sdk/tz1;

    iput-object v0, v3, Lads_mobile_sdk/zy1;->a:Lads_mobile_sdk/bz1;

    iput-object v12, v3, Lads_mobile_sdk/zy1;->b:Landroid/app/Activity;

    iput-object v11, v3, Lads_mobile_sdk/zy1;->c:Landroid/view/Window;

    iput-object v10, v3, Lads_mobile_sdk/zy1;->d:Landroid/view/ViewGroup;

    iput-object v1, v3, Lads_mobile_sdk/zy1;->e:Lads_mobile_sdk/gy;

    iput v8, v3, Lads_mobile_sdk/zy1;->f:I

    iput v5, v3, Lads_mobile_sdk/zy1;->g:I

    iput v2, v3, Lads_mobile_sdk/zy1;->h:I

    iput v9, v3, Lads_mobile_sdk/zy1;->i:I

    iput v13, v3, Lads_mobile_sdk/zy1;->j:I

    iput v7, v3, Lads_mobile_sdk/zy1;->m:I

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2862
    invoke-static {v14, v3}, Lads_mobile_sdk/tz1;->a(Lads_mobile_sdk/tz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_1cb

    return-object v4

    :cond_1cb
    move-object v15, v0

    move-object/from16 v22, v1

    move/from16 v19, v2

    move-object v2, v3

    move/from16 v20, v9

    move v0, v13

    goto/16 :goto_4a

    .line 2863
    :goto_1d6
    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_1df

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_1df
    move-object/from16 v23, v2

    .line 2864
    invoke-static {v12}, Lads_mobile_sdk/zn0;->b(Landroid/app/Activity;)Lkotlin/Pair;

    move-result-object v24

    .line 2865
    invoke-static {v12}, Lads_mobile_sdk/zn0;->a(Landroid/app/Activity;)Lkotlin/Pair;

    move-result-object v25

    .line 2866
    new-instance v16, Lads_mobile_sdk/n53;

    if-eqz v0, :cond_1f0

    move/from16 v21, v7

    goto :goto_1f2

    :cond_1f0
    move/from16 v21, v6

    :goto_1f2
    invoke-direct/range {v16 .. v25}, Lads_mobile_sdk/n53;-><init>(IIIIZLads_mobile_sdk/gy;Landroid/graphics/Rect;Lkotlin/Pair;Lkotlin/Pair;)V

    move/from16 v8, v17

    move/from16 v5, v18

    move/from16 v6, v21

    move-object/from16 v2, v23

    .line 2867
    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v3, 0x32

    if-lt v8, v3, :cond_2d3

    if-le v8, v0, :cond_219

    goto/16 :goto_2d3

    :cond_219
    if-lt v5, v3, :cond_2ca

    if-le v5, v1, :cond_21f

    goto/16 :goto_2ca

    :cond_21f
    if-lt v5, v1, :cond_22d

    if-lt v8, v0, :cond_22d

    .line 2873
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "Resize cannot be used to resize to full screen."

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto/16 :goto_2db

    :cond_22d
    if-eqz v6, :cond_2c1

    .line 2874
    invoke-virtual/range {v25 .. v25}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual/range {v25 .. v25}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2875
    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2877
    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v19

    add-int v17, v6, v8

    .line 2879
    div-int/lit8 v7, v8, 0x2

    add-int/2addr v7, v6

    .line 2880
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v20

    add-int v18, v2, v5

    .line 2882
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    .line 2885
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_332

    .line 2895
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_26c
    new-instance v2, Landroid/graphics/Point;

    add-int/lit8 v5, v17, -0x32

    add-int/lit8 v6, v18, -0x32

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2a9

    .line 2896
    :pswitch_276
    new-instance v2, Landroid/graphics/Point;

    add-int/lit8 v7, v7, -0x19

    add-int/lit8 v5, v18, -0x32

    invoke-direct {v2, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2a9

    .line 2897
    :pswitch_280
    new-instance v2, Landroid/graphics/Point;

    add-int/lit8 v5, v18, -0x32

    invoke-direct {v2, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2a9

    .line 2898
    :pswitch_288
    new-instance v2, Landroid/graphics/Point;

    add-int/lit8 v7, v7, -0x19

    add-int/lit8 v5, v5, -0x19

    invoke-direct {v2, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2a9

    .line 2899
    :pswitch_292
    new-instance v5, Landroid/graphics/Point;

    add-int/lit8 v6, v17, -0x32

    invoke-direct {v5, v6, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_299
    move-object v2, v5

    goto :goto_2a9

    .line 2900
    :pswitch_29b
    new-instance v5, Landroid/graphics/Point;

    add-int/lit8 v7, v7, -0x19

    invoke-direct {v5, v7, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_299

    .line 2901
    :pswitch_2a3
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_299

    .line 2913
    :goto_2a9
    iget v5, v2, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2b8

    add-int/2addr v5, v3

    if-gt v5, v4, :cond_2b8

    .line 2915
    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lt v2, v0, :cond_2b8

    add-int/2addr v2, v3

    if-gt v2, v1, :cond_2b8

    goto :goto_2c1

    .line 2916
    :cond_2b8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "Close button is not visible."

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_2db

    .line 2919
    :cond_2c1
    :goto_2c1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_2db

    .line 2920
    :cond_2ca
    :goto_2ca
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "Invalid height. Cannot resize."

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_2db

    .line 2921
    :cond_2d3
    :goto_2d3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "Invalid width. Cannot resize."

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2922
    :goto_2db
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_2f5

    .line 2924
    iget-object v1, v15, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    invoke-virtual {v15, v1, v0}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2925
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2928
    :cond_2f5
    iget-object v1, v15, Lads_mobile_sdk/bz1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v14, Lads_mobile_sdk/az1;

    const/16 v20, 0x0

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v16

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v20}, Lads_mobile_sdk/az1;-><init>(Lads_mobile_sdk/bz1;Landroid/view/ViewGroup;Lads_mobile_sdk/n53;Landroid/app/Activity;Landroid/view/Window;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v14

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2938
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2939
    :cond_311
    :goto_311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :sswitch_data_314
    .sparse-switch
        -0x514d33ab -> :sswitch_19b
        -0x4e5f7c5c -> :sswitch_18f
        -0x3c587281 -> :sswitch_183
        -0x27103597 -> :sswitch_177
        0x455fe3fa -> :sswitch_16b
        0x4ccee637 -> :sswitch_15f
        0x68a23bcd -> :sswitch_153
    .end sparse-switch

    :pswitch_data_332
    .packed-switch 0x0
        :pswitch_2a3
        :pswitch_29b
        :pswitch_292
        :pswitch_288
        :pswitch_280
        :pswitch_276
        :pswitch_26c
    .end packed-switch
.end method

.method public static final a(Lads_mobile_sdk/bz1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of v0, p2, Lads_mobile_sdk/uy1;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/uy1;

    iget v1, v0, Lads_mobile_sdk/uy1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/uy1;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/uy1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/uy1;-><init>(Lads_mobile_sdk/bz1;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/uy1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 351
    iget v2, v0, Lads_mobile_sdk/uy1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p0, v0, Lads_mobile_sdk/uy1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/uy1;->a:Lads_mobile_sdk/bz1;

    :try_start_30
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    goto/16 :goto_c7

    :catchall_35
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e6

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-boolean p1, v0, Lads_mobile_sdk/uy1;->c:Z

    iget-object p0, v0, Lads_mobile_sdk/uy1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/uy1;->a:Lads_mobile_sdk/bz1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_61

    :cond_4d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/bz1;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 554
    iput-object p0, v0, Lads_mobile_sdk/uy1;->a:Lads_mobile_sdk/bz1;

    iput-object p2, v0, Lads_mobile_sdk/uy1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/uy1;->c:Z

    iput v4, v0, Lads_mobile_sdk/uy1;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_61

    goto :goto_c4

    .line 555
    :cond_61
    :goto_61
    :try_start_61
    iget-object v2, p0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    if-eqz v2, :cond_df

    iget-object v2, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    if-nez v2, :cond_6b

    goto/16 :goto_df

    .line 557
    :cond_6b
    iget-object v2, p0, Lads_mobile_sdk/bz1;->j:Landroid/widget/PopupWindow;

    if-nez v2, :cond_71

    goto/16 :goto_df

    .line 561
    :cond_71
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 563
    iget-object v2, p0, Lads_mobile_sdk/bz1;->n:Landroid/view/ViewGroup;

    if-eqz v2, :cond_ad

    .line 564
    iget-object v4, p0, Lads_mobile_sdk/bz1;->k:Landroid/widget/ImageView;

    if-eqz v4, :cond_ad

    .line 565
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 566
    iget-object v4, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_90

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object p1, v0

    move-object p0, p2

    goto :goto_e6

    :cond_90
    move-object v4, v5

    :goto_91
    if-eqz v4, :cond_98

    iget-object v6, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 567
    :cond_98
    iget-object v4, p0, Lads_mobile_sdk/bz1;->m:Lads_mobile_sdk/v14;

    if-eqz v4, :cond_a1

    iget-object v6, p0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    invoke-virtual {v6, v4}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    .line 568
    :cond_a1
    iget-object v4, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    iget-object v6, p0, Lads_mobile_sdk/bz1;->l:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v4, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_ad
    if-eqz p1, :cond_d7

    .line 574
    iget-object p1, p0, Lads_mobile_sdk/bz1;->a:Lads_mobile_sdk/ix1;

    iget-object v2, p0, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    const-string v4, "default"

    iput-object p0, v0, Lads_mobile_sdk/uy1;->a:Lads_mobile_sdk/bz1;

    iput-object p2, v0, Lads_mobile_sdk/uy1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/uy1;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v0}, Lads_mobile_sdk/ix1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c2
    .catchall {:try_start_61 .. :try_end_c2} :catchall_8c

    if-ne p1, v1, :cond_c5

    :goto_c4
    return-object v1

    :cond_c5
    move-object p1, p0

    move-object p0, p2

    .line 575
    :goto_c7
    :try_start_c7
    iget-object v6, p1, Lads_mobile_sdk/bz1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/vy1;

    invoke-direct {v9, p1, v5}, Lads_mobile_sdk/vy1;-><init>(Lads_mobile_sdk/bz1;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_35

    move-object p2, p0

    move-object p0, p1

    .line 578
    :cond_d7
    :try_start_d7
    iput-object v5, p0, Lads_mobile_sdk/bz1;->j:Landroid/widget/PopupWindow;

    .line 579
    iput-object v5, p0, Lads_mobile_sdk/bz1;->n:Landroid/view/ViewGroup;

    .line 580
    iput-object v5, p0, Lads_mobile_sdk/bz1;->k:Landroid/widget/ImageView;

    .line 581
    iput-object v5, p0, Lads_mobile_sdk/bz1;->m:Lads_mobile_sdk/v14;
    :try_end_df
    .catchall {:try_start_d7 .. :try_end_df} :catchall_8c

    :cond_df
    :goto_df
    move-object p0, p2

    .line 582
    :try_start_e0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_35

    .line 761
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_e6
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final a(Lads_mobile_sdk/bz1;Landroid/view/View;)V
    .registers 2

    .line 1313
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1554
    invoke-virtual {p0, p1}, Lads_mobile_sdk/bz1;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/n53;Landroid/app/Activity;Lads_mobile_sdk/r31;)Landroid/widget/PopupWindow;
    .registers 11

    .line 1283
    iget v0, p1, Lads_mobile_sdk/n53;->a:I

    invoke-static {p2, v0}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v0

    .line 1284
    iget v1, p1, Lads_mobile_sdk/n53;->b:I

    invoke-static {p2, v1}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1286
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1287
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1288
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iget-object v4, p0, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1290
    new-instance v4, Lads_mobile_sdk/v14;

    sget-object v5, Lads_mobile_sdk/u14;->b:Lads_mobile_sdk/u14;

    const/16 v6, 0x8

    invoke-direct {v4, v5, v0, v1, v6}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 1291
    invoke-virtual {p3, v4}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    .line 1293
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x32

    .line 1294
    invoke-static {p2, v4}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v4

    .line 1296
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1297
    iget-object v4, p1, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    .line 1298
    iget-object v4, v4, Lads_mobile_sdk/gy;->a:Lcom/google/common/collect/ImmutableList;

    .line 1299
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1300
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_47

    .line 1301
    :cond_5b
    new-instance v4, Lads_mobile_sdk/bz1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lads_mobile_sdk/bz1$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/bz1;)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_72

    sget v4, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->close_button:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_72

    goto :goto_74

    :cond_72
    const-string p2, "Close button"

    .line 1304
    :goto_74
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1307
    invoke-virtual {v2, p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, v2, v0, v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1310
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p3, 0x1

    .line 1311
    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1312
    iget-boolean p1, p1, Lads_mobile_sdk/n53;->e:Z

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-object p2
.end method

.method public final a(Landroid/view/ViewGroup;Lads_mobile_sdk/n53;Landroid/app/Activity;Landroid/view/Window;Lads_mobile_sdk/r31;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    .line 1840
    instance-of v2, v0, Lads_mobile_sdk/xy1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/xy1;

    iget v3, v2, Lads_mobile_sdk/xy1;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/xy1;->k:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/xy1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/xy1;-><init>(Lads_mobile_sdk/bz1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/xy1;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1992
    iget v4, v2, Lads_mobile_sdk/xy1;->k:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_9d

    if-eq v4, v7, :cond_79

    if-eq v4, v6, :cond_52

    if-ne v4, v5, :cond_4a

    iget-object v3, v2, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    check-cast v3, Landroid/widget/PopupWindow;

    iget-object v4, v2, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v2, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/h41;

    iget-object v6, v2, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    check-cast v6, Lads_mobile_sdk/r31;

    iget-object v2, v2, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    :try_start_42
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_47
    .catchall {:try_start_42 .. :try_end_45} :catchall_10c

    goto/16 :goto_1b4

    :catch_47
    move-exception v0

    goto/16 :goto_1b9

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1993
    :cond_52
    iget-object v4, v2, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    check-cast v4, Landroid/widget/PopupWindow;

    iget-object v6, v2, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/h41;

    iget-object v9, v2, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    check-cast v9, Lads_mobile_sdk/r31;

    iget-object v10, v2, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    :try_start_64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_72
    .catchall {:try_start_64 .. :try_end_67} :catchall_6e

    move-object v5, v2

    move-object v0, v4

    move-object v4, v6

    move-object v6, v9

    move-object v2, v10

    goto/16 :goto_197

    :catchall_6e
    move-exception v0

    move-object v4, v6

    goto/16 :goto_208

    :catch_72
    move-exception v0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-object v2, v10

    goto/16 :goto_1b9

    .line 1994
    :cond_79
    iget-object v4, v2, Lads_mobile_sdk/xy1;->h:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/xy1;->g:Lads_mobile_sdk/h41;

    iget-object v9, v2, Lads_mobile_sdk/xy1;->f:Lads_mobile_sdk/r31;

    iget-object v10, v2, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    check-cast v10, Landroid/view/Window;

    iget-object v11, v2, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    check-cast v11, Landroid/app/Activity;

    iget-object v12, v2, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/n53;

    iget-object v13, v2, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    iget-object v14, v2, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v12

    move-object v12, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    goto :goto_cb

    :cond_9d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2001
    iget-object v4, v1, Lads_mobile_sdk/bz1;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 2330
    iput-object v1, v2, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    move-object/from16 v0, p1

    iput-object v0, v2, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    move-object/from16 v9, p2

    iput-object v9, v2, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    move-object/from16 v10, p3

    iput-object v10, v2, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    move-object/from16 v11, p4

    iput-object v11, v2, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    move-object/from16 v12, p5

    iput-object v12, v2, Lads_mobile_sdk/xy1;->f:Lads_mobile_sdk/r31;

    move-object/from16 v13, p6

    iput-object v13, v2, Lads_mobile_sdk/xy1;->g:Lads_mobile_sdk/h41;

    iput-object v4, v2, Lads_mobile_sdk/xy1;->h:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/xy1;->k:I

    invoke-interface {v4, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_c8

    goto/16 :goto_1b1

    :cond_c8
    move-object v14, v1

    move-object v7, v13

    move-object v13, v0

    .line 2331
    :goto_cb
    :try_start_cb
    iget-object v0, v14, Lads_mobile_sdk/bz1;->j:Landroid/widget/PopupWindow;

    if-nez v0, :cond_11d

    .line 2334
    invoke-virtual {v12}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/bz1;->m:Lads_mobile_sdk/v14;

    .line 2335
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/bz1;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 2341
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v15, "getLayoutParams(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_cb .. :try_end_e4} :catchall_10c

    .line 2342
    :try_start_e4
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 2343
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2344
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2345
    invoke-static {v15, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f2} :catch_10f
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_10c

    .line 2346
    :try_start_f2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2355
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2356
    invoke-virtual {v7, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2357
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2358
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2359
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2360
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_110

    :catchall_10c
    move-exception v0

    goto/16 :goto_208

    :catch_10f
    move-object v6, v8

    :goto_110
    if-nez v6, :cond_119

    .line 2361
    const-string v0, "Unable to create snapshot of webview."

    invoke-virtual {v14, v12, v0}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    goto/16 :goto_202

    .line 2364
    :cond_119
    iput-object v6, v14, Lads_mobile_sdk/bz1;->k:Landroid/widget/ImageView;

    .line 2365
    iput-object v13, v14, Lads_mobile_sdk/bz1;->n:Landroid/view/ViewGroup;

    .line 2367
    :cond_11d
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2368
    iget-object v0, v14, Lads_mobile_sdk/bz1;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_127

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2371
    :cond_127
    invoke-virtual {v14, v9, v10, v12}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/n53;Landroid/app/Activity;Lads_mobile_sdk/r31;)Landroid/widget/PopupWindow;

    move-result-object v0

    .line 2372
    invoke-virtual {v9}, Lads_mobile_sdk/n53;->a()Landroid/graphics/Point;

    move-result-object v5
    :try_end_12f
    .catchall {:try_start_f2 .. :try_end_12f} :catchall_10c

    .line 2378
    :try_start_12f
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 2380
    iget v11, v5, Landroid/graphics/Point;->x:I

    invoke-static {v10, v11}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v11

    .line 2381
    iget v13, v5, Landroid/graphics/Point;->y:I

    invoke-static {v10, v13}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v10

    const/4 v13, 0x0

    .line 2382
    invoke-virtual {v0, v6, v13, v11, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2388
    iget-object v6, v14, Lads_mobile_sdk/bz1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lads_mobile_sdk/yy1;

    invoke-direct {v10, v14, v8}, Lads_mobile_sdk/yy1;-><init>(Lads_mobile_sdk/bz1;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p1, v6

    move-object/from16 p4, v10

    move/from16 p5, v11

    move-object/from16 p6, v13

    move-object/from16 p2, v15

    move-object/from16 p3, v16

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2389
    iget-object v6, v14, Lads_mobile_sdk/bz1;->a:Lads_mobile_sdk/ix1;

    .line 2391
    iget v10, v5, Landroid/graphics/Point;->x:I

    .line 2392
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 2393
    iget v11, v9, Lads_mobile_sdk/n53;->a:I

    .line 2394
    iget v9, v9, Lads_mobile_sdk/n53;->b:I

    .line 2395
    iput-object v14, v2, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    iput-object v12, v2, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    iput-object v7, v2, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/xy1;->f:Lads_mobile_sdk/r31;

    iput-object v8, v2, Lads_mobile_sdk/xy1;->g:Lads_mobile_sdk/h41;

    iput-object v8, v2, Lads_mobile_sdk/xy1;->h:Lkotlinx/coroutines/sync/Mutex;

    const/4 v13, 0x2

    iput v13, v2, Lads_mobile_sdk/xy1;->k:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_17e} :catch_1c1
    .catchall {:try_start_12f .. :try_end_17e} :catchall_10c

    move-object/from16 p6, v2

    move/from16 p3, v5

    move/from16 p5, v9

    move/from16 p2, v10

    move/from16 p4, v11

    move-object/from16 p1, v12

    :try_start_18a
    invoke-static/range {p1 .. p6}, Lads_mobile_sdk/ix1;->a(Lads_mobile_sdk/r31;IIIILads_mobile_sdk/xy1;)Ljava/lang/Object;

    move-result-object v2
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18e} :catch_1bd
    .catchall {:try_start_18a .. :try_end_18e} :catchall_10c

    move-object/from16 v12, p1

    move-object/from16 v5, p6

    if-ne v2, v3, :cond_195

    goto :goto_1b1

    :cond_195
    move-object v6, v12

    move-object v2, v14

    .line 2402
    :goto_197
    :try_start_197
    iget-object v9, v2, Lads_mobile_sdk/bz1;->a:Lads_mobile_sdk/ix1;

    const-string v10, "resized"

    iput-object v2, v5, Lads_mobile_sdk/xy1;->a:Lads_mobile_sdk/bz1;

    iput-object v6, v5, Lads_mobile_sdk/xy1;->b:Landroid/view/ViewGroup;

    iput-object v7, v5, Lads_mobile_sdk/xy1;->c:Ljava/lang/Object;

    iput-object v4, v5, Lads_mobile_sdk/xy1;->d:Ljava/lang/Object;

    iput-object v0, v5, Lads_mobile_sdk/xy1;->e:Ljava/lang/Object;

    const/4 v11, 0x3

    iput v11, v5, Lads_mobile_sdk/xy1;->k:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v10, v5}, Lads_mobile_sdk/ix1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1af} :catch_1b7
    .catchall {:try_start_197 .. :try_end_1af} :catchall_10c

    if-ne v5, v3, :cond_1b2

    :goto_1b1
    return-object v3

    :cond_1b2
    move-object v3, v0

    move-object v5, v7

    .line 2403
    :goto_1b4
    :try_start_1b4
    iput-object v3, v2, Lads_mobile_sdk/bz1;->j:Landroid/widget/PopupWindow;
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b6} :catch_47
    .catchall {:try_start_1b4 .. :try_end_1b6} :catchall_10c

    goto :goto_202

    :catch_1b7
    move-exception v0

    move-object v5, v7

    :goto_1b9
    move-object v14, v2

    move-object v7, v5

    move-object v12, v6

    goto :goto_1c2

    :catch_1bd
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_1c2

    :catch_1c1
    move-exception v0

    .line 2405
    :goto_1c2
    :try_start_1c2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v12, v0}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1e5

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1e6

    :cond_1e5
    move-object v0, v8

    :goto_1e6
    if-eqz v0, :cond_1eb

    .line 2408
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2409
    :cond_1eb
    iget-object v0, v14, Lads_mobile_sdk/bz1;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f4

    iget-object v2, v14, Lads_mobile_sdk/bz1;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2410
    :cond_1f4
    iget-object v0, v14, Lads_mobile_sdk/bz1;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1fb

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2411
    :cond_1fb
    iget-object v0, v14, Lads_mobile_sdk/bz1;->m:Lads_mobile_sdk/v14;

    if-eqz v0, :cond_202

    invoke-virtual {v12, v0}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    .line 2413
    :cond_202
    :goto_202
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_204
    .catchall {:try_start_1c2 .. :try_end_204} :catchall_10c

    .line 2692
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 2693
    :goto_208
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/util/Map;Lads_mobile_sdk/cy1;)Ljava/lang/Object;
    .registers 3

    .line 2695
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/bz1;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;)V
    .registers 9

    .line 1839
    iget-object v0, p0, Lads_mobile_sdk/bz1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/wy1;

    const/4 v1, 0x0

    invoke-direct {v3, p2, p0, p1, v1}, Lads_mobile_sdk/wy1;-><init>(Ljava/lang/String;Lads_mobile_sdk/bz1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Z)V
    .registers 8

    .line 1057
    iget-object v0, p0, Lads_mobile_sdk/bz1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/ty1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lads_mobile_sdk/ty1;-><init>(Lads_mobile_sdk/bz1;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class ads_mobile_sdk.bz1$$ExternalSyntheticLambda0 (ads_mobile_sdk.bz1$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/bz1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bz1;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bz1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bz1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bz1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bz1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bz1;

    invoke-static {v0, p1}, Lads_mobile_sdk/bz1;->a(Lads_mobile_sdk/bz1;Landroid/view/View;)V

    return-void
.end method
