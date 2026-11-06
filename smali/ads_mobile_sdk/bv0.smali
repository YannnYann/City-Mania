###### Class ads_mobile_sdk.bv0 (ads_mobile_sdk.bv0)
.class public final Lads_mobile_sdk/bv0;
.super Lads_mobile_sdk/j12;
.source "SourceFile"


# instance fields
.field public final A:Lcom/google/gson/Gson;

.field public final B:Lads_mobile_sdk/ur3;

.field public final C:Lads_mobile_sdk/eo2;

.field public D:Landroid/graphics/Point;

.field public E:Landroid/graphics/Point;

.field public F:J

.field public G:J

.field public final H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lcom/google/gson/JsonObject;

.field public final h:Lkotlinx/coroutines/CoroutineScope;

.field public final i:Lkotlinx/coroutines/CoroutineScope;

.field public final j:Lads_mobile_sdk/rb;

.field public final k:Lads_mobile_sdk/s02;

.field public final l:Lads_mobile_sdk/k32;

.field public final m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final n:Lads_mobile_sdk/g83;

.field public final o:Lads_mobile_sdk/ks3;

.field public final p:Lads_mobile_sdk/tx;

.field public final q:Lads_mobile_sdk/q52;

.field public final r:Lads_mobile_sdk/vf2;

.field public final s:Lads_mobile_sdk/fm0;

.field public final t:Lads_mobile_sdk/n72;

.field public final u:Lads_mobile_sdk/t72;

.field public final v:Lads_mobile_sdk/j53;

.field public final w:Lads_mobile_sdk/i2;

.field public final x:Lads_mobile_sdk/ja1;

.field public final y:Lads_mobile_sdk/ex0;

