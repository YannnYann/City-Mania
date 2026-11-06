###### Class ads_mobile_sdk.if1 (ads_mobile_sdk.if1)
.class public final Lads_mobile_sdk/if1;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vk0;
.implements Lads_mobile_sdk/cd3;
.implements Lads_mobile_sdk/gx0;


# static fields
.field public static final N:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final O:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final P:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final Q:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final R:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;


# instance fields
.field public A:Lcom/google/gson/JsonObject;

.field public B:Lcom/google/gson/JsonObject;

.field public C:Lads_mobile_sdk/ae1;

.field public final D:Lkotlinx/coroutines/sync/Mutex;

.field public E:J

.field public final F:Ljava/util/LinkedHashMap;

.field public final G:Ljava/util/LinkedHashMap;

.field public final H:Lkotlinx/coroutines/sync/Mutex;

.field public I:Ljava/lang/ref/WeakReference;

.field public final J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public M:Ljava/lang/Boolean;

.field public final c:Landroid/content/Context;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Ljava/lang/String;

.field public final f:Lads_mobile_sdk/cw2;

.field public final g:Lads_mobile_sdk/cw2;

.field public final h:Lcom/google/gson/Gson;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/tx;

.field public final k:Lads_mobile_sdk/e01;

.field public final l:Lads_mobile_sdk/qg1;

.field public final m:Lads_mobile_sdk/ek;

.field public final n:Lads_mobile_sdk/pn;

.field public final o:Lads_mobile_sdk/fg1;

.field public final p:Lads_mobile_sdk/iz3;

.field public final q:Lads_mobile_sdk/g83;

.field public final r:Lads_mobile_sdk/l43;

.field public final s:Lads_mobile_sdk/cw2;

.field public final t:Lads_mobile_sdk/rd1;

.field public final u:Lads_mobile_sdk/g30;

.field public final v:Lads_mobile_sdk/km;

.field public final w:Lads_mobile_sdk/ja1;

.field public final x:Lkotlinx/coroutines/sync/Mutex;