.field public final z:Lads_mobile_sdk/s93;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/rb;Lads_mobile_sdk/s02;Lads_mobile_sdk/k32;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/tx;Lads_mobile_sdk/q52;Lads_mobile_sdk/vf2;Lads_mobile_sdk/fm0;Lads_mobile_sdk/d63;Lads_mobile_sdk/v3;Lads_mobile_sdk/n72;Lads_mobile_sdk/t72;Lads_mobile_sdk/j53;Lads_mobile_sdk/i2;Lads_mobile_sdk/ja1;Lads_mobile_sdk/ex0;Lads_mobile_sdk/s93;Lcom/google/gson/Gson;Lads_mobile_sdk/ur3;Lads_mobile_sdk/eo2;)V
    .registers 42

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    .line 1
    const-string v0, "nativeAdJson"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssets"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdUtil"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeJavascriptEngine"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omidMonitor"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingAdEventListener"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlPinger"

    move-object/from16 v13, p14

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    move-object/from16 v13, p15

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeOnePointFiveOverlayFactory"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativePolicyValidatorOverlayFactory"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    move-object/from16 v13, p18

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object/from16 v13, p19

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v13, p20

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v13, p21

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    move-object/from16 v13, p22

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    move-object/from16 v13, p23

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    move-object/from16 v13, p24

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    move-object/from16 v13, p25

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct/range {p0 .. p0}, Lads_mobile_sdk/j12;-><init>()V

    move-object/from16 v0, p0

    .line 91
    iput-object v1, v0, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    .line 92
    iput-object v2, v0, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 93
    iput-object v3, v0, Lads_mobile_sdk/bv0;->i:Lkotlinx/coroutines/CoroutineScope;

    .line 94
    iput-object v4, v0, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    .line 95
    iput-object v5, v0, Lads_mobile_sdk/bv0;->k:Lads_mobile_sdk/s02;

    .line 96
    iput-object v6, v0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    .line 97
    iput-object v7, v0, Lads_mobile_sdk/bv0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 98
    iput-object v8, v0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 99
    iput-object v9, v0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 100
    iput-object v10, v0, Lads_mobile_sdk/bv0;->p:Lads_mobile_sdk/tx;

    .line 101
    iput-object v11, v0, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 102
    iput-object v12, v0, Lads_mobile_sdk/bv0;->r:Lads_mobile_sdk/vf2;

    move-object/from16 v1, p13

    .line 103
    iput-object v1, v0, Lads_mobile_sdk/bv0;->s:Lads_mobile_sdk/fm0;

    .line 106
    iput-object v14, v0, Lads_mobile_sdk/bv0;->t:Lads_mobile_sdk/n72;

    .line 107
    iput-object v15, v0, Lads_mobile_sdk/bv0;->u:Lads_mobile_sdk/t72;

    move-object/from16 v1, p18

    .line 108
    iput-object v1, v0, Lads_mobile_sdk/bv0;->v:Lads_mobile_sdk/j53;

    move-object/from16 v1, p19

    .line 109
    iput-object v1, v0, Lads_mobile_sdk/bv0;->w:Lads_mobile_sdk/i2;

    move-object/from16 v1, p20

    .line 110
    iput-object v1, v0, Lads_mobile_sdk/bv0;->x:Lads_mobile_sdk/ja1;

    move-object/from16 v1, p21

    .line 111
    iput-object v1, v0, Lads_mobile_sdk/bv0;->y:Lads_mobile_sdk/ex0;

    move-object/from16 v1, p22

    .line 112
    iput-object v1, v0, Lads_mobile_sdk/bv0;->z:Lads_mobile_sdk/s93;

    move-object/from16 v1, p23

    .line 113
    iput-object v1, v0, Lads_mobile_sdk/bv0;->A:Lcom/google/gson/Gson;

    move-object/from16 v1, p24

    .line 114
    iput-object v1, v0, Lads_mobile_sdk/bv0;->B:Lads_mobile_sdk/ur3;

    .line 115
    iput-object v13, v0, Lads_mobile_sdk/bv0;->C:Lads_mobile_sdk/eo2;

    .line 117
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    .line 118
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    .line 122
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 124
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lads_mobile_sdk/bv0;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/bv0;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    instance-of v0, p2, Lads_mobile_sdk/yu0;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/yu0;

    iget v1, v0, Lads_mobile_sdk/yu0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yu0;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/yu0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/yu0;-><init>(Lads_mobile_sdk/bv0;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/yu0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 813
    iget v2, v0, Lads_mobile_sdk/yu0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/yu0;->b:Landroid/view/WindowManager;

    iget-object p1, v0, Lads_mobile_sdk/yu0;->a:Lads_mobile_sdk/bv0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_8d

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 814
    iget-object p2, p0, Lads_mobile_sdk/bv0;->w:Lads_mobile_sdk/i2;

    iget-boolean p2, p2, Lads_mobile_sdk/i2;->r0:Z

    if-nez p2, :cond_45

    goto :goto_55

    .line 818
    :cond_45
    iget-object p2, p0, Lads_mobile_sdk/bv0;->x:Lads_mobile_sdk/ja1;

    invoke-virtual {p2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p2

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getNativeAdDebuggerDisabled()Z

    move-result p2

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    :goto_53
    if-eqz p2, :cond_58

    .line 819
    :goto_55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 821
    :cond_58
    check-cast p1, Lads_mobile_sdk/p32;

    invoke-virtual {p1}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_67

    :cond_66
    move-object p1, p2

    :goto_67
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_6e

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    :cond_6e
    if-nez p2, :cond_73

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 822
    :cond_73
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 824
    iget-object p2, p0, Lads_mobile_sdk/bv0;->u:Lads_mobile_sdk/t72;

    iput-object p0, v0, Lads_mobile_sdk/yu0;->a:Lads_mobile_sdk/bv0;

    iput-object p1, v0, Lads_mobile_sdk/yu0;->b:Landroid/view/WindowManager;

    iput v3, v0, Lads_mobile_sdk/yu0;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    invoke-static {p2, v0}, Lads_mobile_sdk/t72;->a(Lads_mobile_sdk/t72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8d

    return-object v1

    .line 826
    :cond_8d
    :goto_8d
    check-cast p2, Lads_mobile_sdk/v01;

    .line 1131
    instance-of v0, p2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_96

    .line 1132
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1429
    :cond_96
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 1430
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1431
    check-cast p2, Lads_mobile_sdk/r31;

    .line 1434
    iget-object v0, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1435
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1442
    iget-object v0, v0, Lads_mobile_sdk/k32;->b:Lads_mobile_sdk/ex0;

    const/16 v2, 0x328

    .line 1444
    const-string v3, "key"

    const-string v4, "gads:policy_validator_layoutparam:flags"

    invoke-static {v0, v4, v3, v2}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 1445
    sget-object v3, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1446
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x2

    .line 1447
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x800033

    .line 1448
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1449
    invoke-interface {p1, p2, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1451
    const-string p2, "<set-?>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1488
    iput-object p1, p0, Lads_mobile_sdk/j12;->e:Ljava/lang/ref/WeakReference;

    .line 1489
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/bv0;Landroid/widget/FrameLayout;Lads_mobile_sdk/g32;Ljava/lang/String;Lcom/google/gson/JsonObject;ZI)V
    .registers 16

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v1, p0

    move v7, p5

    .line 2316
    iget-object p0, v1, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 2317
    new-instance v0, Lads_mobile_sdk/qu0;

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    move-object v2, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/qu0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    move-object p3, v0

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final b(Lads_mobile_sdk/bv0;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    instance-of v0, p2, Lads_mobile_sdk/zu0;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/zu0;

    iget v1, v0, Lads_mobile_sdk/zu0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zu0;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/zu0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/zu0;-><init>(Lads_mobile_sdk/bv0;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/zu0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 840
    iget v2, v0, Lads_mobile_sdk/zu0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lads_mobile_sdk/zu0;->b:Lads_mobile_sdk/o32;

    iget-object p0, v0, Lads_mobile_sdk/zu0;->a:Lads_mobile_sdk/bv0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_aa

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 843
    iget-object p2, p0, Lads_mobile_sdk/bv0;->v:Lads_mobile_sdk/j53;

    sget-object v2, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    if-ne p2, v2, :cond_45

    .line 845
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 848
    :cond_45
    sget-object p2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object p2, p0, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    const-string v2, "overlay"

    const/4 v4, 0x0

    .line 849
    invoke-static {p2, v2, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-eqz p2, :cond_db

    .line 850
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5a

    goto/16 :goto_db

    .line 851
    :cond_5a
    iget-object p2, p0, Lads_mobile_sdk/j12;->d:Ljava/lang/ref/WeakReference;

    .line 852
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/r31;

    if-eqz p2, :cond_70

    .line 853
    iget-object v2, p2, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v2, :cond_70

    .line 854
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_70
    if-eqz p2, :cond_80

    const/4 v2, 0x0

    .line 857
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 858
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_80
    if-eqz p2, :cond_98

    .line 863
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 864
    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/p32;

    invoke-virtual {v2}, Lads_mobile_sdk/p32;->d()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_98

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 869
    :cond_98
    iget-object p2, p0, Lads_mobile_sdk/bv0;->t:Lads_mobile_sdk/n72;

    iput-object p0, v0, Lads_mobile_sdk/zu0;->a:Lads_mobile_sdk/bv0;

    iput-object p1, v0, Lads_mobile_sdk/zu0;->b:Lads_mobile_sdk/o32;

    iput v3, v0, Lads_mobile_sdk/zu0;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    invoke-static {p2, v0}, Lads_mobile_sdk/n72;->a(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_aa

    return-object v1

    .line 871
    :cond_aa
    :goto_aa
    check-cast p2, Lads_mobile_sdk/v01;

    .line 1151
    instance-of v0, p2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_b3

    .line 1152
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1405
    :cond_b3
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 1406
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1407
    check-cast p2, Lads_mobile_sdk/r31;

    .line 1410
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1411
    const-string v1, "<set-?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    iput-object v0, p0, Lads_mobile_sdk/j12;->d:Ljava/lang/ref/WeakReference;

    .line 1443
    check-cast p1, Lads_mobile_sdk/p32;

    invoke-virtual {p1}, Lads_mobile_sdk/p32;->d()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_d8

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1444
    :cond_d8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1445
    :cond_db
    :goto_db
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;
    .registers 11

    .line 3706
    const-string v0, "assetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewScaleType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3707
    iget-object v1, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 3708
    iget-object v2, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 3709
    iget-object v3, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    .line 3710
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object p1

    .line 3718
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3719
    iget-object p3, p1, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    const-string v0, "asset_view_signal"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 3720
    iget-object p3, p1, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    const-string v0, "ad_view_signal"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 3721
    iget-object p3, p1, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    const-string v0, "scroll_view_signal"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 3722
    iget-object p1, p1, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    const-string p3, "lock_screen_signal"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p2
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    .line 3697
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3698
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3699
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    .line 3704
    :cond_2d
    iget-object p1, p0, Lads_mobile_sdk/bv0;->k:Lads_mobile_sdk/s02;

    iget-object p1, p1, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-nez p1, :cond_34

    goto :goto_42

    :cond_34
    sget-object p2, Lads_mobile_sdk/ou0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_42

    .line 3705
    const-string p1, "3099"

    return-object p1

    :cond_42
    :goto_42
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/widget/FrameLayout;)Ljava/lang/String;
    .registers 8

    .line 2345
    iget-object v0, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 2346
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 2347
    iget-object v2, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 2500
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2501
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 2502
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    if-nez v4, :cond_61

    .line 2503
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 2504
    :try_start_17
    iget-object v1, p0, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_21

    .line 2673
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_21
    move-exception p1

    .line 2681
    :try_start_22
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2685
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_5a

    .line 2687
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_37

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_37

    .line 2693
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_37

    :catchall_35
    move-exception p1

    goto :goto_5b

    .line 2699
    :cond_37
    :goto_37
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_52

    .line 2700
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_4a

    .line 2701
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_44

    throw p1

    .line 2702
    :cond_44
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2703
    :cond_4a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2704
    :cond_52
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2705
    :cond_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_35

    .line 2706
    :goto_5b
    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 2740
    :cond_61
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 2741
    :try_start_6a
    iget-object v1, p0, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object p1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_74

    .line 2947
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_74
    move-exception p1

    .line 2955
    :try_start_75
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2959
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_ad

    .line 2961
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_8a

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8a

    .line 2967
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8a

    :catchall_88
    move-exception p1

    goto :goto_ae

    .line 2973
    :cond_8a
    :goto_8a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a5

    .line 2974
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9d

    .line 2975
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_97

    throw p1

    .line 2976
    :cond_97
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2977
    :cond_9d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2978
    :cond_a5
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2979
    :cond_ad
    throw p1
    :try_end_ae
    .catchall {:try_start_75 .. :try_end_ae} :catchall_88

    .line 2980
    :goto_ae
    :try_start_ae
    throw p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()V
    .registers 1

    .line 0
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .registers 16

    .line 4045
    iget-object v0, p0, Lads_mobile_sdk/bv0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 4047
    :goto_c
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v3, p0, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    const-string v4, "allow_sdk_custom_click_gesture"

    .line 4048
    invoke-static {v3, v4, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_36

    if-nez v0, :cond_30

    .line 4049
    invoke-virtual {p0}, Lads_mobile_sdk/bv0;->j()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_30

    .line 4053
    :cond_22
    iget-object v0, p0, Lads_mobile_sdk/bv0;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_36

    .line 4054
    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 4055
    invoke-static {v0, v3}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4056
    :cond_30
    :goto_30
    const-string v0, "Custom click reporting failed. Ad unit id is not in the allow list."

    .line 4057
    invoke-static {v0, v3}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4058
    :cond_36
    iget-object v0, p0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 4059
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o32;

    if-nez v0, :cond_47

    .line 4061
    const-string v0, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    const/4 v2, 0x6

    invoke-static {v0, v3, v3, v2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void

    .line 4068
    :cond_47
    iget-object v4, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 4069
    iget-object v5, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 4070
    iget-object v6, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    .line 4071
    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/p32;

    invoke-virtual {v10}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v7

    .line 4072
    invoke-virtual {v10}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v8

    .line 4073
    invoke-virtual {v10}, Lads_mobile_sdk/p32;->e()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_60

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :cond_60
    move-object v9, v0

    .line 4074
    invoke-static/range {v4 .. v9}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object v4

    .line 4083
    invoke-virtual {v10}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/bv0;->a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 4084
    iget-object v0, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    iget-object v6, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    iget-object v7, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v6, v7}, Lads_mobile_sdk/k32;->a(Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/google/gson/JsonObject;

    move-result-object v6

    if-eqz v2, :cond_e1

    .line 4087
    iget-object v2, p0, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    .line 4089
    iget-object v0, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    iget-object v7, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    iget-object v8, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4090
    :try_start_84
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_a2

    const-string v9, "y"

    const-string v11, "x"

    if-eqz v7, :cond_a4

    .line 4092
    :try_start_8f
    iget v12, v7, Landroid/graphics/Point;->x:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4093
    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_a4

    :catch_a2
    move-exception v0

    goto :goto_d7

    .line 4097
    :cond_a4
    :goto_a4
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz v8, :cond_bd

    .line 4099
    iget v12, v8, Landroid/graphics/Point;->x:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4100
    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4103
    :cond_bd
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4104
    const-string v9, "start_point"

    invoke-virtual {v8, v9, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4105
    const-string v0, "end_point"

    invoke-virtual {v8, v0, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4106
    const-string v0, "duration_ms"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_d5} :catch_a2

    move-object v3, v8

    goto :goto_dc

    .line 4109
    :goto_d7
    const-string v7, "Error occurred while grabbing custom click gesture signals."

    invoke-static {v7, v0}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4110
    :goto_dc
    const-string v0, "custom_click_gesture_signal"

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 4116
    :cond_e1
    invoke-virtual {v10}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x10

    move-object v1, p0

    .line 4117
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/bv0;->a(Lads_mobile_sdk/bv0;Landroid/widget/FrameLayout;Lads_mobile_sdk/g32;Ljava/lang/String;Lcom/google/gson/JsonObject;ZI)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/widget/ImageView$ScaleType;)V
    .registers 17

    .line 2294
    const-string v0, "clickedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewScaleType"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2295
    iget-object v6, p0, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/pu0;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lads_mobile_sdk/pu0;-><init>(Lads_mobile_sdk/bv0;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2300
    iget-object v0, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 2301
    iget-object v1, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 2302
    iget-object v2, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    move-object v3, p2

    move-object v4, p3

    .line 2303
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object v5

    .line 2311
    invoke-virtual {p0, p1, p3}, Lads_mobile_sdk/bv0;->a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 2312
    iget-object p1, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    iget-object v0, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    iget-object v1, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    invoke-virtual {p1, v6, v0, v1}, Lads_mobile_sdk/k32;->a(Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/google/gson/JsonObject;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v3, p0

    move-object v4, p2

    .line 2314
    invoke-static/range {v3 .. v9}, Lads_mobile_sdk/bv0;->a(Lads_mobile_sdk/bv0;Landroid/widget/FrameLayout;Lads_mobile_sdk/g32;Ljava/lang/String;Lcom/google/gson/JsonObject;ZI)V

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;)V
    .registers 6

    .line 4118
    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4119
    iget-object v1, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4120
    new-array v0, v0, [I

    if-eqz p1, :cond_15

    .line 4121
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4122
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    .line 4123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 4124
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 4125
    iput-object v0, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    .line 4126
    iget-object p1, p0, Lads_mobile_sdk/bv0;->p:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4128
    iput-wide v0, p0, Lads_mobile_sdk/bv0;->G:J

    .line 4131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_45

    .line 4132
    iput-wide v0, p0, Lads_mobile_sdk/bv0;->F:J

    .line 4133
    iget-object p1, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    iput-object p1, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    .line 4136
    :cond_45
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 4137
    iget-object p2, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 4138
    iget-object p2, p0, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4139
    const-string v0, "inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4290
    invoke-virtual {p2}, Lads_mobile_sdk/rb;->g()Lads_mobile_sdk/fa;

    move-result-object p2

    invoke-virtual {p2, p1}, Lads_mobile_sdk/fa;->a(Landroid/view/InputEvent;)V

    .line 4291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V
    .registers 17

    .line 2318
    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetViews"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaviewScaleType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2319
    iget-object v7, p0, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lads_mobile_sdk/ru0;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lads_mobile_sdk/ru0;-><init>(Lads_mobile_sdk/bv0;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2326
    iget-object v1, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 2327
    iget-object v2, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 2328
    iget-object v3, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    move-object v4, p1

    move-object v6, p2

    .line 2329
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object v6

    .line 2337
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/bv0;->a(Landroid/widget/FrameLayout;)Ljava/lang/String;

    move-result-object v8

    .line 2338
    iget-object p1, p0, Lads_mobile_sdk/bv0;->w:Lads_mobile_sdk/i2;

    iget-boolean p1, p1, Lads_mobile_sdk/i2;->r0:Z

    const/4 v0, 0x0

    if-nez p1, :cond_39

    :goto_37
    move v9, v0

    goto :goto_48

    .line 2342
    :cond_39
    iget-object p1, p0, Lads_mobile_sdk/bv0;->x:Lads_mobile_sdk/ja1;

    invoke-virtual {p1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getNativeAdDebuggerDisabled()Z

    move-result v0

    :cond_45
    xor-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 2343
    :goto_48
    iget-object v0, p0, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/su0;

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lads_mobile_sdk/su0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 4348
    const-string p1, "assetViews"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4349
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4350
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4376
    iput-object p1, p0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 4377
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4378
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4409
    iput-object p1, p0, Lads_mobile_sdk/j12;->d:Ljava/lang/ref/WeakReference;

    .line 4410
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    .line 4411
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    .line 1494
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 1801
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/bv0;->a(Lads_mobile_sdk/bv0;Landroid/widget/FrameLayout;Lads_mobile_sdk/g32;Ljava/lang/String;Lcom/google/gson/JsonObject;ZI)V

    return-void
.end method

.method public final a(Ljava/lang/ref/WeakReference;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 13

    .line 4292
    const-string v0, "nativeAdViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4293
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4319
    iput-object p1, p0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 4320
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    .line 4321
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    if-eqz p2, :cond_3a

    .line 4325
    iget-object v1, p0, Lads_mobile_sdk/bv0;->i:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/av0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lads_mobile_sdk/av0;-><init>(Lads_mobile_sdk/bv0;Landroid/view/View;Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3a
    const/4 p1, 0x1

    if-eqz p2, :cond_46

    .line 4338
    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4339
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 4340
    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4343
    :cond_46
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4e
    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_72

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 4344
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4e

    .line 4345
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4346
    invoke-virtual {p3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 4347
    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4e

    :cond_72
    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;
    .registers 5

    .line 2751
    const-string v0, "assetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewScaleType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2752
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2753
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/bv0;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "nas"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2754
    iget-object p1, p0, Lads_mobile_sdk/bv0;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lads_mobile_sdk/bv0;->j()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2755
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "custom_click_gesture_eligible"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2d
    return-object v0
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V
    .registers 15

    .line 2732
    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaviewScaleType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2733
    iget-object v1, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 2734
    iget-object v2, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 2735
    iget-object v3, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    .line 2736
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object v6

    .line 2744
    invoke-virtual {p0, v4}, Lads_mobile_sdk/bv0;->a(Landroid/widget/FrameLayout;)Ljava/lang/String;

    move-result-object v8

    .line 2745
    iget-object p1, p0, Lads_mobile_sdk/bv0;->w:Lads_mobile_sdk/i2;

    iget-boolean p1, p1, Lads_mobile_sdk/i2;->r0:Z

    const/4 p2, 0x0

    if-nez p1, :cond_29

    :goto_27
    move v9, p2

    goto :goto_38

    .line 2749
    :cond_29
    iget-object p1, p0, Lads_mobile_sdk/bv0;->x:Lads_mobile_sdk/ja1;

    invoke-virtual {p1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getNativeAdDebuggerDisabled()Z

    move-result p2

    :cond_35
    xor-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 2750
    :goto_38
    iget-object v0, p0, Lads_mobile_sdk/bv0;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/tu0;

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lads_mobile_sdk/tu0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c()V
    .registers 16

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o32;

    if-nez v0, :cond_12

    .line 5
    const-string v0, "Ad should be associated with an ad view before click happens."

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void

    .line 10
    :cond_12
    iget-object v3, p0, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 11
    iget-object v4, p0, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 12
    iget-object v5, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    .line 13
    check-cast v0, Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v6

    .line 14
    invoke-virtual {v0}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v7

    .line 15
    invoke-virtual {v0}, Lads_mobile_sdk/p32;->e()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-nez v1, :cond_2a

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :cond_2a
    move-object v8, v1

    .line 16
    invoke-static/range {v3 .. v8}, Lads_mobile_sdk/f32;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;

    move-result-object v10

    .line 17
    iget-object v1, p0, Lads_mobile_sdk/j12;->f:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lads_mobile_sdk/bv0;->a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 19
    iget-object v1, p0, Lads_mobile_sdk/bv0;->l:Lads_mobile_sdk/k32;

    iget-object v2, p0, Lads_mobile_sdk/bv0;->E:Landroid/graphics/Point;

    iget-object v3, p0, Lads_mobile_sdk/bv0;->D:Landroid/graphics/Point;

    invoke-virtual {v1, v11, v2, v3}, Lads_mobile_sdk/k32;->a(Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 22
    invoke-virtual {v0}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v14, 0x30

    move-object v8, p0

    .line 23
    invoke-static/range {v8 .. v14}, Lads_mobile_sdk/bv0;->a(Lads_mobile_sdk/bv0;Landroid/widget/FrameLayout;Lads_mobile_sdk/g32;Ljava/lang/String;Lcom/google/gson/JsonObject;ZI)V

    return-void
.end method

.method public final d()Z
    .registers 2

    .line 377
    invoke-virtual {p0}, Lads_mobile_sdk/bv0;->e()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 378
    :cond_8
    iget-object v0, p0, Lads_mobile_sdk/bv0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureAllowTaps()Z

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 2

    .line 374
    iget-object v0, p0, Lads_mobile_sdk/bv0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;->getValue()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .registers 4

    .line 386
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v0, p0, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    .line 387
    invoke-static {v0, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lads_mobile_sdk/bv0;->k:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lads_mobile_sdk/bv0;->k:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