.field public y:Lads_mobile_sdk/og1;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->ALREADY_OPEN:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because it is already open."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->N:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 3
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->FAILED_TO_LOAD:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector failed to load."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->O:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 5
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector had an internal error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->P:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 7
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->NOT_IN_TEST_MODE:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->Q:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 9
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->DISABLED:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->R:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/e01;Lads_mobile_sdk/qg1;Lads_mobile_sdk/ek;Lads_mobile_sdk/pn;Lads_mobile_sdk/fg1;Lads_mobile_sdk/iz3;Lads_mobile_sdk/g83;Lads_mobile_sdk/l43;Lads_mobile_sdk/dw2;Lads_mobile_sdk/rd1;Lads_mobile_sdk/g30;Lads_mobile_sdk/km;Lads_mobile_sdk/ja1;)V
    .registers 38

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

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shakeDetector"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flickDetector"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorSettingsDataStore"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenterFactory"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewConfigurator"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdapterInfo"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/s11;->x:Lads_mobile_sdk/s11;

    const/4 v15, 0x0

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    .line 3
    iput-object v1, v14, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    .line 4
    iput-object v2, v14, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object v3, v14, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    .line 6
    iput-object v4, v14, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    .line 7
    iput-object v5, v14, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    .line 8
    iput-object v6, v14, Lads_mobile_sdk/if1;->h:Lcom/google/gson/Gson;

    .line 9
    iput-object v7, v14, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    .line 10
    iput-object v8, v14, Lads_mobile_sdk/if1;->j:Lads_mobile_sdk/tx;

    .line 11
    iput-object v9, v14, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 12
    iput-object v10, v14, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 13
    iput-object v11, v14, Lads_mobile_sdk/if1;->m:Lads_mobile_sdk/ek;

    .line 14
    iput-object v12, v14, Lads_mobile_sdk/if1;->n:Lads_mobile_sdk/pn;

    .line 15
    iput-object v13, v14, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    move-object/from16 v0, p14

    .line 16
    iput-object v0, v14, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    move-object/from16 v0, p15

    .line 17
    iput-object v0, v14, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    move-object/from16 v0, p16

    .line 18
    iput-object v0, v14, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    move-object/from16 v0, p17

    .line 19
    iput-object v0, v14, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    move-object/from16 v0, p18

    .line 20
    iput-object v0, v14, Lads_mobile_sdk/if1;->t:Lads_mobile_sdk/rd1;

    move-object/from16 v0, p19

    .line 21
    iput-object v0, v14, Lads_mobile_sdk/if1;->u:Lads_mobile_sdk/g30;

    move-object/from16 v0, p20

    .line 22
    iput-object v0, v14, Lads_mobile_sdk/if1;->v:Lads_mobile_sdk/km;

    move-object/from16 v0, p21

    .line 23
    iput-object v0, v14, Lads_mobile_sdk/if1;->w:Lads_mobile_sdk/ja1;

    .line 30
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 35
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 36
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 37
    sget-object v0, Lads_mobile_sdk/ae1;->a:Lads_mobile_sdk/ae1;

    iput-object v0, v14, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    .line 39
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    .line 46
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lads_mobile_sdk/if1;Lads_mobile_sdk/ae1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 12671
    instance-of v4, v3, Lads_mobile_sdk/qe1;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/qe1;

    iget v5, v4, Lads_mobile_sdk/qe1;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/qe1;->i:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lads_mobile_sdk/qe1;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/qe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_20
    iget-object v3, v4, Lads_mobile_sdk/qe1;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 13080
    iget v6, v4, Lads_mobile_sdk/qe1;->i:I

    const-string v7, "defaultValue"

    const-string v8, "key"

    const-string v9, "https://admob-gmats.uc.r.appspot.com/"

    const-string v10, "gads:inspector:ui_url"

    const-string v11, "Ad inspector cannot be opened because it is already open."

    const-string v12, "Ad inspector is disabled"

    const-string v13, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    const-string v14, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml."

    packed-switch v6, :pswitch_data_98a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_43
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/eg1;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v4, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_55
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5a

    goto/16 :goto_900

    :catchall_5a
    move-exception v0

    :goto_5b
    const/4 v10, 0x0

    goto/16 :goto_924

    .line 13081
    :pswitch_5e
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_74
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7a

    move-object v12, v8

    goto/16 :goto_896

    :catchall_7a
    move-exception v0

    goto :goto_bd

    .line 13082
    :pswitch_7c
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_92
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_7a

    move-object/from16 v23, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v9

    move-object/from16 v9, v23

    goto/16 :goto_86c

    .line 13083
    :pswitch_9e
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v11, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_b3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_bc

    move-object v12, v11

    move-object v11, v9

    move-object v9, v10

    move-object v10, v7

    goto/16 :goto_7f1

    :catchall_bc
    move-exception v0

    :goto_bd
    move-object v5, v6

    goto :goto_5b

    .line 13084
    :pswitch_bf
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_d1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_dd

    move-object v3, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v9

    move-object v9, v3

    move-object v3, v0

    move-object v0, v6

    goto/16 :goto_770

    :catchall_dd
    move-exception v0

    goto/16 :goto_934

    .line 13085
    :pswitch_e0
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/ae1;

    iget-object v13, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_f6
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_dd

    move-object v14, v6

    move-object v6, v0

    move-object v0, v14

    move-object v14, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v9

    move-object v9, v14

    move-object v14, v12

    move-object v12, v13

    const/4 v15, 0x0

    goto/16 :goto_74e

    .line 13086
    :pswitch_106
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v14, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ae1;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_11c
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_dd

    move-object v3, v6

    move-object v6, v0

    move-object v0, v3

    move-object v3, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v9

    move-object v9, v3

    move-object v3, v15

    const/4 v15, 0x0

    goto/16 :goto_6af

    .line 13087
    :pswitch_12b
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ae1;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_143
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_156

    move-object v3, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v9

    move-object v9, v3

    move-object/from16 v3, p0

    move-object/from16 v22, v2

    move-object v2, v6

    move-object v6, v0

    move-object v0, v1

    move-object v1, v15

    const/4 v15, 0x0

    goto/16 :goto_648

    :catchall_156
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_934

    .line 13088
    :pswitch_15b
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/eg1;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v4, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_16d
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_59f

    goto/16 :goto_58f

    .line 13089
    :pswitch_172
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_188
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18e

    move-object v12, v8

    goto/16 :goto_525

    :catchall_18e
    move-exception v0

    move-object v5, v6

    goto/16 :goto_5af

    .line 13090
    :pswitch_192
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_1a8
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_18e

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object v7, v11

    goto/16 :goto_4f3

    .line 13091
    :pswitch_1b6
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v11, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_1cb
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1ce
    .catchall {:try_start_1cb .. :try_end_1ce} :catchall_18e

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object v12, v11

    goto/16 :goto_47e

    .line 13092
    :pswitch_1d9
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_1eb
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_201

    move-object/from16 v17, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_405

    :catchall_201
    move-exception v0

    goto/16 :goto_5ca

    .line 13093
    :pswitch_204
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v12, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/ae1;

    iget-object v13, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_21a
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_21d
    .catchall {:try_start_21a .. :try_end_21d} :catchall_201

    move-object v3, v0

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v14, v12

    move-object v12, v13

    const/4 v10, 0x0

    goto/16 :goto_3dd

    .line 13094
    :pswitch_22d
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v14, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ae1;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_243
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_246
    .catchall {:try_start_243 .. :try_end_246} :catchall_201

    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    const/4 v7, 0x0

    goto/16 :goto_33e

    .line 13095
    :pswitch_258
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ae1;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_270
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_273
    .catchall {:try_start_270 .. :try_end_273} :catchall_285

    move-object v3, v2

    move-object v2, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    const/4 v7, 0x0

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_2de

    :catchall_285
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_5ca

    .line 13096
    :pswitch_28a
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13100
    iget-object v3, v0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v6, Lads_mobile_sdk/s11;->c1:Lads_mobile_sdk/s11;

    .line 13640
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object/from16 v17, v7

    .line 13641
    new-instance v7, Lads_mobile_sdk/ks3;

    move-object/from16 v18, v9

    .line 13642
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v19, v8

    .line 13643
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v20, v10

    .line 13644
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v21, v11

    .line 13645
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 13646
    invoke-direct {v7, v9, v8, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 13647
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v8

    if-nez v8, :cond_616

    .line 13648
    invoke-static {v3, v6, v15, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 13649
    :try_start_2c2
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 14199
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2d8
    .catchall {:try_start_2c2 .. :try_end_2d8} :catchall_5d4

    if-ne v8, v5, :cond_2dc

    goto/16 :goto_8fd

    :cond_2dc
    move-object v15, v1

    move-object v1, v3

    .line 14200
    :goto_2de
    :try_start_2de
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->k()Z

    move-result v8
    :try_end_2e2
    .catchall {:try_start_2de .. :try_end_2e2} :catchall_5ce

    .line 14754
    :try_start_2e2
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v8, :cond_320

    .line 14755
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 15310
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15311
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15312
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15313
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15314
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 15320
    new-instance v7, Lads_mobile_sdk/re1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v2}, Lads_mobile_sdk/re1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 15321
    invoke-static {v14, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 15322
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31c
    .catchall {:try_start_2e2 .. :try_end_31c} :catchall_5cc

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 15325
    :cond_320
    :try_start_320
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 15892
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_336
    .catchall {:try_start_320 .. :try_end_336} :catchall_5cc

    if-ne v8, v5, :cond_33a

    goto/16 :goto_8fd

    :cond_33a
    move-object v14, v15

    move-object v15, v0

    move-object v0, v2

    move-object v2, v3

    .line 15893
    :goto_33e
    :try_start_33e
    invoke-virtual {v15}, Lads_mobile_sdk/if1;->l()Z

    move-result v3
    :try_end_342
    .catchall {:try_start_33e .. :try_end_342} :catchall_5c4

    .line 16464
    :try_start_342
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v3, :cond_380

    .line 16465
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 17037
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17038
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17039
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17040
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17041
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 17047
    new-instance v7, Lads_mobile_sdk/se1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v0}, Lads_mobile_sdk/se1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 17048
    invoke-static {v13, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17049
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_37c
    .catchall {:try_start_342 .. :try_end_37c} :catchall_201

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 17052
    :cond_380
    :try_start_380
    iget-object v3, v15, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v3

    if-nez v3, :cond_3c1

    .line 17053
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 17631
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17632
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17633
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17634
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17635
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 17641
    new-instance v7, Lads_mobile_sdk/te1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v0}, Lads_mobile_sdk/te1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 17642
    invoke-static {v12, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17643
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3bd
    .catchall {:try_start_380 .. :try_end_3bd} :catchall_201

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 17646
    :cond_3c1
    :try_start_3c1
    iget-object v3, v15, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 18236
    iput-object v15, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v10, 0x0

    invoke-interface {v3, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3d7
    .catchall {:try_start_3c1 .. :try_end_3d7} :catchall_201

    if-ne v6, v5, :cond_3db

    goto/16 :goto_8fd

    :cond_3db
    move-object v6, v0

    move-object v12, v15

    .line 18237
    :goto_3dd
    :try_start_3dd
    iput-object v14, v12, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3e1
    .catchall {:try_start_3dd .. :try_end_3e1} :catchall_5be

    .line 18831
    :try_start_3e1
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 18832
    iget-object v0, v12, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 19431
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-interface {v0, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3fa
    .catchall {:try_start_3e1 .. :try_end_3fa} :catchall_201

    if-ne v3, v5, :cond_3fe

    goto/16 :goto_8fd

    :cond_3fe
    move-object/from16 v23, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    move-object/from16 v2, v23

    .line 19432
    :goto_405
    :try_start_405
    iget-object v3, v12, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/eg1;

    if-eqz v3, :cond_45b

    .line 19433
    iget-object v3, v3, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_45b

    .line 19434
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_45b

    .line 19435
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 20034
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20035
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20036
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20037
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20038
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 20044
    new-instance v10, Lads_mobile_sdk/ue1;

    const/4 v3, 0x0

    invoke-direct {v10, v3, v0}, Lads_mobile_sdk/ue1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object/from16 v7, v21

    const/4 v0, 0x6

    .line 20045
    invoke-static {v7, v3, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 20046
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_450
    .catchall {:try_start_405 .. :try_end_450} :catchall_5b2

    .line 20655
    :try_start_450
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_453
    .catchall {:try_start_450 .. :try_end_453} :catchall_457

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_457
    move-exception v0

    move-object v3, v6

    goto/16 :goto_569

    .line 20656
    :cond_45b
    :try_start_45b
    iget-object v3, v12, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    .line 20657
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v8, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10, v10, v9}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 20658
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10, v8, v4}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_47e

    goto/16 :goto_8fd

    .line 20659
    :cond_47e
    :goto_47e
    check-cast v3, Lads_mobile_sdk/v01;

    .line 20696
    instance-of v7, v3, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_4c2

    .line 20697
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 21299
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21300
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21301
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21302
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21303
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 21309
    new-instance v10, Lads_mobile_sdk/ve1;

    const/4 v4, 0x0

    invoke-direct {v10, v4, v0}, Lads_mobile_sdk/ve1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 21310
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 21311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4ba
    .catchall {:try_start_45b .. :try_end_4ba} :catchall_5b2

    const/4 v10, 0x0

    .line 21910
    :try_start_4bb
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_4be
    .catchall {:try_start_4bb .. :try_end_4be} :catchall_457

    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 21911
    :cond_4c2
    :try_start_4c2
    instance-of v7, v3, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_5b4

    check-cast v3, Lads_mobile_sdk/q01;

    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/r31;

    .line 21913
    iget-object v7, v12, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/yd1;

    invoke-virtual {v3}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v8

    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v9, 0x6

    iput v9, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v7, v8, v4}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4ed
    .catchall {:try_start_4c2 .. :try_end_4ed} :catchall_5b2

    if-ne v7, v5, :cond_4f1

    goto/16 :goto_8fd

    :cond_4f1
    move-object v7, v0

    move-object v0, v3

    .line 21915
    :goto_4f3
    :try_start_4f3
    iget-object v3, v12, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;
    :try_end_4f5
    .catchall {:try_start_4f3 .. :try_end_4f5} :catchall_18e

    :try_start_4f5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    .line 21917
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21959
    sget-object v8, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v9, v11, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21960
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;
    :try_end_510
    .catchall {:try_start_4f5 .. :try_end_510} :catchall_5b2

    :try_start_510
    iput-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_521
    .catchall {:try_start_510 .. :try_end_521} :catchall_18e

    if-ne v3, v5, :cond_525

    goto/16 :goto_8fd

    .line 21961
    :cond_525
    :goto_525
    :try_start_525
    check-cast v3, Lads_mobile_sdk/v01;

    .line 22008
    instance-of v8, v3, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_56c

    .line 22009
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 22613
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22614
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22615
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22616
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22617
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 22623
    new-instance v11, Lads_mobile_sdk/we1;

    const/4 v10, 0x0

    invoke-direct {v11, v10, v7}, Lads_mobile_sdk/we1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 22624
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 22625
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_561
    .catchall {:try_start_525 .. :try_end_561} :catchall_5b2

    const/4 v10, 0x0

    .line 23214
    :try_start_562
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_565
    .catchall {:try_start_562 .. :try_end_565} :catchall_457

    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_569
    move-object v1, v2

    goto/16 :goto_5d6

    .line 23215
    :cond_56c
    :try_start_56c
    iget-object v3, v12, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    check-cast v3, Lads_mobile_sdk/gg1;

    invoke-virtual {v3, v12, v0, v7}, Lads_mobile_sdk/gg1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)Lads_mobile_sdk/eg1;

    move-result-object v0

    .line 23216
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v3, 0x8

    iput v3, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/eg1;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_589
    .catchall {:try_start_56c .. :try_end_589} :catchall_5b2

    if-ne v3, v5, :cond_58d

    goto/16 :goto_8fd

    :cond_58d
    move-object v5, v6

    move-object v4, v12

    .line 23217
    :goto_58f
    :try_start_58f
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5a1

    .line 23218
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v4, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    goto :goto_5a1

    :catchall_59f
    move-exception v0

    goto :goto_5af

    .line 23220
    :cond_5a1
    :goto_5a1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5a3
    .catchall {:try_start_58f .. :try_end_5a3} :catchall_59f

    const/4 v10, 0x0

    .line 23802
    :try_start_5a4
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_5a7
    .catchall {:try_start_5a4 .. :try_end_5a7} :catchall_5ac

    .line 23830
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_918

    :catchall_5ac
    move-exception v0

    move-object v3, v5

    goto :goto_569

    :goto_5af
    move-object v6, v5

    :goto_5b0
    const/4 v10, 0x0

    goto :goto_5ba

    :catchall_5b2
    move-exception v0

    goto :goto_5b0

    .line 23831
    :cond_5b4
    :try_start_5b4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_5ba
    .catchall {:try_start_5b4 .. :try_end_5ba} :catchall_5b2

    .line 24428
    :goto_5ba
    :try_start_5ba
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_5be
    .catchall {:try_start_5ba .. :try_end_5be} :catchall_457

    :catchall_5be
    move-exception v0

    const/4 v10, 0x0

    .line 24429
    :try_start_5c0
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_5c4
    move-exception v0

    const/4 v10, 0x0

    .line 24430
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_5ca
    .catchall {:try_start_5c0 .. :try_end_5ca} :catchall_201

    :goto_5ca
    move-object v3, v2

    goto :goto_5d6

    :catchall_5cc
    move-exception v0

    goto :goto_5d6

    :catchall_5ce
    move-exception v0

    const/4 v10, 0x0

    .line 24431
    :try_start_5d0
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_5d4
    .catchall {:try_start_5d0 .. :try_end_5d4} :catchall_5cc

    :catchall_5d4
    move-exception v0

    move-object v1, v3

    .line 24542
    :goto_5d6
    :try_start_5d6
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 24546
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_60f

    .line 24548
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_5ec

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5ec

    .line 24554
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_5ec

    :catchall_5e9
    move-exception v0

    move-object v2, v0

    goto :goto_610

    .line 24560
    :cond_5ec
    :goto_5ec
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_607

    .line 24561
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5ff

    .line 24562
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_5f9

    throw v0

    .line 24563
    :cond_5f9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 24564
    :cond_5ff
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 24565
    :cond_607
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 24566
    :cond_60f
    throw v0
    :try_end_610
    .catchall {:try_start_5d6 .. :try_end_610} :catchall_5e9

    .line 24567
    :goto_610
    :try_start_610
    throw v2
    :try_end_611
    .catchall {:try_start_610 .. :try_end_611} :catchall_611

    :catchall_611
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_616
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v7, v21

    .line 24716
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x1

    invoke-static {v6, v3, v15}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 24717
    :try_start_629
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 25267
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v15, 0x9

    iput v15, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_640
    .catchall {:try_start_629 .. :try_end_640} :catchall_947

    if-ne v1, v5, :cond_644

    goto/16 :goto_8fd

    :cond_644
    move-object/from16 v1, p1

    move-object/from16 v22, v3

    .line 25268
    :goto_648
    :try_start_648
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->k()Z

    move-result v17
    :try_end_64c
    .catchall {:try_start_648 .. :try_end_64c} :catchall_93f

    .line 25822
    :try_start_64c
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v17, :cond_68a

    .line 25823
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 26378
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26379
    sget-object v1, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26380
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26381
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26519
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 26525
    new-instance v7, Lads_mobile_sdk/re1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v2}, Lads_mobile_sdk/re1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 26526
    invoke-static {v14, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 26527
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_686
    .catchall {:try_start_64c .. :try_end_686} :catchall_939

    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 26530
    :cond_68a
    :try_start_68a
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 27234
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;
    :try_end_692
    .catchall {:try_start_68a .. :try_end_692} :catchall_939

    move-object/from16 v14, v22

    :try_start_694
    iput-object v14, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v15, 0xa

    iput v15, v4, Lads_mobile_sdk/qe1;->i:I

    move-object/from16 v16, v1

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6a5
    .catchall {:try_start_694 .. :try_end_6a5} :catchall_937

    if-ne v1, v5, :cond_6a9

    goto/16 :goto_8fd

    :cond_6a9
    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v14

    move-object/from16 v14, v16

    .line 27235
    :goto_6af
    :try_start_6af
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v17
    :try_end_6b3
    .catchall {:try_start_6af .. :try_end_6b3} :catchall_92e

    .line 27943
    :try_start_6b3
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v17, :cond_6f1

    .line 27944
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 28653
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28654
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28655
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28656
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28657
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 28663
    new-instance v7, Lads_mobile_sdk/se1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v0}, Lads_mobile_sdk/se1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 28664
    invoke-static {v13, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 28665
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6ed
    .catchall {:try_start_6b3 .. :try_end_6ed} :catchall_dd

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 28668
    :cond_6f1
    :try_start_6f1
    iget-object v6, v3, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v6

    if-nez v6, :cond_732

    .line 28669
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 29384
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29385
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29386
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29387
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29388
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 29394
    new-instance v7, Lads_mobile_sdk/te1;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v0}, Lads_mobile_sdk/te1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 29395
    invoke-static {v12, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 29396
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_72e
    .catchall {:try_start_6f1 .. :try_end_72e} :catchall_dd

    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 29399
    :cond_732
    :try_start_732
    iget-object v6, v3, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 30126
    iput-object v3, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v12, 0xb

    iput v12, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_749
    .catchall {:try_start_732 .. :try_end_749} :catchall_dd

    if-ne v12, v5, :cond_74d

    goto/16 :goto_8fd

    :cond_74d
    move-object v12, v3

    .line 30127
    :goto_74e
    :try_start_74e
    iput-object v14, v12, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_752
    .catchall {:try_start_74e .. :try_end_752} :catchall_928

    .line 30858
    :try_start_752
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 30859
    iget-object v3, v12, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 31595
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v6, 0xc

    iput v6, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-interface {v3, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_76c
    .catchall {:try_start_752 .. :try_end_76c} :catchall_dd

    if-ne v6, v5, :cond_770

    goto/16 :goto_8fd

    .line 31596
    :cond_770
    :goto_770
    :try_start_770
    iget-object v6, v12, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/eg1;

    if-eqz v6, :cond_7c6

    .line 31597
    iget-object v6, v6, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_7c6

    .line 31598
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_7c6

    .line 31599
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 32335
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32336
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32337
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32338
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32339
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 32345
    new-instance v11, Lads_mobile_sdk/ue1;

    const/4 v15, 0x0

    invoke-direct {v11, v15, v0}, Lads_mobile_sdk/ue1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 32346
    invoke-static {v7, v15, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 32347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7b9
    .catchall {:try_start_770 .. :try_end_7b9} :catchall_7c0

    .line 33093
    :try_start_7b9
    invoke-interface {v3, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_7bc
    .catchall {:try_start_7b9 .. :try_end_7bc} :catchall_dd

    invoke-static {v1, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_7c0
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_5b

    .line 33094
    :cond_7c6
    :try_start_7c6
    iget-object v6, v12, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    .line 33095
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v13, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15, v15, v14}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 33096
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/16 v13, 0xd

    iput v13, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual {v6, v7, v13, v15, v4}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7e6
    .catchall {:try_start_7c6 .. :try_end_7e6} :catchall_7c0

    if-ne v6, v5, :cond_7ea

    goto/16 :goto_8fd

    :cond_7ea
    move-object/from16 v23, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    move-object/from16 v6, v23

    .line 33097
    :goto_7f1
    :try_start_7f1
    check-cast v3, Lads_mobile_sdk/v01;

    .line 33134
    instance-of v7, v3, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_83a

    .line 33135
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 33874
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33875
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33876
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33877
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33878
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 33884
    new-instance v10, Lads_mobile_sdk/ve1;

    const/4 v15, 0x0

    invoke-direct {v10, v15, v0}, Lads_mobile_sdk/ve1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33885
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 33886
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_82d
    .catchall {:try_start_7f1 .. :try_end_82d} :catchall_7a

    const/4 v10, 0x0

    .line 34622
    :try_start_82e
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_831
    .catchall {:try_start_82e .. :try_end_831} :catchall_835

    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_835
    move-exception v0

    move-object v1, v2

    move-object v2, v6

    goto/16 :goto_934

    .line 34623
    :cond_83a
    :try_start_83a
    instance-of v7, v3, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_91e

    check-cast v3, Lads_mobile_sdk/q01;

    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/r31;

    .line 34625
    iget-object v7, v12, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/yd1;

    invoke-virtual {v3}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v13

    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v14, 0xe

    iput v14, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v7, v13, v4}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_86a

    goto/16 :goto_8fd

    :cond_86a
    move-object v7, v0

    move-object v0, v3

    .line 34627
    :goto_86c
    iget-object v3, v12, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34629
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34671
    sget-object v8, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v9, v11, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34672
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v8, 0xf

    iput v8, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_893
    .catchall {:try_start_83a .. :try_end_893} :catchall_7a

    if-ne v3, v5, :cond_896

    goto :goto_8fd

    .line 34673
    :cond_896
    :goto_896
    :try_start_896
    check-cast v3, Lads_mobile_sdk/v01;

    .line 34720
    instance-of v8, v3, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_8de

    .line 34721
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 35462
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35463
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35464
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35465
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35466
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 35472
    new-instance v11, Lads_mobile_sdk/we1;

    const/4 v10, 0x0

    invoke-direct {v11, v10, v7}, Lads_mobile_sdk/we1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35473
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 35474
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8d2
    .catchall {:try_start_896 .. :try_end_8d2} :catchall_bc

    const/4 v10, 0x0

    .line 36200
    :try_start_8d3
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_8d6
    .catchall {:try_start_8d3 .. :try_end_8d6} :catchall_8da

    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_8da
    move-exception v0

    move-object v3, v6

    goto/16 :goto_949

    .line 36201
    :cond_8de
    :try_start_8de
    iget-object v3, v12, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    check-cast v3, Lads_mobile_sdk/gg1;

    invoke-virtual {v3, v12, v0, v7}, Lads_mobile_sdk/gg1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)Lads_mobile_sdk/eg1;

    move-result-object v0

    .line 36202
    iput-object v12, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v3, 0x10

    iput v3, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/eg1;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8fb
    .catchall {:try_start_8de .. :try_end_8fb} :catchall_bc

    if-ne v3, v5, :cond_8fe

    :goto_8fd
    return-object v5

    :cond_8fe
    move-object v5, v6

    move-object v4, v12

    .line 36203
    :goto_900
    :try_start_900
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_90f

    .line 36204
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v4, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    .line 36206
    :cond_90f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_911
    .catchall {:try_start_900 .. :try_end_911} :catchall_5a

    const/4 v10, 0x0

    .line 36925
    :try_start_912
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_915
    .catchall {:try_start_912 .. :try_end_915} :catchall_91b

    .line 36953
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 36954
    :goto_918
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_91b
    move-exception v0

    move-object v3, v5

    goto :goto_949

    .line 36955
    :cond_91e
    :try_start_91e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_924
    .catchall {:try_start_91e .. :try_end_924} :catchall_7a

    .line 37689
    :goto_924
    :try_start_924
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_928
    .catchall {:try_start_924 .. :try_end_928} :catchall_91b

    :catchall_928
    move-exception v0

    const/4 v10, 0x0

    .line 37690
    :try_start_92a
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_92e
    move-exception v0

    const/4 v10, 0x0

    .line 37691
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_934
    .catchall {:try_start_92a .. :try_end_934} :catchall_dd

    :goto_934
    move-object v3, v2

    move-object v2, v1

    goto :goto_949

    :catchall_937
    move-exception v0

    goto :goto_93c

    :catchall_939
    move-exception v0

    move-object/from16 v14, v22

    :goto_93c
    move-object v2, v3

    move-object v3, v14

    goto :goto_949

    :catchall_93f
    move-exception v0

    move-object/from16 v14, v22

    const/4 v10, 0x0

    .line 37692
    :try_start_943
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_947
    .catchall {:try_start_943 .. :try_end_947} :catchall_937

    :catchall_947
    move-exception v0

    move-object v2, v3

    .line 37940
    :goto_949
    :try_start_949
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 37944
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_982

    .line 37946
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_95f

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_95f

    .line 37952
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_95f

    :catchall_95c
    move-exception v0

    move-object v1, v0

    goto :goto_983

    .line 37958
    :cond_95f
    :goto_95f
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_97a

    .line 37959
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_972

    .line 37960
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_96c

    throw v0

    .line 37961
    :cond_96c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37962
    :cond_972
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 37963
    :cond_97a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 37964
    :cond_982
    throw v0
    :try_end_983
    .catchall {:try_start_949 .. :try_end_983} :catchall_95c

    .line 37965
    :goto_983
    :try_start_983
    throw v1
    :try_end_984
    .catchall {:try_start_983 .. :try_end_984} :catchall_984

    :catchall_984
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_98a
    .packed-switch 0x0
        :pswitch_28a
        :pswitch_258
        :pswitch_22d
        :pswitch_204
        :pswitch_1d9
        :pswitch_1b6
        :pswitch_192
        :pswitch_172
        :pswitch_15b
        :pswitch_12b
        :pswitch_106
        :pswitch_e0
        :pswitch_bf
        :pswitch_9e
        :pswitch_7c
        :pswitch_5e
        :pswitch_43
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/if1;Lads_mobile_sdk/vd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 39496
    instance-of v2, v1, Lads_mobile_sdk/af1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/af1;

    iget v3, v2, Lads_mobile_sdk/af1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/af1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/af1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/af1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/af1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 39777
    iget v3, v13, Lads_mobile_sdk/af1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_52

    if-eq v3, v5, :cond_45

    if-ne v3, v4, :cond_3d

    iget-object v2, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iget-object v3, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    :try_start_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    goto/16 :goto_aa

    :catchall_3a
    move-exception v0

    goto/16 :goto_de

    .line 39778
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v0, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iget-object v5, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v6, v3

    move-object v3, v5

    goto :goto_75

    :cond_52
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39779
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-nez v1, :cond_60

    .line 39780
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 39783
    :cond_60
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 40416
    iput-object v0, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iput-object v1, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/af1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_73

    goto :goto_a7

    :cond_73
    move-object v6, v3

    move-object v3, v0

    .line 40417
    :goto_75
    :try_start_75
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_83

    const-string v0, "storedInspectorSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    goto :goto_83

    :catchall_80
    move-exception v0

    move-object v2, v1

    goto :goto_de

    .line 40418
    :cond_83
    :goto_83
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    if-ne v0, v6, :cond_8f

    .line 40419
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_80

    .line 41054
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 41055
    :cond_8f
    :try_start_8f
    iput-object v3, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iput-object v1, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/af1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1fb

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_a5
    .catchall {:try_start_8f .. :try_end_a5} :catchall_80

    if-ne v0, v2, :cond_a8

    :goto_a7
    return-object v2

    :cond_a8
    move-object v2, v1

    move-object v0, v6

    .line 41057
    :goto_aa
    :try_start_aa
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 41058
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_3a

    .line 41687
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 41688
    :cond_b6
    :try_start_b6
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 41689
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    .line 41690
    iget-object v1, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ed3;

    invoke-virtual {v1}, Lads_mobile_sdk/ed3;->a()V

    .line 41691
    iget-object v1, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ix0;

    invoke-virtual {v1}, Lads_mobile_sdk/ix0;->a()V

    .line 41692
    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    .line 41694
    :cond_d8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_da
    .catchall {:try_start_b6 .. :try_end_da} :catchall_3a

    .line 42314
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 42315
    :goto_de
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 44555
    instance-of v2, v1, Lads_mobile_sdk/cf1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/cf1;

    iget v3, v2, Lads_mobile_sdk/cf1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/cf1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/cf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/cf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/cf1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 44786
    iget v3, v13, Lads_mobile_sdk/cf1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_55

    if-eq v3, v5, :cond_46

    if-ne v3, v4, :cond_3e

    iget-object v0, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    :try_start_36
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_ac

    :catchall_3b
    move-exception v0

    goto/16 :goto_bf

    .line 44787
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/gson/JsonObject;

    iget-object v5, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v3

    move-object v3, v5

    goto :goto_70

    :cond_55
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 45442
    iput-object v0, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    iput-object v1, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/cf1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_6b

    goto :goto_a9

    :cond_6b
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    .line 45443
    :goto_70
    :try_start_70
    iput-object v0, v3, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 45444
    const-string v5, "is_globally_allowlisted"

    const/4 v6, 0x0

    .line 45445
    invoke-static {v0, v5, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 45446
    iget-object v5, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v5, :cond_87

    const-string v5, "storedInspectorSettings"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v15

    goto :goto_87

    :catchall_84
    move-exception v0

    move-object v2, v1

    goto :goto_bf

    .line 45447
    :cond_87
    :goto_87
    invoke-virtual {v5}, Lads_mobile_sdk/og1;->z()Z

    move-result v5

    if-eq v0, v5, :cond_aa

    .line 45448
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v3, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/cf1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0xff

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_a7
    .catchall {:try_start_70 .. :try_end_a7} :catchall_84

    if-ne v0, v2, :cond_aa

    :goto_a9
    return-object v2

    :cond_aa
    move-object v2, v1

    move-object v0, v3

    .line 45451
    :goto_ac
    :try_start_ac
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->l()Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-boolean v1, v0, Lads_mobile_sdk/if1;->z:Z

    if-nez v1, :cond_b9

    .line 45452
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->i()V

    .line 45454
    :cond_b9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bb
    .catchall {:try_start_ac .. :try_end_bb} :catchall_3b

    .line 46103
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 46104
    :goto_bf
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 49461
    instance-of v2, v1, Lads_mobile_sdk/gf1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/gf1;

    iget v3, v2, Lads_mobile_sdk/gf1;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/gf1;->n:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/gf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/gf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/gf1;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 49815
    iget v4, v2, Lads_mobile_sdk/gf1;->n:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_68

    if-eq v4, v6, :cond_42

    if-ne v4, v5, :cond_3a

    iget-object v0, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_32
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    goto/16 :goto_d8

    :catchall_37
    move-exception v0

    goto/16 :goto_de

    .line 49816
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iget-object v6, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    iget-object v8, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    iget-object v11, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    iget-object v13, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    iget-object v14, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    iget-object v15, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v13

    move-object v13, v8

    move-object v8, v1

    move-object v1, v12

    move-object v12, v9

    move-object v9, v1

    move-object v1, v11

    move-object v11, v10

    move-object v10, v1

    move-object v1, v0

    goto :goto_a2

    :cond_68
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49826
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 50403
    iput-object v0, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    move-object/from16 v8, p2

    iput-object v8, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    move-object/from16 v9, p3

    iput-object v9, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    move-object/from16 v10, p4

    iput-object v10, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    move-object/from16 v11, p5

    iput-object v11, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    move-object/from16 v12, p6

    iput-object v12, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    move-object/from16 v13, p7

    iput-object v13, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    move-object/from16 v14, p8

    iput-object v14, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    move-object/from16 v15, p9

    iput-object v15, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iput-object v1, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/gf1;->n:I

    invoke-interface {v1, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_9e

    goto :goto_d6

    :cond_9e
    move-object v6, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v0

    .line 50404
    :goto_a2
    :try_start_a2
    iput-object v1, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/gf1;->n:I

    move-object/from16 p10, v2

    move-object/from16 p9, v4

    move-object/from16 p8, v6

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p5, v11

    move-object/from16 p6, v12

    move-object/from16 p7, v13

    move-object/from16 p1, v14

    move-object/from16 p0, v15

    invoke-virtual/range {p0 .. p10}, Lads_mobile_sdk/if1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d4
    .catchall {:try_start_a2 .. :try_end_d4} :catchall_e0

    if-ne v0, v3, :cond_d7

    :goto_d6
    return-object v3

    :cond_d7
    move-object v2, v1

    .line 50415
    :goto_d8
    :try_start_d8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_da
    .catchall {:try_start_d8 .. :try_end_da} :catchall_37

    .line 50984
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_de
    move-object v1, v2

    goto :goto_e1

    :catchall_e0
    move-exception v0

    .line 50985
    :goto_e1
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .registers 14

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object p1, v1

    :cond_6
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_b

    move-object p2, v1

    :cond_b
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_10

    move-object p3, v1

    :cond_10
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_15

    move-object p4, v1

    :cond_15
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_1a

    move-object p5, v1

    :cond_1a
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_1f

    move-object p6, v1

    :cond_1f
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_24

    move-object p7, v1

    :cond_24
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_29

    move-object p8, v1

    :cond_29
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_2e

    move-object p9, v1

    .line 52631
    :cond_2e
    invoke-virtual/range {p0 .. p10}, Lads_mobile_sdk/if1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 4374
    instance-of v4, v3, Lads_mobile_sdk/de1;

    if-eqz v4, :cond_1c

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/de1;

    iget v5, v4, Lads_mobile_sdk/de1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1c

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/de1;->j:I

    :goto_1a
    move-object v9, v4

    goto :goto_22

    :cond_1c
    new-instance v4, Lads_mobile_sdk/de1;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/de1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_1a

    :goto_22
    iget-object v3, v9, Lads_mobile_sdk/de1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 5021
    iget v5, v9, Lads_mobile_sdk/de1;->j:I

    const-string v11, "exception"

    const-string v12, "1"

    const-string v13, "debug_mode"

    const-class v14, Lcom/google/gson/JsonObject;

    const-string v15, "Null response body when fetching debug settings"

    const-string v6, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const-string v7, "gads:drx_debug:timeout_ms"

    const-string v8, "toString(...)"

    const-string v10, "key"

    move-object/from16 v17, v3

    const-string v3, ""

    move-object/from16 v19, v11

    packed-switch v5, :pswitch_data_4a8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4d
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_57
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    goto/16 :goto_43c

    :catchall_5c
    move-exception v0

    goto/16 :goto_45f

    .line 5022
    :pswitch_5f
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/if1;

    :try_start_6d
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_5c

    move-object v11, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_419

    .line 5023
    :pswitch_75
    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_81
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_5c

    move-object v11, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, v5

    move-object v5, v0

    move-object v0, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v19

    goto/16 :goto_3ad

    .line 5024
    :pswitch_92
    iget-object v0, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    iget-object v1, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iget-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v11, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/if1;

    :try_start_a4
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_b9

    move-object/from16 v21, v3

    move-object v3, v6

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object v12, v1

    move-object v1, v11

    move-object v11, v5

    move-object/from16 v5, p0

    goto/16 :goto_345

    :catchall_b9
    move-exception v0

    goto/16 :goto_468

    .line 5025
    :pswitch_bc
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_c6
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_cb

    goto/16 :goto_293

    :catchall_cb
    move-exception v0

    goto/16 :goto_2b6

    .line 5026
    :pswitch_ce
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/if1;

    :try_start_dc
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_cb

    move-object v7, v3

    goto/16 :goto_272

    .line 5027
    :pswitch_e2
    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_ee
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_cb

    move-object/from16 v21, v3

    move-object v3, v6

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v12, 0x6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1fe

    .line 5028
    :pswitch_101
    iget-object v0, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    iget-object v1, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iget-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v11, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/if1;

    :try_start_113
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_12b

    move-object/from16 v21, v3

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v3, v17

    move-object/from16 v17, v6

    move-object v6, v1

    move-object v1, v11

    move-object v11, v5

    move-object/from16 v5, p0

    goto/16 :goto_1a4

    :catchall_12b
    move-exception v0

    goto/16 :goto_2bf

    .line 5029
    :pswitch_12e
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5033
    iget-object v5, v0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v11, Lads_mobile_sdk/s11;->W0:Lads_mobile_sdk/s11;

    move-object/from16 v17, v6

    .line 5865
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object/from16 v20, v12

    .line 5866
    new-instance v12, Lads_mobile_sdk/ks3;

    move-object/from16 v21, v3

    .line 5867
    new-instance v3, Lads_mobile_sdk/n03;

    invoke-direct {v3}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v22, v13

    .line 5868
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v23, v14

    .line 5869
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v24, v15

    .line 5870
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 5871
    invoke-direct {v12, v3, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 5872
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v3

    .line 5873
    iget-object v3, v3, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v14, "defaultValue"

    const-string v15, "https://www.google.com/dfp/debugSignals"

    const-string v13, "gads:drx_debug:debug_signal_status_url"

    if-nez v3, :cond_2ff

    .line 5874
    invoke-static {v5, v11, v6, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 5875
    :try_start_170
    iget-object v5, v0, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 5877
    new-instance v6, Lads_mobile_sdk/e81;

    invoke-direct {v6}, Lads_mobile_sdk/e81;-><init>()V

    .line 5879
    iget-object v11, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5881
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5923
    sget-object v12, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v11, v13, v15, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5924
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v3, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v3, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-object v6, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v5, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v12, 0x1

    iput v12, v9, Lads_mobile_sdk/de1;->j:I

    .line 5925
    invoke-static {v0, v11, v1, v2, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_19d
    .catchall {:try_start_170 .. :try_end_19d} :catchall_2bc

    if-ne v2, v4, :cond_1a1

    goto/16 :goto_439

    :cond_1a1
    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    .line 5926
    :goto_1a4
    :try_start_1a4
    check-cast v3, Landroid/net/Uri;

    .line 5937
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5938
    invoke-virtual {v6, v3}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v3

    .line 5942
    invoke-virtual {v3}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v6

    .line 5943
    iget-object v3, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5944
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v12, 0x5

    invoke-static {v12, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5945
    invoke-static {v12, v13}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v8

    sget-object v10, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v3, v7, v8, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 5946
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    .line 5947
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    const/4 v3, 0x0

    iput-object v3, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v3, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v3, 0x2

    iput v3, v9, Lads_mobile_sdk/de1;->j:I

    const/4 v8, 0x0

    const/16 v10, 0x1c

    move-object/from16 v3, v17

    const/4 v12, 0x6

    invoke-static/range {v5 .. v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v5
    :try_end_1f4
    .catchall {:try_start_1a4 .. :try_end_1f4} :catchall_2b9

    if-ne v5, v4, :cond_1f8

    goto/16 :goto_439

    :cond_1f8
    move-object v6, v0

    move-object/from16 v17, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v11

    .line 5948
    :goto_1fe
    :try_start_1fe
    move-object/from16 v0, v17

    check-cast v0, Lads_mobile_sdk/v01;

    .line 6790
    instance-of v7, v0, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_215

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 6791
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 6792
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_210
    .catchall {:try_start_1fe .. :try_end_210} :catchall_cb

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 7617
    :cond_215
    :try_start_215
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 7618
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 7619
    check-cast v0, Lads_mobile_sdk/h81;
    :try_end_21e
    .catchall {:try_start_215 .. :try_end_21e} :catchall_cb

    .line 7620
    :try_start_21e
    iget-object v0, v0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v0, :cond_22c

    .line 7621
    invoke-static {v0}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22d

    :catchall_227
    move-exception v0

    move-object/from16 v5, v19

    goto/16 :goto_29c

    :cond_22c
    const/4 v0, 0x0

    :goto_22d
    if-nez v0, :cond_23f

    move-object/from16 v3, v24

    const/4 v7, 0x0

    .line 7623
    invoke-static {v3, v7, v12}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/16 v18, 0x0

    .line 7624
    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_23b
    .catchall {:try_start_21e .. :try_end_23b} :catchall_227

    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 7626
    :cond_23f
    :try_start_23f
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v7, v23

    invoke-virtual {v3, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    .line 7629
    invoke-static {v0, v3, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_254
    .catchall {:try_start_23f .. :try_end_254} :catchall_227

    move-object/from16 v3, v20

    .line 7630
    :try_start_256
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 7631
    iput-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v3, 0x3

    iput v3, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7632
    invoke-static {v6, v0, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_272

    goto/16 :goto_439

    :cond_272
    :goto_272
    if-eqz v0, :cond_279

    if-nez v5, :cond_277

    goto :goto_279

    :cond_277
    move-object v3, v5

    goto :goto_27a

    :cond_279
    :goto_279
    move-object v3, v7

    .line 7636
    :goto_27a
    iput-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v7, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v5, 0x4

    iput v5, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7637
    invoke-static {v6, v3, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_293

    goto/16 :goto_439

    .line 7638
    :cond_293
    :goto_293
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_297
    .catchall {:try_start_256 .. :try_end_297} :catchall_cb

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 7639
    :goto_29c
    :try_start_29c
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7640
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 7643
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 7644
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7645
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2b1
    .catchall {:try_start_29c .. :try_end_2b1} :catchall_cb

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_2b6
    move-object v5, v2

    move-object v2, v1

    goto :goto_2bf

    :catchall_2b9
    move-exception v0

    move-object v5, v11

    goto :goto_2bf

    :catchall_2bc
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 8457
    :goto_2bf
    :try_start_2bf
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 8461
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_2f8

    .line 8463
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2d5

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2d5

    .line 8469
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2d5

    :catchall_2d2
    move-exception v0

    move-object v1, v0

    goto :goto_2f9

    .line 8475
    :cond_2d5
    :goto_2d5
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2f0

    .line 8476
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2e8

    .line 8477
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2e2

    throw v0

    .line 8478
    :cond_2e2
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8479
    :cond_2e8
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 8480
    :cond_2f0
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 8481
    :cond_2f8
    throw v0
    :try_end_2f9
    .catchall {:try_start_2bf .. :try_end_2f9} :catchall_2d2

    .line 8498
    :goto_2f9
    :try_start_2f9
    throw v1
    :try_end_2fa
    .catchall {:try_start_2f9 .. :try_end_2fa} :catchall_2fa

    :catchall_2fa
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2ff
    move-object/from16 v3, v17

    move-object/from16 v5, v19

    const/4 v12, 0x6

    .line 8500
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v11, v6, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 8501
    :try_start_30d
    iget-object v11, v0, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 8503
    new-instance v12, Lads_mobile_sdk/e81;

    invoke-direct {v12}, Lads_mobile_sdk/e81;-><init>()V

    move-object/from16 v19, v5

    .line 8505
    iget-object v5, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8507
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8549
    sget-object v14, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v5, v13, v15, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8550
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v6, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v6, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-object v12, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v11, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v13, 0x5

    iput v13, v9, Lads_mobile_sdk/de1;->j:I

    .line 8551
    invoke-static {v0, v5, v1, v2, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_33c
    .catchall {:try_start_30d .. :try_end_33c} :catchall_465

    if-ne v2, v4, :cond_340

    goto/16 :goto_439

    :cond_340
    move-object/from16 v17, v2

    move-object v2, v6

    move-object v5, v11

    move-object v11, v2

    .line 8552
    :goto_345
    :try_start_345
    check-cast v17, Landroid/net/Uri;

    .line 8563
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8564
    invoke-virtual {v12, v6}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v6

    .line 8568
    invoke-virtual {v6}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v6

    .line 8569
    iget-object v8, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8570
    sget-object v12, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v12, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v13, 0x5

    invoke-static {v13, v12}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8571
    invoke-static {v12, v13}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v10

    sget-object v12, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v8, v7, v10, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/time/Duration;

    invoke-virtual {v7}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 8572
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    .line 8573
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    const/4 v8, 0x0

    iput-object v8, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v8, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v12, 0x6

    iput v12, v9, Lads_mobile_sdk/de1;->j:I

    const/4 v8, 0x0

    const/16 v10, 0x1c

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v1, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v0, v24

    invoke-static/range {v5 .. v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v5
    :try_end_3a2
    .catchall {:try_start_345 .. :try_end_3a2} :catchall_462

    if-ne v5, v4, :cond_3a6

    goto/16 :goto_439

    :cond_3a6
    move-object/from16 v6, v17

    move-object/from16 v17, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 8574
    :goto_3ad
    :try_start_3ad
    move-object/from16 v7, v17

    check-cast v7, Lads_mobile_sdk/v01;

    .line 9416
    instance-of v8, v7, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_3c9

    check-cast v7, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 9417
    invoke-static {v7, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 9418
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3bf
    .catchall {:try_start_3ad .. :try_end_3bf} :catchall_3c4

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3c4
    move-exception v0

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_45f

    .line 10243
    :cond_3c9
    :try_start_3c9
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/q01;

    .line 10244
    iget-object v3, v7, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 10245
    check-cast v3, Lads_mobile_sdk/h81;
    :try_end_3d2
    .catchall {:try_start_3c9 .. :try_end_3d2} :catchall_3c4

    .line 10246
    :try_start_3d2
    iget-object v3, v3, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v3, :cond_3dd

    .line 10247
    invoke-static {v3}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3de

    :catchall_3db
    move-exception v0

    goto :goto_445

    :cond_3dd
    const/4 v3, 0x0

    :goto_3de
    if-nez v3, :cond_3ef

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 10249
    invoke-static {v0, v8, v7}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/16 v18, 0x0

    .line 10250
    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3eb
    .catchall {:try_start_3d2 .. :try_end_3eb} :catchall_3db

    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 10252
    :cond_3ef
    :try_start_3ef
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 10255
    invoke-static {v0, v14, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3fe
    .catchall {:try_start_3ef .. :try_end_3fe} :catchall_3db

    .line 10256
    :try_start_3fe
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 10257
    iput-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v3, 0x7

    iput v3, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10258
    invoke-static {v6, v0, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_419

    goto :goto_439

    :cond_419
    :goto_419
    if-eqz v0, :cond_420

    if-nez v5, :cond_41e

    goto :goto_420

    :cond_41e
    move-object v3, v5

    goto :goto_421

    :cond_420
    :goto_420
    move-object v3, v1

    .line 10262
    :goto_421
    iput-object v11, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v2, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v7, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/16 v1, 0x8

    iput v1, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10263
    invoke-static {v6, v3, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_437
    .catchall {:try_start_3fe .. :try_end_437} :catchall_3c4

    if-ne v1, v4, :cond_43a

    :goto_439
    return-object v4

    :cond_43a
    move-object v1, v2

    move-object v2, v11

    .line 10264
    :goto_43c
    :try_start_43c
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_440
    .catchall {:try_start_43c .. :try_end_440} :catchall_5c

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 10265
    :goto_445
    :try_start_445
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10266
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 10269
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    const/4 v5, 0x0

    iput-boolean v5, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 10270
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 10271
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_45a
    .catchall {:try_start_445 .. :try_end_45a} :catchall_3c4

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_45f
    move-object v5, v2

    move-object v2, v1

    goto :goto_468

    :catchall_462
    move-exception v0

    move-object v5, v11

    goto :goto_468

    :catchall_465
    move-exception v0

    move-object v2, v6

    move-object v5, v2

    .line 11117
    :goto_468
    :try_start_468
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 11121
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_4a1

    .line 11123
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_47e

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_47e

    .line 11129
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_47e

    :catchall_47b
    move-exception v0

    move-object v1, v0

    goto :goto_4a2

    .line 11135
    :cond_47e
    :goto_47e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_499

    .line 11136
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_491

    .line 11137
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_48b

    throw v0

    .line 11138
    :cond_48b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 11139
    :cond_491
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 11140
    :cond_499
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 11141
    :cond_4a1
    throw v0
    :try_end_4a2
    .catchall {:try_start_468 .. :try_end_4a2} :catchall_47b

    .line 11158
    :goto_4a2
    :try_start_4a2
    throw v1
    :try_end_4a3
    .catchall {:try_start_4a2 .. :try_end_4a3} :catchall_4a3

    :catchall_4a3
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_4a8
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_101
        :pswitch_e2
        :pswitch_ce
        :pswitch_bc
        :pswitch_92
        :pswitch_75
        :pswitch_5f
        :pswitch_4d
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/Long;Lads_mobile_sdk/gk3;)Ljava/lang/Object;
    .registers 15

    .line 49459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v10, p3

    .line 49460
    invoke-static/range {v0 .. v10}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 2810
    instance-of v0, p4, Lads_mobile_sdk/ce1;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/ce1;

    iget v1, v0, Lads_mobile_sdk/ce1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ce1;->j:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ce1;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/ce1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/ce1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3507
    iget v2, v0, Lads_mobile_sdk/ce1;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_44

    if-ne v2, v3, :cond_3c

    iget-object p0, v0, Lads_mobile_sdk/ce1;->g:Landroid/net/Uri$Builder;

    iget-object p1, v0, Lads_mobile_sdk/ce1;->f:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/ce1;->e:Landroid/net/Uri$Builder;

    iget-object p3, v0, Lads_mobile_sdk/ce1;->d:Landroid/net/Uri$Builder;

    iget-object v1, v0, Lads_mobile_sdk/ce1;->c:Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lads_mobile_sdk/ce1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/ce1;->a:Lads_mobile_sdk/if1;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, p4

    move-object p4, v4

    goto :goto_72

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4358
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4359
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 4361
    iput-object p0, v0, Lads_mobile_sdk/ce1;->a:Lads_mobile_sdk/if1;

    iput-object p2, v0, Lads_mobile_sdk/ce1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/ce1;->c:Lcom/google/gson/JsonObject;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->d:Landroid/net/Uri$Builder;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->e:Landroid/net/Uri$Builder;

    const-string p4, "linkedDeviceId"

    iput-object p4, v0, Lads_mobile_sdk/ce1;->f:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->g:Landroid/net/Uri$Builder;

    iput v3, v0, Lads_mobile_sdk/ce1;->j:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4362
    invoke-static {p0, v0}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6b

    return-object v1

    :cond_6b
    move-object v1, p3

    move-object v2, v0

    move-object v0, p0

    move-object p0, p1

    move-object p3, p0

    move-object p1, p4

    move-object p4, p3

    .line 4363
    :goto_72
    check-cast v2, Lads_mobile_sdk/og1;

    invoke-virtual {v2}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p2, :cond_82

    .line 4365
    const-string p0, "adSlotPath"

    invoke-virtual {p3, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4367
    :cond_82
    iget-object p0, v0, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    const-string p1, "afmaVersion"

    invoke-virtual {p3, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v1, :cond_94

    .line 4370
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "debugData"

    invoke-virtual {p3, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4373
    :cond_94
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 37966
    instance-of v2, v1, Lads_mobile_sdk/ze1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ze1;

    iget v3, v2, Lads_mobile_sdk/ze1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ze1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/ze1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ze1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/ze1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 38193
    iget v3, v13, Lads_mobile_sdk/ze1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_51

    if-eq v3, v5, :cond_42

    if-ne v3, v4, :cond_3a

    iget-object v0, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_34
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_83

    :catchall_38
    move-exception v0

    goto :goto_89

    .line 38194
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iget-object v5, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v10, v3

    move-object v3, v5

    goto :goto_69

    :cond_51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 38842
    iput-object v0, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iput-object v1, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/ze1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_67

    goto :goto_81

    :cond_67
    move-object v10, v3

    move-object v3, v0

    .line 38843
    :goto_69
    :try_start_69
    iput-object v1, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iput-object v15, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/ze1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1bf

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7f
    .catchall {:try_start_69 .. :try_end_7f} :catchall_8b

    if-ne v0, v2, :cond_82

    :goto_81
    return-object v2

    :cond_82
    move-object v2, v1

    .line 38844
    :goto_83
    :try_start_83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_38

    .line 39494
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_89
    move-object v1, v2

    goto :goto_8c

    :catchall_8b
    move-exception v0

    .line 39495
    :goto_8c
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 11159
    instance-of v0, p1, Lads_mobile_sdk/ee1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ee1;

    iget v1, v0, Lads_mobile_sdk/ee1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ee1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ee1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ee1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ee1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11384
    iget v2, v0, Lads_mobile_sdk/ee1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/ee1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ee1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 12023
    iput-object p0, v0, Lads_mobile_sdk/ee1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/ee1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ee1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 12024
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->l()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_56

    .line 12667
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_56
    move-exception p0

    .line 12668
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 42316
    instance-of v2, v1, Lads_mobile_sdk/bf1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/bf1;

    iget v3, v2, Lads_mobile_sdk/bf1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/bf1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/bf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/bf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/bf1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 42565
    iget v3, v13, Lads_mobile_sdk/bf1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_51

    if-eq v3, v5, :cond_45

    if-ne v3, v4, :cond_3d

    iget-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iget-object v2, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    :try_start_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    goto/16 :goto_b0

    :catchall_3a
    move-exception v0

    goto/16 :goto_110

    .line 42566
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iget-object v3, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    move-object v3, v5

    goto :goto_92

    :cond_51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42567
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-eqz v1, :cond_114

    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42569
    const-string v3, "key"

    const-string v6, "gads:inspector:linked_device_enable_inspector"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42585
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v3, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7a

    goto/16 :goto_114

    .line 42586
    :cond_7a
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 43240
    iput-object v0, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v3, p1

    iput-boolean v3, v13, Lads_mobile_sdk/bf1;->c:Z

    iput v5, v13, Lads_mobile_sdk/bf1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_8d

    goto :goto_ae

    :cond_8d
    move/from16 v16, v3

    move-object v3, v0

    move/from16 v0, v16

    .line 43241
    :goto_92
    :try_start_92
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v3, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iput v4, v13, Lads_mobile_sdk/bf1;->f:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1fd

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_10e

    if-ne v4, v2, :cond_af

    :goto_ae
    return-object v2

    :cond_af
    move-object v2, v1

    .line 43243
    :goto_b0
    :try_start_b0
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 43244
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_3a

    .line 43898
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 43899
    :cond_bc
    :try_start_bc
    iget-boolean v1, v3, Lads_mobile_sdk/if1;->z:Z

    if-nez v1, :cond_c5

    if-eqz v0, :cond_c5

    .line 43900
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    :cond_c5
    if-eqz v0, :cond_ec

    .line 43904
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_3a

    const-string v1, "storedInspectorSettings"

    if-nez v0, :cond_d1

    :try_start_cd
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    .line 43905
    :cond_d1
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->B()Z

    move-result v0

    if-nez v0, :cond_ec

    .line 43906
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_df

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    .line 43907
    :cond_df
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v1, "getGesture(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    goto :goto_108

    .line 43908
    :cond_ec
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    if-nez v0, :cond_108

    .line 43909
    iget-object v0, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    invoke-virtual {v0}, Lads_mobile_sdk/ed3;->a()V

    .line 43910
    iget-object v0, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Lads_mobile_sdk/ix0;->a()V

    .line 43911
    :cond_108
    :goto_108
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10a
    .catchall {:try_start_cd .. :try_end_10a} :catchall_3a

    .line 44552
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_10e
    move-exception v0

    move-object v2, v1

    .line 44553
    :goto_110
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 44554
    :cond_114
    :goto_114
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic b(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4235
    instance-of v2, v1, Lads_mobile_sdk/ef1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ef1;

    iget v3, v2, Lads_mobile_sdk/ef1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ef1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/ef1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ef1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/ef1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 4478
    iget v3, v13, Lads_mobile_sdk/ef1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_51

    if-eq v3, v5, :cond_42

    if-ne v3, v4, :cond_3a

    iget-object v0, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_34
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_83

    :catchall_38
    move-exception v0

    goto :goto_89

    .line 4479
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iget-object v5, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v11, v3

    move-object v3, v5

    goto :goto_69

    :cond_51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 5133
    iput-object v0, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iput-object v1, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/ef1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_67

    goto :goto_81

    :cond_67
    move-object v11, v3

    move-object v3, v0

    .line 5134
    :goto_69
    :try_start_69
    iput-object v1, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iput-object v15, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/ef1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x17f

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7f
    .catchall {:try_start_69 .. :try_end_7f} :catchall_8b

    if-ne v0, v2, :cond_82

    :goto_81
    return-object v2

    :cond_82
    move-object v2, v1

    .line 5135
    :goto_83
    :try_start_83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_38

    .line 5791
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_89
    move-object v1, v2

    goto :goto_8c

    :catchall_8b
    move-exception v0

    .line 5792
    :goto_8c
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/je1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/je1;

    iget v1, v0, Lads_mobile_sdk/je1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/je1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/je1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/je1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/je1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 162
    iget v2, v0, Lads_mobile_sdk/je1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/je1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/je1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 810
    iput-object p0, v0, Lads_mobile_sdk/je1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/je1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/je1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 811
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p0, :cond_57

    const-string p0, "storedInspectorSettings"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_55

    move-object p0, v4

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_5b

    .line 1463
    :cond_57
    :goto_57
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 1464
    :goto_5b
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1465
    instance-of v2, v1, Lads_mobile_sdk/df1;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/df1;

    iget v3, v2, Lads_mobile_sdk/df1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/df1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/df1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/df1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v13, Lads_mobile_sdk/df1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1778
    iget v3, v13, Lads_mobile_sdk/df1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v15, "storedInspectorSettings"

    const/4 v6, 0x0

    if-eqz v3, :cond_55

    if-eq v3, v5, :cond_49

    if-ne v3, v4, :cond_41

    iget-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iget-object v2, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    :try_start_37
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d

    move-object v1, v6

    goto/16 :goto_c0

    :catchall_3d
    move-exception v0

    :goto_3e
    move-object v1, v6

    goto/16 :goto_127

    .line 1779
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iget-object v3, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    move-object v3, v5

    goto :goto_7b

    :cond_55
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1780
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-nez v1, :cond_63

    .line 1781
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1784
    :cond_63
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 2396
    iput-object v0, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v3, p1

    iput-boolean v3, v13, Lads_mobile_sdk/df1;->c:Z

    iput v5, v13, Lads_mobile_sdk/df1;->f:I

    invoke-interface {v1, v6, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_76

    goto :goto_bd

    :cond_76
    move/from16 v17, v3

    move-object v3, v0

    move/from16 v0, v17

    .line 2397
    :goto_7b
    :try_start_7b
    iget-object v5, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_122

    if-nez v5, :cond_87

    :try_start_7f
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_84

    move-object v5, v6

    goto :goto_87

    :catchall_84
    move-exception v0

    move-object v2, v1

    goto :goto_3e

    .line 2398
    :cond_87
    :goto_87
    :try_start_87
    invoke-virtual {v5}, Lads_mobile_sdk/og1;->B()Z

    move-result v5
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_122

    if-ne v5, v0, :cond_93

    .line 2399
    :try_start_8d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_84

    .line 3013
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 3014
    :cond_93
    :try_start_93
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v3, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iput v4, v13, Lads_mobile_sdk/df1;->f:I
    :try_end_9f
    .catchall {:try_start_93 .. :try_end_9f} :catchall_122

    move-object v4, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const/16 v14, 0x1fe

    move-object/from16 p0, v1

    move-object/from16 v1, v16

    :try_start_b7
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_11e

    if-ne v4, v2, :cond_be

    :goto_bd
    return-object v2

    :cond_be
    move-object/from16 v2, p0

    .line 3016
    :goto_c0
    :try_start_c0
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 3017
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_cc

    .line 3625
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_cc
    move-exception v0

    goto :goto_127

    .line 3626
    :cond_ce
    :try_start_ce
    iget-boolean v4, v3, Lads_mobile_sdk/if1;->z:Z

    if-nez v4, :cond_d7

    if-eqz v0, :cond_d7

    .line 3627
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    :cond_d7
    if-eqz v0, :cond_fc

    .line 3631
    iget-object v6, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v6, :cond_e1

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    .line 3632
    :cond_e1
    invoke-virtual {v6}, Lads_mobile_sdk/og1;->A()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 3633
    iget-object v6, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v6, :cond_ef

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    .line 3634
    :cond_ef
    invoke-virtual {v6}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v4, "getGesture(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    goto :goto_118

    .line 3635
    :cond_fc
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    if-nez v0, :cond_118

    .line 3636
    iget-object v0, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    invoke-virtual {v0}, Lads_mobile_sdk/ed3;->a()V

    .line 3637
    iget-object v0, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Lads_mobile_sdk/ix0;->a()V

    .line 3638
    :cond_118
    :goto_118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11a
    .catchall {:try_start_ce .. :try_end_11a} :catchall_cc

    .line 4233
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_11e
    move-exception v0

    :goto_11f
    move-object/from16 v2, p0

    goto :goto_127

    :catchall_122
    move-exception v0

    move-object/from16 p0, v1

    move-object v1, v6

    goto :goto_11f

    .line 4234
    :goto_127
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic c(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ke1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ke1;

    iget v1, v0, Lads_mobile_sdk/ke1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ke1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ke1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ke1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ke1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 517
    iget v2, v0, Lads_mobile_sdk/ke1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/ke1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ke1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 1425
    iput-object p0, v0, Lads_mobile_sdk/ke1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/ke1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ke1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1426
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->k()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_56

    .line 2337
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_56
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ne1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ne1;

    iget v1, v0, Lads_mobile_sdk/ne1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ne1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ne1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ne1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ne1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 579
    iget v2, v0, Lads_mobile_sdk/ne1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_73

    :catchall_31
    move-exception p1

    goto :goto_79

    .line 580
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_59

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 1436
    iput-object p0, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ne1;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    goto :goto_6f

    .line 1437
    :cond_59
    :goto_59
    :try_start_59
    iget-object p0, p0, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/eg1;

    if-eqz p0, :cond_72

    iput-object p1, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ne1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/eg1;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_70

    if-ne p0, v1, :cond_72

    :goto_6f
    return-object v1

    :catchall_70
    move-exception p0

    goto :goto_7c

    :cond_72
    move-object p0, p1

    .line 1438
    :goto_73
    :try_start_73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_31

    .line 2296
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_79
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 2297
    :goto_7c
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/xe1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/xe1;

    iget v1, v0, Lads_mobile_sdk/xe1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xe1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xe1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/xe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/xe1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lads_mobile_sdk/xe1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lads_mobile_sdk/xe1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iput-object p0, v0, Lads_mobile_sdk/xe1;->a:Lads_mobile_sdk/if1;

    iput v3, v0, Lads_mobile_sdk/xe1;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_41

    return-object v1

    .line 153
    :cond_41
    :goto_41
    iget-object v0, p0, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/ye1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/ye1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    move-object p0, v1

    .line 154
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 155
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 414
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/me1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/me1;

    iget v1, v0, Lads_mobile_sdk/me1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/me1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/me1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/me1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/me1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, v0, Lads_mobile_sdk/me1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4d

    if-eq v2, v5, :cond_47

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object v1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_99

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object v2, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    move-object v2, v4

    goto :goto_73

    :cond_47
    iget-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_4d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    iput-object p0, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput v5, v0, Lads_mobile_sdk/me1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    goto :goto_96

    :cond_5b
    move-object v2, p0

    .line 169
    :goto_5c
    iget-object p1, v2, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result p1

    if-eqz p1, :cond_b3

    iget-object p1, v2, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 821
    iput-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/me1;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_73

    goto :goto_96

    .line 822
    :cond_73
    :goto_73
    :try_start_73
    iget-boolean v4, v2, Lads_mobile_sdk/if1;->z:Z

    if-nez v4, :cond_82

    invoke-virtual {v2}, Lads_mobile_sdk/if1;->k()Z

    move-result v4
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_80

    if-eqz v4, :cond_7e

    goto :goto_82

    :cond_7e
    const/4 v5, 0x0

    goto :goto_82

    :catchall_80
    move-exception v0

    goto :goto_af

    .line 1478
    :cond_82
    :goto_82
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v5, :cond_88

    goto :goto_b3

    .line 1479
    :cond_88
    iget-object p1, v2, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 2134
    iput-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/me1;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_97

    :goto_96
    return-object v1

    :cond_97
    move-object v1, p1

    move-object v0, v2

    .line 2135
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->l()Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 2136
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->i()V

    goto :goto_a5

    :catchall_a3
    move-exception p1

    goto :goto_ab

    .line 2138
    :cond_a5
    :goto_a5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a3

    .line 2793
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 2794
    :goto_ab
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 2795
    :goto_af
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 2796
    :cond_b3
    :goto_b3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 46105
    instance-of v0, p2, Lads_mobile_sdk/ff1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ff1;

    iget v1, v0, Lads_mobile_sdk/ff1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ff1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ff1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ff1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ff1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46589
    iget v2, v0, Lads_mobile_sdk/ff1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget p1, v0, Lads_mobile_sdk/ff1;->c:I

    iget-object v1, v0, Lads_mobile_sdk/ff1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ff1;->a:Lads_mobile_sdk/if1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 47363
    iput-object p0, v0, Lads_mobile_sdk/ff1;->a:Lads_mobile_sdk/if1;

    iput-object p2, v0, Lads_mobile_sdk/ff1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput p1, v0, Lads_mobile_sdk/ff1;->c:I

    iput v3, v0, Lads_mobile_sdk/ff1;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p2

    .line 47364
    :goto_4e
    :try_start_4e
    iget-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    int-to-long p1, p1

    add-long/2addr v5, p1

    iget-object v2, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47365
    const-string v7, "gads:inspector:max_ad_response_logs_bytes"

    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v8, 0x1400000

    .line 47366
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {v2, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-ltz v2, :cond_80

    const/4 p1, 0x0

    .line 47367
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_7a
    .catchall {:try_start_4e .. :try_end_7a} :catchall_7e

    .line 48144
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_7e
    move-exception p1

    goto :goto_8d

    .line 48145
    :cond_80
    :try_start_80
    iget-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    add-long/2addr v5, p1

    iput-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    .line 48146
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_7e

    .line 48921
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_8d
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/oh2;)Ljava/lang/Object;
    .registers 2

    .line 12670
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p10

    .line 50986
    instance-of v1, v0, Lads_mobile_sdk/hf1;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/hf1;

    iget v2, v1, Lads_mobile_sdk/hf1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/hf1;->d:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/hf1;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/hf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lads_mobile_sdk/hf1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51365
    iget v3, v1, Lads_mobile_sdk/hf1;->d:I

    const/4 v4, 0x1

    if-eqz v3, :cond_36

    if-ne v3, v4, :cond_2e

    iget-object p1, v1, Lads_mobile_sdk/hf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14d

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51377
    iget-object v0, p0, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 51933
    invoke-static {}, Lads_mobile_sdk/og1;->F()Lads_mobile_sdk/ng1;

    move-result-object v3

    const-string v5, "newBuilder(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51934
    const-string v5, "builder"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "storedInspectorSettings"

    const/4 v6, 0x0

    if-eqz p1, :cond_53

    .line 51935
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5f

    :cond_53
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_5b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_5b
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->B()Z

    move-result p1

    .line 51936
    :goto_5f
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->c(Z)V

    if-eqz p2, :cond_69

    .line 51937
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_75

    :cond_69
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_71

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_71
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->A()Z

    move-result p1

    .line 51938
    :goto_75
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->b(Z)V

    if-nez p3, :cond_8b

    .line 51939
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_82

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_82
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object p3

    const-string p1, "getGesture(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51940
    :cond_8b
    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52019
    invoke-virtual {v3, p3}, Lads_mobile_sdk/ng1;->a(Lads_mobile_sdk/vd1;)V

    if-eqz p5, :cond_9a

    .line 52020
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_a6

    :cond_9a
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_a2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_a2
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->D()J

    move-result-wide p2

    .line 52021
    :goto_a6
    invoke-virtual {v3, p2, p3}, Lads_mobile_sdk/ng1;->a(J)V

    if-nez p4, :cond_bc

    .line 52022
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_b3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_b3
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->C()Ljava/lang/String;

    move-result-object p4

    const-string p2, "getNetworkExtras(...)"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52023
    :cond_bc
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52126
    invoke-virtual {v3, p4}, Lads_mobile_sdk/ng1;->c(Ljava/lang/String;)V

    if-nez p6, :cond_d6

    .line 52127
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_cc

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_cc
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDeviceIdForDebugging(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d7

    :cond_d6
    move-object p2, p6

    .line 52128
    :goto_d7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52265
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->b(Ljava/lang/String;)V

    if-nez p7, :cond_f1

    .line 52266
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_e7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_e7
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->v()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDebugAdUnitId(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f2

    :cond_f1
    move-object p2, p7

    .line 52267
    :goto_f2
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52421
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->a(Ljava/lang/String;)V

    if-nez p8, :cond_10c

    .line 52422
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_102

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_102
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->E()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getUiStorage(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10d

    :cond_10c
    move-object p2, p8

    .line 52423
    :goto_10d
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52594
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->d(Ljava/lang/String;)V

    if-eqz p9, :cond_11a

    .line 52595
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_126

    :cond_11a
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_122

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_122
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->z()Z

    move-result p1

    .line 52596
    :goto_126
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->a(Z)V

    .line 52597
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/og1;

    .line 52598
    iput-object p0, v1, Lads_mobile_sdk/hf1;->a:Lads_mobile_sdk/if1;

    iput v4, v1, Lads_mobile_sdk/hf1;->d:I

    .line 52599
    iget-object p2, v0, Lads_mobile_sdk/qg1;->a:Lads_mobile_sdk/ks1;

    .line 52600
    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance p3, Lads_mobile_sdk/pg1;

    invoke-direct {p3, p1, v6}, Lads_mobile_sdk/pg1;-><init>(Lads_mobile_sdk/og1;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p2, p3, v1}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_14c

    return-object v2

    :cond_14c
    move-object p1, p0

    .line 52601
    :goto_14d
    check-cast v0, Lads_mobile_sdk/og1;

    .line 52612
    iput-object v0, p1, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    .line 52629
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/be1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/be1;

    iget v1, v0, Lads_mobile_sdk/be1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/be1;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/be1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/be1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/be1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 471
    iget v2, v0, Lads_mobile_sdk/be1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p1, v0, Lads_mobile_sdk/be1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/be1;->c:Lads_mobile_sdk/md1;

    iget-object v1, v0, Lads_mobile_sdk/be1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/be1;->a:Lads_mobile_sdk/if1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_53

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    iget-object p3, p0, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 1248
    iput-object p0, v0, Lads_mobile_sdk/be1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/be1;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/be1;->c:Lads_mobile_sdk/md1;

    iput-object p3, v0, Lads_mobile_sdk/be1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/be1;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    :cond_52
    move-object v0, p0

    .line 1249
    :goto_53
    :try_start_53
    iget-object v1, v0, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1250
    const-string v3, "gads:inspector:max_ad_life_cycles"

    const-string v5, "key"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x3e8

    .line 1251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v3, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_86

    .line 1252
    const-string p1, "Maximum number of stored ad requests reached. Dropping the current request."

    .line 1253
    invoke-static {p1, v4}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1254
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_80
    .catchall {:try_start_53 .. :try_end_80} :catchall_84

    .line 2031
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_84
    move-exception p1

    goto :goto_aa

    .line 2032
    :cond_86
    :try_start_86
    iget-object v1, v0, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_9a

    .line 2033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :cond_9a
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    iget-object p1, v0, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    .line 2036
    iget-object v0, p2, Lads_mobile_sdk/md1;->d:Ljava/lang/String;

    .line 2037
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_86 .. :try_end_a6} :catchall_84

    .line 2808
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 2809
    :goto_aa
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/vd1;)V
    .registers 3

    .line 49454
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    return-void

    .line 49456
    :cond_b
    iget-object p1, p0, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ix0;

    invoke-virtual {p1}, Lads_mobile_sdk/ix0;->b()V

    return-void

    .line 49457
    :cond_17
    iget-object p1, p0, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ed3;

    invoke-virtual {p1}, Lads_mobile_sdk/ed3;->b()V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 11

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    const-string v1, "{}"

    if-nez v0, :cond_9

    return-object v1

    .line 7
    :cond_9
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const-string v2, "storedInspectorSettings"

    const/4 v3, 0x0

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->D()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4a

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_26

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_26
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->D()J

    move-result-wide v4

    iget-object v0, p0, Lads_mobile_sdk/if1;->j:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0x3e8

    int-to-long v8, v0

    .line 10
    div-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_4a

    .line 12
    iget-object v4, p0, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/fe1;

    invoke-direct {v7, p0, v3}, Lads_mobile_sdk/fe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v1

    .line 23
    :cond_4a
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_52

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_53

    :cond_52
    move-object v3, v0

    :goto_53
    invoke-virtual {v3}, Lads_mobile_sdk/og1;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNetworkExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .registers 4

    .line 205
    iget-boolean v0, p0, Lads_mobile_sdk/if1;->z:Z

    if-nez v0, :cond_52

    .line 206
    iget-object v0, p0, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    .line 207
    iput-object p0, v0, Lads_mobile_sdk/ed3;->i:Lads_mobile_sdk/cd3;

    .line 208
    iget-object v0, p0, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    const-string v1, "listener"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p0, v0, Lads_mobile_sdk/ix0;->m:Lads_mobile_sdk/gx0;

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lads_mobile_sdk/if1;->z:Z

    .line 263
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    const-string v0, "storedInspectorSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2e
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v2, "getGesture(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    .line 264
    iget-object v0, p0, Lads_mobile_sdk/if1;->m:Lads_mobile_sdk/ek;

    invoke-virtual {v0}, Lads_mobile_sdk/ek;->a()Lads_mobile_sdk/v01;

    move-result-object v0

    .line 265
    instance-of v2, v0, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_4c

    check-cast v0, Lads_mobile_sdk/q01;

    .line 266
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 267
    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 268
    :cond_4c
    const-string v0, "Ad inspector enabled. Ad inspector can increase memory usage on test devices."

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    :cond_52
    return-void
.end method

.method public final k()Z
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "key"

    const-string v2, "gads:inspector:disable_ad_inspector_from_manifest_enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_50

    .line 21
    :cond_1f
    iget-object v0, p0, Lads_mobile_sdk/if1;->M:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_50

    .line 26
    :cond_28
    :try_start_28
    iget-object v0, p0, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 27
    iget-object v2, p0, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_49

    .line 29
    const-string v2, "com.google.android.libraries.ads.mobile.sdk.flag.DISABLE_AD_INSPECTOR"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    :cond_49
    move v0, v1

    .line 33
    :goto_4a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lads_mobile_sdk/if1;->M:Ljava/lang/Boolean;

    .line 34
    :goto_50
    iget-object v2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v3, 0x0

    if-nez v2, :cond_5b

    const-string v2, "storedInspectorSettings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_5b
    invoke-virtual {v2}, Lads_mobile_sdk/og1;->z()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v0, :cond_66

    if-nez v2, :cond_66

    move v5, v4

    goto :goto_67

    :cond_66
    move v5, v1

    :goto_67
    if-eqz v0, :cond_200

    if-eqz v2, :cond_136

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/if1;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 40
    iget-object v0, p0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->B:Lads_mobile_sdk/s11;

    .line 808
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 809
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 810
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 811
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 812
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 813
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 814
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 815
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 816
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_e7

    .line 817
    invoke-static {v0, v2, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 818
    :try_start_a0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_a7

    .line 1595
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_200

    :catchall_a7
    move-exception v1

    .line 1603
    :try_start_a8
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1607
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_e0

    .line 1609
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_bd

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_bd

    .line 1615
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_bd

    :catchall_bb
    move-exception v1

    goto :goto_e1

    .line 1621
    :cond_bd
    :goto_bd
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d8

    .line 1622
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d0

    .line 1623
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_ca

    throw v1

    .line 1624
    :cond_ca
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1625
    :cond_d0
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1626
    :cond_d8
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1627
    :cond_e0
    throw v1
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_bb

    .line 1628
    :goto_e1
    :try_start_e1
    throw v1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 1662
    :cond_e7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1663
    :try_start_ef
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_f6

    .line 2477
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_200

    :catchall_f6
    move-exception v1

    .line 2485
    :try_start_f7
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2489
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_12f

    .line 2491
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10c

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10c

    .line 2497
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_10c

    :catchall_10a
    move-exception v1

    goto :goto_130

    .line 2503
    :cond_10c
    :goto_10c
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_127

    .line 2504
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11f

    .line 2505
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_119

    throw v1

    .line 2506
    :cond_119
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2507
    :cond_11f
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2508
    :cond_127
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2509
    :cond_12f
    throw v1
    :try_end_130
    .catchall {:try_start_f7 .. :try_end_130} :catchall_10a

    .line 2510
    :goto_130
    :try_start_130
    throw v1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_131

    :catchall_131
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 2511
    :cond_136
    iget-object v0, p0, Lads_mobile_sdk/if1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 2512
    iget-object v0, p0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->A:Lads_mobile_sdk/s11;

    .line 3354
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 3355
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 3356
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 3357
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3358
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 3359
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 3360
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3361
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 3362
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_1b2

    .line 3363
    invoke-static {v0, v2, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 3364
    :try_start_16b
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16d
    .catchall {:try_start_16b .. :try_end_16d} :catchall_172

    .line 4215
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_200

    :catchall_172
    move-exception v1

    .line 4223
    :try_start_173
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4227
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1ab

    .line 4229
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_188

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_188

    .line 4235
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_188

    :catchall_186
    move-exception v1

    goto :goto_1ac

    .line 4241
    :cond_188
    :goto_188
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1a3

    .line 4242
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19b

    .line 4243
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_195

    throw v1

    .line 4244
    :cond_195
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4245
    :cond_19b
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 4246
    :cond_1a3
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 4247
    :cond_1ab
    throw v1
    :try_end_1ac
    .catchall {:try_start_173 .. :try_end_1ac} :catchall_186

    .line 4248
    :goto_1ac
    :try_start_1ac
    throw v1
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ad

    :catchall_1ad
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 4282
    :cond_1b2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 4283
    :try_start_1ba
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1bc
    .catchall {:try_start_1ba .. :try_end_1bc} :catchall_1c0

    .line 5171
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_200

    :catchall_1c0
    move-exception v1

    .line 5179
    :try_start_1c1
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5183
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1f9

    .line 5185
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1d6

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1d6

    .line 5191
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1d6

    :catchall_1d4
    move-exception v1

    goto :goto_1fa

    .line 5197
    :cond_1d6
    :goto_1d6
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1f1

    .line 5198
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1e9

    .line 5199
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1e3

    throw v1

    .line 5200
    :cond_1e3
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5201
    :cond_1e9
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5202
    :cond_1f1
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5203
    :cond_1f9
    throw v1
    :try_end_1fa
    .catchall {:try_start_1c1 .. :try_end_1fa} :catchall_1d4

    .line 5204
    :goto_1fa
    :try_start_1fa
    throw v1
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1fb

    :catchall_1fb
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_200
    :goto_200
    if-eqz v5, :cond_210

    .line 5205
    iget-object v0, p0, Lads_mobile_sdk/if1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 5206
    const-string v0, "Ad inspector is disabled in the AndroidManifest.xml."

    const/4 v1, 0x6

    invoke-static {v0, v3, v3, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    :cond_210
    return v5
.end method

.method public final l()Z
    .registers 6

    .line 523
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 527
    :cond_8
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v2, 0x0

    const-string v3, "storedInspectorSettings"

    if-nez v0, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->B()Z

    move-result v0

    if-nez v0, :cond_46

    .line 528
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_21

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v2, v0

    :goto_22
    invoke-virtual {v2}, Lads_mobile_sdk/og1;->A()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    const-string v2, "key"

    const-string v3, "gads:inspector:linked_device_enable_inspector"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_46

    :cond_45
    return v1

    :cond_46
    :goto_46
    const/4 v0, 0x1

    return v0
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->e(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ge1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ge1;

    iget v1, v0, Lads_mobile_sdk/ge1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ge1;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ge1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ge1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ge1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 571
    iget v2, v0, Lads_mobile_sdk/ge1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    iput v3, v0, Lads_mobile_sdk/ge1;->c:I

    invoke-virtual {p0}, Lads_mobile_sdk/if1;->g()Ljava/lang/String;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    .line 573
    :cond_3d
    :goto_3d
    check-cast p1, Ljava/lang/String;

    .line 575
    const-string v0, "{}"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p1, ""

    :cond_49
    return-object p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/he1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/he1;

    iget v1, v0, Lads_mobile_sdk/he1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/he1;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/he1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/he1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/he1;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 216
    iget v2, v0, Lads_mobile_sdk/he1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6e

    if-eq v2, v6, :cond_62

    if-eq v2, v5, :cond_51

    if-ne v2, v4, :cond_49

    iget-boolean v1, v0, Lads_mobile_sdk/he1;->e:Z

    iget-boolean v2, v0, Lads_mobile_sdk/he1;->d:Z

    iget v4, v0, Lads_mobile_sdk/he1;->c:I

    iget-object v5, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    :try_start_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    move v10, v1

    move v11, v2

    move-object v9, v5

    :goto_42
    move-object v1, v8

    goto/16 :goto_d3

    :catchall_45
    move-exception v0

    move-object p1, v0

    goto/16 :goto_ec

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_51
    iget-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_59
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5e

    :goto_5c
    move-object v8, v2

    goto :goto_91

    :catchall_5e
    move-exception v0

    move-object p1, v0

    goto/16 :goto_eb

    .line 218
    :cond_62
    iget-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_82

    :cond_6e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 856
    iput-object p0, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v6, v0, Lads_mobile_sdk/he1;->h:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_80

    goto :goto_cb

    :cond_80
    move-object v8, p0

    move-object v2, p1

    .line 857
    :goto_82
    :try_start_82
    iput-object v8, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/he1;->h:I

    invoke-virtual {v8, v0}, Lads_mobile_sdk/if1;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_5e

    if-ne p1, v1, :cond_8f

    goto :goto_cb

    :cond_8f
    move-object v5, v8

    goto :goto_5c

    .line 858
    :goto_91
    :try_start_91
    check-cast p1, Ljava/lang/String;

    .line 861
    iget-object v2, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_9e

    const-string v9, "storedInspectorSettings"

    if-nez v2, :cond_a2

    :try_start_99
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v7

    goto :goto_a2

    :catchall_9e
    move-exception v0

    move-object p1, v0

    move-object v2, v8

    goto :goto_eb

    .line 862
    :cond_a2
    :goto_a2
    invoke-virtual {v2}, Lads_mobile_sdk/og1;->B()Z

    move-result v2

    .line 863
    iget-object v10, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v10, :cond_ae

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    .line 864
    :cond_ae
    invoke-virtual {v10}, Lads_mobile_sdk/og1;->A()Z

    move-result v9

    .line 865
    iget-object v10, v5, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    invoke-virtual {v10}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v6

    .line 866
    iput-object v8, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v10, v0, Lads_mobile_sdk/he1;->c:I

    iput-boolean v9, v0, Lads_mobile_sdk/he1;->d:Z

    iput-boolean v2, v0, Lads_mobile_sdk/he1;->e:Z

    iput v4, v0, Lads_mobile_sdk/he1;->h:I

    invoke-virtual {v5, v3, v0}, Lads_mobile_sdk/if1;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c9
    .catchall {:try_start_99 .. :try_end_c9} :catchall_9e

    if-ne v0, v1, :cond_cc

    :goto_cb
    return-object v1

    :cond_cc
    move v11, v9

    move v4, v10

    move-object v9, p1

    move-object p1, v0

    move v10, v2

    goto/16 :goto_42

    .line 867
    :goto_d3
    :try_start_d3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 868
    new-instance v8, Lads_mobile_sdk/vg1;

    if-eqz v4, :cond_df

    move v12, v6

    goto :goto_e0

    :cond_df
    move v12, v3

    :goto_e0
    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/vg1;-><init>(Ljava/lang/String;ZZZZ)V
    :try_end_e3
    .catchall {:try_start_d3 .. :try_end_e3} :catchall_e7

    .line 1509
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v8

    :catchall_e7
    move-exception v0

    move-object p1, v0

    move-object v8, v1

    goto :goto_ec

    :goto_eb
    move-object v8, v2

    .line 1510
    :goto_ec
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ie1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ie1;

    iget v3, v2, Lads_mobile_sdk/ie1;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ie1;->q:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ie1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ie1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/ie1;->o:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 583
    iget v4, v2, Lads_mobile_sdk/ie1;->q:I

    const-string v5, "fromJson(...)"

    const-string v6, "{}"

    const-string v7, "storedInspectorSettings"

    const-string v8, "t"

    const-class v9, Lcom/google/gson/JsonObject;

    packed-switch v4, :pswitch_data_590

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39
    iget-boolean v3, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v11, v2, Lads_mobile_sdk/ie1;->l:Lcom/google/gson/Gson;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->k:Lcom/google/gson/JsonObject;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->j:Ljava/lang/String;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonArray;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v15, Lcom/google/gson/JsonObject;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v0, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/gson/JsonObject;

    iget-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/google/gson/JsonObject;

    move/from16 v21, v3

    iget-object v3, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v2, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_6f
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_92
    .catchall {:try_start_6f .. :try_end_72} :catchall_8c

    move-object v1, v15

    move-object/from16 v0, v16

    move-object v15, v3

    move-object/from16 v16, v6

    move-object/from16 v6, v19

    move/from16 v3, v21

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v9

    goto/16 :goto_433

    :catchall_8c
    move-exception v0

    move-object/from16 v1, v18

    :goto_8f
    const/4 v11, 0x0

    goto/16 :goto_587

    :catch_92
    move-exception v0

    move-object v11, v5

    move-object/from16 v16, v6

    move-object v1, v15

    move-object/from16 v5, v17

    move-object v15, v3

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move/from16 v3, v21

    move-object/from16 v18, v8

    goto/16 :goto_47f

    :pswitch_a4
    move-object/from16 v16, v0

    .line 584
    iget-boolean v0, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v10, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonObject;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v18, v14

    check-cast v18, Lkotlinx/coroutines/sync/Mutex;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v15, Lcom/google/gson/JsonObject;

    move/from16 v17, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    move-object/from16 v19, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_d0
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_8c

    move-object v1, v2

    move-object v2, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v6

    move v6, v4

    move-object v4, v1

    move-object v1, v14

    move-object v14, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v1

    move/from16 v1, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object v8, v15

    move-object/from16 v15, v19

    :goto_eb
    move-object/from16 v19, v5

    goto/16 :goto_3ea

    :pswitch_ef
    move-object/from16 v16, v0

    .line 585
    iget-boolean v0, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v10, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonObject;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v18, v13

    check-cast v18, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    move/from16 v17, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_115
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_8c

    move-object/from16 v1, v16

    move-object/from16 v16, v6

    move v6, v4

    move-object v4, v2

    move/from16 v2, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    goto/16 :goto_3b5

    :pswitch_126
    move-object/from16 v16, v0

    .line 586
    iget-object v0, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/gson/JsonObject;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonObject;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v4

    move-object/from16 v16, v6

    move-object v14, v10

    move-object v15, v11

    move-object v6, v0

    move-object v0, v12

    goto/16 :goto_35b

    :pswitch_144
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonArray;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, v16

    move-object/from16 v16, v6

    move-object v6, v14

    move-object v14, v13

    move-object v13, v12

    goto/16 :goto_2ed

    :pswitch_16e
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    move-object/from16 v17, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v6

    goto/16 :goto_29f

    :pswitch_19d
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    const/4 v11, 0x0

    goto/16 :goto_221

    :pswitch_1b0
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    move-object/from16 v0, v16

    goto :goto_1d3

    :pswitch_1bb
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 587
    iget-object v0, v1, Lads_mobile_sdk/if1;->u:Lads_mobile_sdk/g30;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    const/4 v4, 0x1

    iput v4, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    invoke-static {v0, v2}, Lads_mobile_sdk/g30;->d(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1d2

    goto/16 :goto_429

    :cond_1d2
    move-object v10, v1

    .line 589
    :goto_1d3
    check-cast v0, Landroid/os/Bundle;

    .line 592
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_1d7
    iget-object v4, v10, Lads_mobile_sdk/if1;->h:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1e3} :catch_1e4

    goto :goto_200

    :catch_1e4
    move-exception v0

    .line 593
    invoke-static {v0, v8, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 594
    iget-object v4, v4, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 595
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1f9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    :cond_1f9
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_200
    if-nez v0, :cond_207

    .line 596
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_207
    move-object v4, v0

    .line 598
    iget-object v0, v10, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 1461
    iput-object v10, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v2, Lads_mobile_sdk/ie1;->q:I

    const/4 v11, 0x0

    invoke-interface {v0, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_21c

    goto/16 :goto_429

    :cond_21c
    move-object/from16 v38, v4

    move-object v4, v0

    move-object/from16 v0, v38

    .line 1462
    :goto_221
    :try_start_221
    iget-object v12, v10, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12
    :try_end_227
    .catchall {:try_start_221 .. :try_end_227} :catchall_58b

    .line 2329
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2330
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2331
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_302

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2332
    new-instance v14, Lcom/google/gson/JsonArray;

    invoke-direct {v14}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2333
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3198
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3199
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v38, v15

    move-object v15, v0

    move-object v0, v10

    move-object/from16 v10, v38

    move-object/from16 v38, v14

    move-object v14, v4

    move-object v4, v12

    move-object v12, v13

    move-object v13, v11

    move-object/from16 v11, v38

    :goto_271
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v6

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/md1;

    .line 3200
    iput-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v6, v2}, Lads_mobile_sdk/md1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_29f

    goto/16 :goto_429

    .line 3201
    :cond_29f
    :goto_29f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 4067
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2aa
    move-object/from16 v1, p0

    move-object/from16 v6, v16

    move-object/from16 v0, v17

    goto :goto_271

    :cond_2b1
    move-object/from16 v17, v0

    move-object/from16 v16, v6

    .line 4068
    check-cast v10, Ljava/util/List;

    .line 4069
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v0

    move-object v0, v11

    move-object v11, v12

    move-object/from16 v10, v17

    :goto_2c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/md1;

    .line 4070
    iput-object v10, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/md1;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2ea

    goto/16 :goto_429

    :cond_2ea
    move-object v6, v15

    move-object v15, v10

    move-object v10, v0

    .line 4071
    :goto_2ed
    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move-object v0, v10

    move-object v10, v15

    move-object v15, v6

    goto :goto_2c0

    .line 4073
    :cond_2f6
    invoke-virtual {v14, v11, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object/from16 v1, p0

    move-object v11, v13

    move-object v4, v14

    move-object v0, v15

    move-object/from16 v6, v16

    goto/16 :goto_23a

    :cond_302
    move-object/from16 v16, v6

    .line 4075
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4078
    iget-object v6, v10, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v6}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4079
    const-string v11, "tfcd"

    invoke-virtual {v1, v11, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4085
    iget-object v6, v10, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v6}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4086
    const-string v11, "tfua"

    invoke-virtual {v1, v11, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4091
    iget-object v6, v10, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 4949
    iput-object v10, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    const/4 v12, 0x5

    iput v12, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-interface {v6, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_357

    goto/16 :goto_429

    :cond_357
    move-object v15, v0

    move-object v13, v1

    move-object v14, v4

    move-object v0, v10

    .line 4950
    :goto_35b
    :try_start_35b
    iget-object v10, v0, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 4951
    iget-object v11, v0, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    .line 4952
    iget-object v1, v0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v1, :cond_36c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_36c

    :catchall_368
    move-exception v0

    move-object v1, v6

    goto/16 :goto_8f

    .line 4953
    :cond_36c
    :goto_36c
    invoke-virtual {v1}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    .line 4954
    iget-object v1, v0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v1, :cond_37c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4955
    :cond_37c
    invoke-virtual {v1}, Lads_mobile_sdk/og1;->A()Z

    move-result v1

    .line 4956
    sget-object v4, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 4957
    invoke-static {}, Lads_mobile_sdk/jn0;->a()Z

    move-result v4

    move-object/from16 v17, v7

    .line 4958
    iget-object v7, v0, Lads_mobile_sdk/if1;->t:Lads_mobile_sdk/rd1;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v1, v2, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v18, v0

    const/4 v0, 0x6

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4959
    invoke-static {v7, v2}, Lads_mobile_sdk/rd1;->a(Lads_mobile_sdk/rd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3aa
    .catchall {:try_start_35b .. :try_end_3aa} :catchall_368

    if-ne v0, v3, :cond_3ae

    goto/16 :goto_429

    :cond_3ae
    move-object v7, v6

    move v6, v4

    move-object v4, v2

    move v2, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .line 4960
    :goto_3b5
    :try_start_3b5
    check-cast v1, Lcom/google/gson/JsonArray;

    .line 4992
    iput-object v0, v4, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v4, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v14, v4, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v13, v4, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v12, v4, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iput-boolean v6, v4, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v2, v4, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v18, v0

    const/4 v0, 0x7

    iput v0, v4, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual/range {v18 .. v18}, Lads_mobile_sdk/if1;->g()Ljava/lang/String;

    move-result-object v0

    if-ne v0, v3, :cond_3d9

    goto :goto_429

    :cond_3d9
    move-object/from16 v19, v14

    move-object v14, v1

    move v1, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v11

    move-object v11, v10

    move-object/from16 v10, v19

    goto/16 :goto_eb

    .line 4993
    :goto_3ea
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v20, v9

    .line 5026
    iget-object v9, v2, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 5028
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;
    :try_end_3f3
    .catchall {:try_start_3b5 .. :try_end_3f3} :catchall_46b

    .line 5029
    :try_start_3f3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v21, v3

    .line 5031
    iget-object v3, v2, Lads_mobile_sdk/if1;->n:Lads_mobile_sdk/pn;

    iput-object v2, v4, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v4, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v8, v4, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v13, v4, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v12, v4, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iput-object v5, v4, Lads_mobile_sdk/ie1;->j:Ljava/lang/String;

    iput-object v9, v4, Lads_mobile_sdk/ie1;->k:Lcom/google/gson/JsonObject;

    iput-object v0, v4, Lads_mobile_sdk/ie1;->l:Lcom/google/gson/Gson;

    iput-boolean v6, v4, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v1, v4, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v22, v0

    const/16 v0, 0x8

    iput v0, v4, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5032
    invoke-static {v3, v4}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_3f3 .. :try_end_425} :catch_492
    .catchall {:try_start_3f3 .. :try_end_425} :catchall_46b

    move-object/from16 v3, v21

    if-ne v0, v3, :cond_42a

    :goto_429
    return-object v3

    :cond_42a
    move v3, v1

    move v4, v6

    move-object v1, v11

    move-object v6, v13

    move-object/from16 v11, v22

    move-object v13, v5

    move-object v5, v12

    move-object v12, v9

    .line 5033
    :goto_433
    :try_start_433
    check-cast v0, Lads_mobile_sdk/jm;

    invoke-virtual {v0}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_43d
    .catch Ljava/lang/Exception; {:try_start_433 .. :try_end_43d} :catch_479
    .catchall {:try_start_433 .. :try_end_43d} :catchall_46b

    if-eqz v9, :cond_441

    move-object/from16 v0, v16

    :cond_441
    move-object/from16 v9, v20

    .line 5035
    :try_start_443
    invoke-virtual {v11, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_443 .. :try_end_447} :catch_475
    .catchall {:try_start_443 .. :try_end_447} :catchall_46b

    move-object/from16 v11, v19

    :try_start_449
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_44e
    .catch Ljava/lang/Exception; {:try_start_449 .. :try_end_44e} :catch_46f
    .catchall {:try_start_449 .. :try_end_44e} :catchall_46b

    move-object/from16 v19, v1

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v36, v6

    move-object v1, v7

    move-object v4, v9

    move-object v3, v11

    move-object/from16 v26, v12

    move-object/from16 v25, v13

    move-object/from16 v7, v18

    :goto_461
    move-object/from16 v31, v8

    move-object/from16 v20, v10

    move-object/from16 v24, v14

    move-object/from16 v29, v15

    goto/16 :goto_4d7

    :catchall_46b
    move-exception v0

    move-object v1, v7

    goto/16 :goto_8f

    :catch_46f
    move-exception v0

    :goto_470
    move-object/from16 v19, v6

    move-object/from16 v20, v8

    goto :goto_47f

    :catch_475
    move-exception v0

    move-object/from16 v11, v19

    goto :goto_470

    :catch_479
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v9, v20

    goto :goto_470

    :goto_47f
    move-object v6, v11

    move-object v11, v1

    move v1, v3

    move-object v3, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v6

    move v6, v4

    move-object v4, v9

    move-object v9, v12

    move-object/from16 v8, v20

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v19

    goto :goto_49d

    :catch_492
    move-exception v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v38

    .line 5036
    :goto_49d
    :try_start_49d
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v19, v1

    .line 5208
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 5209
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5210
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 5211
    iget-object v1, v1, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 5212
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4bd

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    :cond_4bd
    move-object/from16 v0, v20

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c5
    .catchall {:try_start_49d .. :try_end_4c5} :catchall_8c

    move-object/from16 v25, v5

    move/from16 v23, v6

    move-object/from16 v26, v9

    move-object/from16 v21, v12

    move-object/from16 v36, v13

    move-object/from16 v1, v18

    move/from16 v22, v19

    const/4 v0, 0x0

    move-object/from16 v19, v11

    goto :goto_461

    :goto_4d7
    if-nez v0, :cond_4de

    .line 5213
    :try_start_4d9
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_4de
    move-object/from16 v27, v0

    goto :goto_4e4

    :catchall_4e1
    move-exception v0

    goto/16 :goto_8f

    .line 5215
    :goto_4e4
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;
    :try_end_4e6
    .catchall {:try_start_4d9 .. :try_end_4e6} :catchall_4e1

    .line 5216
    :try_start_4e6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 5217
    iget-object v5, v2, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v5, :cond_4f6

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_4f6

    :catch_4f4
    move-exception v0

    goto :goto_50e

    .line 5218
    :cond_4f6
    :goto_4f6
    invoke-virtual {v5}, Lads_mobile_sdk/og1;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_503

    move-object/from16 v6, v16

    goto :goto_504

    :cond_503
    move-object v6, v5

    .line 5219
    :goto_504
    invoke-virtual {v0, v6, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_50d
    .catch Ljava/lang/Exception; {:try_start_4e6 .. :try_end_50d} :catch_4f4
    .catchall {:try_start_4e6 .. :try_end_50d} :catchall_4e1

    goto :goto_533

    .line 5220
    :goto_50e
    :try_start_50e
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5392
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 5393
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5394
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    .line 5395
    iget-object v3, v3, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 5396
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_52c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_52c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_533
    if-nez v0, :cond_53a

    .line 5397
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_53a
    move-object/from16 v28, v0

    .line 5399
    iget-object v0, v2, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v30

    .line 5401
    iget-object v0, v2, Lads_mobile_sdk/if1;->v:Lads_mobile_sdk/km;

    .line 5402
    iget v3, v0, Lads_mobile_sdk/km;->c:F

    .line 5403
    iget-boolean v0, v0, Lads_mobile_sdk/km;->d:Z

    .line 5404
    iget-object v4, v2, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v4}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 5406
    iget-object v4, v2, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v4}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v4

    .line 5407
    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v35

    .line 5409
    iget-object v2, v2, Lads_mobile_sdk/if1;->w:Lads_mobile_sdk/ja1;

    invoke-virtual {v2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v2

    if-eqz v2, :cond_576

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_573

    goto :goto_576

    :cond_573
    :goto_573
    move-object/from16 v37, v2

    goto :goto_579

    .line 5410
    :cond_576
    :goto_576
    const-string v2, ""

    goto :goto_573

    .line 5411
    :goto_579
    new-instance v18, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;

    move/from16 v33, v0

    move/from16 v32, v3

    invoke-direct/range {v18 .. v37}, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;-><init>(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/gson/JsonArray;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;FZLjava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;)V
    :try_end_582
    .catchall {:try_start_50e .. :try_end_582} :catchall_4e1

    const/4 v11, 0x0

    .line 6281
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v18

    .line 6282
    :goto_587
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_58b
    move-exception v0

    .line 6283
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_590
    .packed-switch 0x0
        :pswitch_1bb
        :pswitch_1b0
        :pswitch_19d
        :pswitch_16e
        :pswitch_144
        :pswitch_126
        :pswitch_ef
        :pswitch_a4
        :pswitch_39
    .end packed-switch
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/le1;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/le1;

    iget v3, v2, Lads_mobile_sdk/le1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/le1;->f:I

    :goto_16
    move-object v13, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/le1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/le1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v0, v13, Lads_mobile_sdk/le1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 184
    iget v3, v13, Lads_mobile_sdk/le1;->f:I

    const-string v15, "storedInspectorSettings"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7b

    if-eq v3, v7, :cond_6c

    if-eq v3, v6, :cond_5d

    if-eq v3, v5, :cond_4d

    if-ne v3, v4, :cond_45

    iget-object v2, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_3b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_41

    move-object v1, v8

    goto/16 :goto_166

    :catchall_41
    move-exception v0

    :goto_42
    move-object v1, v8

    goto/16 :goto_16d

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_4d
    iget-object v3, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_53
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    move v0, v4

    move-object v1, v8

    goto/16 :goto_11b

    :catchall_5a
    move-exception v0

    move-object v2, v3

    goto :goto_42

    .line 186
    :cond_5d
    iget-object v3, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iget-object v6, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/if1;

    :try_start_65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_be

    goto :goto_b0

    :goto_69
    move-object v1, v8

    goto/16 :goto_172

    .line 187
    :cond_6c
    iget-object v3, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/if1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    move-object v7, v3

    move-object/from16 v3, v18

    goto :goto_90

    :cond_7b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    iget-object v0, v1, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 846
    iput-object v1, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v0, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v13, Lads_mobile_sdk/le1;->f:I

    invoke-interface {v0, v8, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_8e

    goto/16 :goto_159

    :cond_8e
    move-object v7, v0

    move-object v3, v1

    .line 847
    :goto_90
    :try_start_90
    iget-object v0, v3, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 848
    iget-object v0, v0, Lads_mobile_sdk/qg1;->a:Lads_mobile_sdk/ks1;

    .line 849
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 850
    iput-object v3, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v7, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v3, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v6, v13, Lads_mobile_sdk/le1;->f:I

    invoke-static {v0, v13}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_aa
    .catchall {:try_start_90 .. :try_end_aa} :catchall_16f

    if-ne v0, v2, :cond_ae

    goto/16 :goto_159

    :cond_ae
    move-object v6, v7

    move-object v7, v3

    .line 851
    :goto_b0
    :try_start_b0
    check-cast v0, Lads_mobile_sdk/og1;
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_10e

    if-nez v0, :cond_c0

    .line 852
    :try_start_b4
    invoke-static {}, Lads_mobile_sdk/og1;->w()Lads_mobile_sdk/og1;

    move-result-object v0

    const-string v9, "getDefaultInstance(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_be

    goto :goto_c0

    :catchall_be
    move-exception v0

    goto :goto_69

    .line 853
    :cond_c0
    :goto_c0
    :try_start_c0
    iput-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    .line 858
    iget-object v0, v7, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    iget-object v3, v7, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    .line 859
    iget-object v3, v7, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_d0
    .catchall {:try_start_c0 .. :try_end_d0} :catchall_10e

    if-nez v3, :cond_d6

    :try_start_d2
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_be

    move-object v3, v8

    .line 860
    :cond_d6
    :try_start_d6
    invoke-virtual {v3}, Lads_mobile_sdk/og1;->B()Z

    move-result v3

    if-eq v0, v3, :cond_113

    .line 861
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v6, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v5, v13, Lads_mobile_sdk/le1;->f:I
    :try_end_e8
    .catchall {:try_start_d6 .. :try_end_e8} :catchall_10e

    const/4 v5, 0x0

    move-object v3, v6

    const/4 v6, 0x0

    move-object v9, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v14

    const/16 v14, 0x1fe

    move v1, v4

    move-object v4, v0

    move v0, v1

    move-object/from16 v1, v16

    :try_start_102
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_109

    if-ne v4, v2, :cond_118

    goto :goto_159

    :catchall_109
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_172

    :catchall_10e
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_69

    :cond_113
    move v0, v4

    move-object/from16 v17, v6

    move-object v3, v7

    move-object v1, v8

    :cond_118
    move-object v5, v3

    move-object/from16 v3, v17

    .line 865
    :goto_11b
    :try_start_11b
    iget-object v8, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_11d
    .catchall {:try_start_11b .. :try_end_11d} :catchall_15e

    if-nez v8, :cond_127

    :try_start_11f
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_124

    move-object v8, v1

    goto :goto_127

    :catchall_124
    move-exception v0

    move-object v2, v3

    goto :goto_16d

    .line 866
    :cond_127
    :goto_127
    :try_start_127
    invoke-virtual {v8}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object v4

    const-string v6, "getDeviceIdForDebugging(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_162

    .line 867
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v3, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v1, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v0, v13, Lads_mobile_sdk/le1;->f:I
    :try_end_146
    .catchall {:try_start_127 .. :try_end_146} :catchall_15e

    const/4 v4, 0x0

    move-object/from16 v17, v3

    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1df

    :try_start_153
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_157
    .catchall {:try_start_153 .. :try_end_157} :catchall_15a

    if-ne v0, v2, :cond_164

    :goto_159
    return-object v2

    :catchall_15a
    move-exception v0

    :goto_15b
    move-object/from16 v2, v17

    goto :goto_16d

    :catchall_15e
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_15b

    :cond_162
    move-object/from16 v17, v3

    :cond_164
    move-object/from16 v2, v17

    .line 869
    :goto_166
    :try_start_166
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_168
    .catchall {:try_start_166 .. :try_end_168} :catchall_16c

    .line 1516
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_16c
    move-exception v0

    :goto_16d
    move-object v6, v2

    goto :goto_172

    :catchall_16f
    move-exception v0

    move-object v1, v8

    move-object v6, v7

    .line 1517
    :goto_172
    invoke-interface {v6, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
