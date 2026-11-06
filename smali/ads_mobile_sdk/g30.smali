###### Class ads_mobile_sdk.g30 (ads_mobile_sdk.g30)
.class public final Lads_mobile_sdk/g30;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lads_mobile_sdk/n30;


# static fields
.field public static final Q:Ljava/util/regex/Pattern;

.field public static final R:Lcom/google/gson/JsonObject;

.field public static final S:Lcom/google/gson/JsonObject;

.field public static final T:Landroid/os/Bundle;


# instance fields
.field public A:Lcom/google/gson/JsonObject;

.field public final B:Lads_mobile_sdk/p02;

.field public final C:Lkotlinx/coroutines/CompletableJob;

.field public D:Landroid/webkit/CookieManager;

.field public E:Landroid/content/SharedPreferences;

.field public final F:Lads_mobile_sdk/p02;

.field public final G:Lkotlinx/coroutines/sync/Mutex;

.field public H:Lkotlinx/coroutines/Job;

.field public I:Z

.field public final J:Lkotlinx/coroutines/sync/Mutex;

.field public K:Lads_mobile_sdk/fu;

.field public L:Lkotlinx/coroutines/Deferred;

.field public final M:Lkotlinx/coroutines/sync/Mutex;

.field public N:Ljava/lang/String;

.field public O:Lkotlinx/coroutines/Deferred;

.field public P:J

.field public final c:Landroid/content/Context;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/jb3;

.field public final f:Lads_mobile_sdk/ur3;

.field public final g:Lcom/google/gson/Gson;

.field public final h:Lads_mobile_sdk/ex0;

.field public final i:Lads_mobile_sdk/o21;

.field public final j:Lads_mobile_sdk/tf;

.field public final k:Lads_mobile_sdk/bm;

.field public final l:Lads_mobile_sdk/fi2;

.field public final m:Lads_mobile_sdk/ls0;

.field public final n:Lads_mobile_sdk/tx;

.field public final o:Lads_mobile_sdk/g83;

.field public final p:Lads_mobile_sdk/f13;

.field public final q:Lads_mobile_sdk/cw2;

.field public final r:Lads_mobile_sdk/xw0;

.field public final s:Lads_mobile_sdk/rw0;

.field public final t:Lads_mobile_sdk/jw0;

.field public final u:Lads_mobile_sdk/xb0;

.field public final v:Lads_mobile_sdk/im2;

.field public final w:Lads_mobile_sdk/dq0;

.field public final x:Lkotlinx/coroutines/sync/Mutex;

.field public y:Landroid/os/Bundle;

.field public final z:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "([^;]+=[^;]+)(;\\s|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/g30;->Q:Ljava/util/regex/Pattern;

    .line 17
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "gad_idless"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "has_special_purposes"

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    sput-object v0, Lads_mobile_sdk/g30;->R:Lcom/google/gson/JsonObject;

    .line 25
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    sput-object v0, Lads_mobile_sdk/g30;->S:Lcom/google/gson/JsonObject;

    .line 34
    const-string v0, "fake_key"

    const-string v1, "fake_val"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/g30;->T:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/jb3;Lads_mobile_sdk/ur3;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;Lads_mobile_sdk/tf;Lads_mobile_sdk/bm;Lads_mobile_sdk/fi2;Lads_mobile_sdk/ls0;Lads_mobile_sdk/tx;Lads_mobile_sdk/g83;Lads_mobile_sdk/f13;Lads_mobile_sdk/dw2;Lads_mobile_sdk/xw0;Lads_mobile_sdk/rw0;Lads_mobile_sdk/jw0;Lads_mobile_sdk/xb0;Lads_mobile_sdk/im2;Lads_mobile_sdk/dq0;)V
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

    const-string v0, "javascriptEngine"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingIdClientWrapper"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSetIdClientWrapper"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidLifecycleWrapper"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsAdapter"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trustlessTokenClientProvider"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagValueProvider"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagParamsBuilder"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagDataStore"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrbDataStore"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheManager"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eoidManager"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/s11;->o:Lads_mobile_sdk/s11;

    const/4 v15, 0x2

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 3
    iput-object v1, v14, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    .line 4
    iput-object v2, v14, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object v3, v14, Lads_mobile_sdk/g30;->e:Lads_mobile_sdk/jb3;

    .line 6
    iput-object v4, v14, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 7
    iput-object v5, v14, Lads_mobile_sdk/g30;->g:Lcom/google/gson/Gson;

    .line 8
    iput-object v6, v14, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 9
    iput-object v7, v14, Lads_mobile_sdk/g30;->i:Lads_mobile_sdk/o21;

    .line 10
    iput-object v8, v14, Lads_mobile_sdk/g30;->j:Lads_mobile_sdk/tf;

    .line 11
    iput-object v9, v14, Lads_mobile_sdk/g30;->k:Lads_mobile_sdk/bm;

    .line 12
    iput-object v10, v14, Lads_mobile_sdk/g30;->l:Lads_mobile_sdk/fi2;

    .line 13
    iput-object v11, v14, Lads_mobile_sdk/g30;->m:Lads_mobile_sdk/ls0;

    .line 14
    iput-object v12, v14, Lads_mobile_sdk/g30;->n:Lads_mobile_sdk/tx;

    .line 15
    iput-object v13, v14, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    move-object/from16 v0, p14

    .line 16
    iput-object v0, v14, Lads_mobile_sdk/g30;->p:Lads_mobile_sdk/f13;

    move-object/from16 v15, p15

    .line 17
    iput-object v15, v14, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    move-object/from16 v15, p16

    .line 18
    iput-object v15, v14, Lads_mobile_sdk/g30;->r:Lads_mobile_sdk/xw0;

    move-object/from16 v15, p17

    .line 19
    iput-object v15, v14, Lads_mobile_sdk/g30;->s:Lads_mobile_sdk/rw0;

    move-object/from16 v15, p18

    .line 20
    iput-object v15, v14, Lads_mobile_sdk/g30;->t:Lads_mobile_sdk/jw0;

    move-object/from16 v15, p19

    .line 21
    iput-object v15, v14, Lads_mobile_sdk/g30;->u:Lads_mobile_sdk/xb0;

    move-object/from16 v15, p20

    .line 22
    iput-object v15, v14, Lads_mobile_sdk/g30;->v:Lads_mobile_sdk/im2;

    move-object/from16 v15, p21

    .line 23
    iput-object v15, v14, Lads_mobile_sdk/g30;->w:Lads_mobile_sdk/dq0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    iput-object v3, v14, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 32
    sget-object v3, Lads_mobile_sdk/g30;->T:Landroid/os/Bundle;

    iput-object v3, v14, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    .line 34
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    iput-object v3, v14, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 35
    sget-object v3, Lads_mobile_sdk/g30;->R:Lcom/google/gson/JsonObject;

    iput-object v3, v14, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;

    .line 931
    invoke-static {}, Lads_mobile_sdk/u00;->z()Lads_mobile_sdk/t00;

    move-result-object v3

    const-string v4, "newBuilder(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/v00;->a(Lads_mobile_sdk/t00;)Lads_mobile_sdk/w00;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/w00;->a()Lads_mobile_sdk/u00;

    move-result-object v3

    .line 932
    new-instance v4, Lads_mobile_sdk/p02;

    invoke-direct {v4, v3}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object v4, v14, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    .line 935
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    iput-object v3, v14, Lads_mobile_sdk/g30;->C:Lkotlinx/coroutines/CompletableJob;

    .line 938
    new-instance v3, Lads_mobile_sdk/p02;

    invoke-virtual {v14}, Lads_mobile_sdk/g30;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object v3, v14, Lads_mobile_sdk/g30;->F:Lads_mobile_sdk/p02;

    .line 941
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    iput-object v3, v14, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 949
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    iput-object v3, v14, Lads_mobile_sdk/g30;->J:Lkotlinx/coroutines/sync/Mutex;

    .line 954
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/g30;->M:Lkotlinx/coroutines/sync/Mutex;

    .line 958
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, v14, Lads_mobile_sdk/g30;->P:J

    return-void
.end method

.method public static a(Lads_mobile_sdk/g30;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 34209
    instance-of v0, p4, Lads_mobile_sdk/d30;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/d30;

    iget v1, v0, Lads_mobile_sdk/d30;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d30;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d30;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/d30;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/d30;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34999
    iget v2, v0, Lads_mobile_sdk/d30;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lads_mobile_sdk/d30;->a:Lads_mobile_sdk/g30;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_46

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35000
    iget-object p4, p0, Lads_mobile_sdk/g30;->w:Lads_mobile_sdk/dq0;

    iput-object p0, v0, Lads_mobile_sdk/d30;->a:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/d30;->d:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35001
    invoke-static {p4, p1, p2, p3, v0}, Lads_mobile_sdk/dq0;->a(Lads_mobile_sdk/dq0;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_46

    return-object v1

    .line 35002
    :cond_46
    :goto_46
    check-cast p4, Lads_mobile_sdk/xp0;

    .line 35004
    iget-object p1, p0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35006
    const-string p2, "key"

    const-string p3, "enableDeleteWebEoid"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35022
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, p3, p2, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a5

    if-eqz p4, :cond_a5

    .line 35023
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 35024
    invoke-virtual {p4}, Lads_mobile_sdk/xp0;->w()Ljava/lang/String;

    move-result-object p2

    const-string p3, "eoid"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35025
    invoke-virtual {p4}, Lads_mobile_sdk/xp0;->x()J

    move-result-wide p2

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "eoid_timestamp_ms"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35027
    iget-object v0, p0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/e30;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lads_mobile_sdk/e30;-><init>(Lads_mobile_sdk/g30;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    .line 35028
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 35029
    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35287
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p2, p3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35288
    :cond_a5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/g30;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 32585
    instance-of v0, p3, Lads_mobile_sdk/a30;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/a30;

    iget v1, v0, Lads_mobile_sdk/a30;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a30;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a30;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/a30;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/a30;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 33344
    iget v2, v0, Lads_mobile_sdk/a30;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_40

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7f

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/a30;->d:Lads_mobile_sdk/s00;

    iget-object p2, v0, Lads_mobile_sdk/a30;->c:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/a30;->b:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/a30;->a:Lads_mobile_sdk/g30;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_40
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33345
    sget-object p3, Lads_mobile_sdk/s00;->C:Lads_mobile_sdk/s00;

    .line 34204
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/a30;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/a30;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/a30;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/a30;->d:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/a30;->g:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_58

    goto :goto_7e

    :cond_58
    move-object v5, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v5

    .line 34205
    :goto_5c
    check-cast p3, Lads_mobile_sdk/u00;

    invoke-virtual {p3}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 34206
    iget-object p0, v2, Lads_mobile_sdk/g30;->t:Lads_mobile_sdk/jw0;

    const/4 p3, 0x0

    iput-object p3, v0, Lads_mobile_sdk/a30;->a:Lads_mobile_sdk/g30;

    iput-object p3, v0, Lads_mobile_sdk/a30;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/a30;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/a30;->d:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/a30;->g:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34207
    invoke-static {p0, p1, p2, v0}, Lads_mobile_sdk/jw0;->a(Lads_mobile_sdk/jw0;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7f

    :goto_7e
    return-object v1

    .line 34208
    :cond_7f
    :goto_7f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 15028
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15029
    instance-of v0, p1, Lads_mobile_sdk/c30;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c30;

    iget v1, v0, Lads_mobile_sdk/c30;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c30;->g:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/c30;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c30;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/c30;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 15431
    iget v2, v0, Lads_mobile_sdk/c30;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_2c8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_32
    iget-object p0, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3d

    goto/16 :goto_26e

    :catchall_3d
    move-exception p1

    goto/16 :goto_282

    :pswitch_40
    iget-object p0, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v3, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/g30;

    :try_start_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_51

    goto/16 :goto_252

    :catchall_51
    move-exception p0

    goto/16 :goto_280

    :pswitch_54
    iget-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_5e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_63

    goto/16 :goto_239

    :catchall_63
    move-exception p1

    move-object v0, v2

    goto/16 :goto_282

    :pswitch_67
    iget-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_71
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_221

    goto/16 :goto_20a

    :pswitch_76
    iget-object p0, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_7c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_81

    goto/16 :goto_195

    :catchall_81
    move-exception p1

    goto/16 :goto_1a8

    :pswitch_84
    iget-object p0, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v3, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/g30;

    :try_start_90
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_95

    goto/16 :goto_179

    :catchall_95
    move-exception p0

    goto/16 :goto_1a6

    :pswitch_98
    iget-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_a2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a7

    goto/16 :goto_161

    :catchall_a7
    move-exception p1

    move-object v0, v2

    goto/16 :goto_1a8

    :pswitch_ab
    iget-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_b5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_149

    goto/16 :goto_132

    :pswitch_ba
    iget-object p0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_f0

    :pswitch_c2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15432
    iget-object p1, p0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 15433
    iget-object p1, p1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 15434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15435
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 15436
    const-string v7, "key"

    const-string v8, "gads:consent_update_delay"

    invoke-static {v4, v2, v8, v7}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 15437
    sget-object v7, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v8, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 15438
    iput-object p0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/c30;->g:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f0

    goto/16 :goto_26b

    .line 15439
    :cond_f0
    :goto_f0
    iget-object p1, p0, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->y1:Lads_mobile_sdk/s11;

    .line 16329
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 16330
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 16331
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 16332
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 16333
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 16334
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 16335
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 16336
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 16337
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_1ed

    .line 16338
    invoke-static {p1, v2, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 16339
    :try_start_11d
    iput-object p0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/4 v2, 0x2

    iput v2, v0, Lads_mobile_sdk/c30;->g:I

    .line 16340
    invoke-static {p0, v0}, Lads_mobile_sdk/g30;->f(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12a
    .catchall {:try_start_11d .. :try_end_12a} :catchall_1aa

    if-ne v2, v1, :cond_12e

    goto/16 :goto_26b

    :cond_12e
    move-object v3, p0

    move-object p0, p1

    move-object p1, v2

    move-object v2, p0

    .line 16341
    :goto_132
    :try_start_132
    check-cast p1, Lads_mobile_sdk/v01;

    .line 16345
    instance-of v7, p1, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_14c

    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/4 p1, 0x3

    iput p1, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v3, v0}, Lads_mobile_sdk/g30;->M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_161

    goto/16 :goto_26b

    :catchall_149
    move-exception p1

    goto/16 :goto_1ae

    .line 16346
    :cond_14c
    instance-of p1, p1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_161

    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/4 p1, 0x4

    iput p1, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v3, v0}, Lads_mobile_sdk/g30;->N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_15d
    .catchall {:try_start_132 .. :try_end_15d} :catchall_149

    if-ne p1, v1, :cond_161

    goto/16 :goto_26b

    .line 16349
    :cond_161
    :goto_161
    :try_start_161
    iget-object p1, v3, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 17244
    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/c30;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_171
    .catchall {:try_start_161 .. :try_end_171} :catchall_a7

    if-ne v4, v1, :cond_175

    goto/16 :goto_26b

    :cond_175
    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    .line 17245
    :goto_179
    :try_start_179
    iput-boolean v5, v4, Lads_mobile_sdk/g30;->I:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17d
    .catchall {:try_start_179 .. :try_end_17d} :catchall_1a1

    .line 18144
    :try_start_17d
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 18145
    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;
    :try_end_182
    .catchall {:try_start_17d .. :try_end_182} :catchall_95

    :try_start_182
    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object v6, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iput-object v6, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_188
    .catchall {:try_start_182 .. :try_end_188} :catchall_19c

    const/4 p0, 0x6

    :try_start_189
    iput p0, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v4, v0}, Lads_mobile_sdk/g30;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18f
    .catchall {:try_start_189 .. :try_end_18f} :catchall_95

    if-ne p0, v1, :cond_193

    goto/16 :goto_26b

    :cond_193
    move-object p0, v2

    move-object v0, v3

    .line 18146
    :goto_195
    :try_start_195
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_197
    .catchall {:try_start_195 .. :try_end_197} :catchall_81

    .line 19048
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_273

    :catchall_19c
    move-exception p0

    goto :goto_1a6

    :goto_19e
    move-object p0, v2

    move-object v2, v3

    goto :goto_1ae

    :catchall_1a1
    move-exception p1

    .line 19060
    :try_start_1a2
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_1a6
    .catchall {:try_start_1a2 .. :try_end_1a6} :catchall_95

    :goto_1a6
    move-object p1, p0

    goto :goto_19e

    :goto_1a8
    move-object v2, v0

    goto :goto_1ae

    :catchall_1aa
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 19067
    :goto_1ae
    :try_start_1ae
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 19071
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_1e6

    .line 19073
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_1c3

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1c3

    .line 19079
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1c3

    :catchall_1c1
    move-exception p1

    goto :goto_1e7

    .line 19085
    :cond_1c3
    :goto_1c3
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_1de

    .line 19086
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1d6

    .line 19087
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_1d0

    throw p1

    .line 19088
    :cond_1d0
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 19089
    :cond_1d6
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 19090
    :cond_1de
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 19091
    :cond_1e6
    throw p1
    :try_end_1e7
    .catchall {:try_start_1ae .. :try_end_1e7} :catchall_1c1

    .line 19092
    :goto_1e7
    :try_start_1e7
    throw p1
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e8

    :catchall_1e8
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 19137
    :cond_1ed
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 19138
    :try_start_1f5
    iput-object p0, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/4 v2, 0x7

    iput v2, v0, Lads_mobile_sdk/c30;->g:I

    .line 19139
    invoke-static {p0, v0}, Lads_mobile_sdk/g30;->f(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_202
    .catchall {:try_start_1f5 .. :try_end_202} :catchall_284

    if-ne v2, v1, :cond_206

    goto/16 :goto_26b

    :cond_206
    move-object v3, p0

    move-object p0, p1

    move-object p1, v2

    move-object v2, p0

    .line 19140
    :goto_20a
    :try_start_20a
    check-cast p1, Lads_mobile_sdk/v01;

    .line 19144
    instance-of v4, p1, Lads_mobile_sdk/q01;

    if-eqz v4, :cond_224

    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/16 p1, 0x8

    iput p1, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v3, v0}, Lads_mobile_sdk/g30;->M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_239

    goto :goto_26b

    :catchall_221
    move-exception p1

    goto/16 :goto_288

    .line 19145
    :cond_224
    instance-of p1, p1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_239

    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    const/16 p1, 0x9

    iput p1, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v3, v0}, Lads_mobile_sdk/g30;->N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_236
    .catchall {:try_start_20a .. :try_end_236} :catchall_221

    if-ne p1, v1, :cond_239

    goto :goto_26b

    :cond_239
    :goto_239
    move-object v4, v3

    .line 19148
    :try_start_23a
    iget-object p1, v4, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 20043
    iput-object v4, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object p0, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 v3, 0xa

    iput v3, v0, Lads_mobile_sdk/c30;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_24c
    .catchall {:try_start_23a .. :try_end_24c} :catchall_63

    if-ne v3, v1, :cond_24f

    goto :goto_26b

    :cond_24f
    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    .line 20044
    :goto_252
    :try_start_252
    iput-boolean v5, v4, Lads_mobile_sdk/g30;->I:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_256
    .catchall {:try_start_252 .. :try_end_256} :catchall_27b

    .line 20943
    :try_start_256
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 20944
    iput-object v3, v0, Lads_mobile_sdk/c30;->a:Ljava/lang/Object;
    :try_end_25b
    .catchall {:try_start_256 .. :try_end_25b} :catchall_51

    :try_start_25b
    iput-object v2, v0, Lads_mobile_sdk/c30;->b:Ljava/io/Closeable;

    iput-object v6, v0, Lads_mobile_sdk/c30;->c:Ljava/io/Closeable;

    iput-object v6, v0, Lads_mobile_sdk/c30;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_261
    .catchall {:try_start_25b .. :try_end_261} :catchall_276

    const/16 p0, 0xb

    :try_start_263
    iput p0, v0, Lads_mobile_sdk/c30;->g:I

    invoke-virtual {v4, v0}, Lads_mobile_sdk/g30;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_269
    .catchall {:try_start_263 .. :try_end_269} :catchall_51

    if-ne p0, v1, :cond_26c

    :goto_26b
    return-object v1

    :cond_26c
    move-object p0, v2

    move-object v0, v3

    .line 20945
    :goto_26e
    :try_start_26e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_270
    .catchall {:try_start_26e .. :try_end_270} :catchall_3d

    .line 21884
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 21885
    :goto_273
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_276
    move-exception p0

    goto :goto_280

    :goto_278
    move-object p0, v2

    move-object v2, v3

    goto :goto_288

    :catchall_27b
    move-exception p1

    .line 22781
    :try_start_27c
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_280
    .catchall {:try_start_27c .. :try_end_280} :catchall_51

    :goto_280
    move-object p1, p0

    goto :goto_278

    :goto_282
    move-object v2, v0

    goto :goto_288

    :catchall_284
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 22825
    :goto_288
    :try_start_288
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 22829
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_2c0

    .line 22831
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_29d

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_29d

    .line 22837
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_29d

    :catchall_29b
    move-exception p1

    goto :goto_2c1

    .line 22843
    :cond_29d
    :goto_29d
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_2b8

    .line 22844
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2b0

    .line 22845
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_2aa

    throw p1

    .line 22846
    :cond_2aa
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 22847
    :cond_2b0
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 22848
    :cond_2b8
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 22849
    :cond_2c0
    throw p1
    :try_end_2c1
    .catchall {:try_start_288 .. :try_end_2c1} :catchall_29b

    .line 22850
    :goto_2c1
    :try_start_2c1
    throw p1
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2c2

    :catchall_2c2
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_2c8
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_ba
        :pswitch_ab
        :pswitch_98
        :pswitch_98
        :pswitch_84
        :pswitch_76
        :pswitch_67
        :pswitch_54
        :pswitch_54
        :pswitch_40
        :pswitch_32
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/g30;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    .line 32583
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32584
    invoke-static {p0, p1, v0, p2}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/g30;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/g30;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    instance-of v2, v0, Lads_mobile_sdk/r20;

    if-eqz v2, :cond_1a

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/r20;

    iget v3, v2, Lads_mobile_sdk/r20;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/r20;->i:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/r20;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/r20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v0, v2, Lads_mobile_sdk/r20;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 386
    iget v4, v2, Lads_mobile_sdk/r20;->i:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_36e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_205

    :pswitch_39
    iget-object v1, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_1ec

    :pswitch_49
    iget-object v1, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2f1

    :pswitch_54
    iget-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2dd

    :pswitch_5b
    iget-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2b7

    :pswitch_62
    iget-boolean v1, v2, Lads_mobile_sdk/r20;->f:Z

    iget-object v4, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    iget-object v7, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_27f

    :pswitch_71
    iget-boolean v1, v2, Lads_mobile_sdk/r20;->f:Z

    iget-object v4, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    iget-object v8, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_261

    :pswitch_80
    iget-boolean v1, v2, Lads_mobile_sdk/r20;->f:Z

    iget-object v4, v2, Lads_mobile_sdk/r20;->e:Landroid/os/Bundle;

    iget-object v7, v2, Lads_mobile_sdk/r20;->d:Lads_mobile_sdk/g30;

    iget-object v8, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    iget-object v10, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v7

    move v7, v1

    move-object v1, v15

    goto/16 :goto_22c

    :pswitch_96
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 390
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 391
    iget-object v0, v1, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    sget-object v7, Lads_mobile_sdk/s11;->w0:Lads_mobile_sdk/s11;

    .line 1221
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1222
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 1223
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 1224
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1225
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 1226
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 1227
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1228
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 1229
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, "JSON shared preference consent key set parsing failure"

    const-string v12, "Failure reading consent strings from shared preferences"

    const-string v13, "sharedPreferences"

    const-class v14, Lcom/google/gson/JsonArray;

    if-nez v10, :cond_169

    .line 1230
    invoke-static {v0, v7, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v7

    .line 1231
    :try_start_d3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v8, v1, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 1232
    iget-object v8, v8, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 1233
    invoke-virtual {v8}, Lads_mobile_sdk/x00;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 1234
    iget-object v8, v1, Lads_mobile_sdk/g30;->E:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_eb

    goto :goto_ef

    :cond_eb
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v6

    .line 1235
    :goto_ef
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 1237
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_122

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 1238
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v9, v4}, Lads_mobile_sdk/g30;->a(Ljava/util/Map;Lcom/google/gson/JsonElement;Landroid/os/Bundle;)V
    :try_end_10c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d3 .. :try_end_10c} :catch_111
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_10c} :catch_10f
    .catchall {:try_start_d3 .. :try_end_10c} :catchall_10d

    goto :goto_f7

    :catchall_10d
    move-exception v0

    goto :goto_129

    :catch_10f
    move-exception v0

    goto :goto_113

    :catch_111
    move-exception v0

    goto :goto_11b

    .line 1248
    :goto_113
    :try_start_113
    iget-object v8, v1, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 1251
    check-cast v8, Lads_mobile_sdk/as3;

    invoke-virtual {v8, v12, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_122

    .line 1252
    :goto_11b
    iget-object v8, v1, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 1255
    check-cast v8, Lads_mobile_sdk/as3;

    invoke-virtual {v8, v11, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1267
    :cond_122
    :goto_122
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_124
    .catchall {:try_start_113 .. :try_end_124} :catchall_10d

    .line 2084
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1c6

    .line 2092
    :goto_129
    :try_start_129
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2096
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_162

    .line 2098
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_13f

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13f

    .line 2104
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_13f

    :catchall_13c
    move-exception v0

    move-object v1, v0

    goto :goto_163

    .line 2110
    :cond_13f
    :goto_13f
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_15a

    .line 2111
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_152

    .line 2112
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_14c

    throw v0

    .line 2113
    :cond_14c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2114
    :cond_152
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2115
    :cond_15a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2116
    :cond_162
    throw v0
    :try_end_163
    .catchall {:try_start_129 .. :try_end_163} :catchall_13c

    .line 2117
    :goto_163
    :try_start_163
    throw v1
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_164

    :catchall_164
    move-exception v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2151
    :cond_169
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v7, v0, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v7

    .line 2152
    :try_start_171
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v8, v1, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 2153
    iget-object v8, v8, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 2154
    invoke-virtual {v8}, Lads_mobile_sdk/x00;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 2155
    iget-object v8, v1, Lads_mobile_sdk/g30;->E:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_189

    goto :goto_18d

    :cond_189
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v6

    .line 2156
    :goto_18d
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 2158
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_195
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 2159
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v9, v4}, Lads_mobile_sdk/g30;->a(Ljava/util/Map;Lcom/google/gson/JsonElement;Landroid/os/Bundle;)V
    :try_end_1aa
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_171 .. :try_end_1aa} :catch_1b0
    .catch Ljava/lang/NullPointerException; {:try_start_171 .. :try_end_1aa} :catch_1ae
    .catchall {:try_start_171 .. :try_end_1aa} :catchall_1ab

    goto :goto_195

    :catchall_1ab
    move-exception v0

    goto/16 :goto_32e

    :catch_1ae
    move-exception v0

    goto :goto_1b2

    :catch_1b0
    move-exception v0

    goto :goto_1ba

    .line 2169
    :goto_1b2
    :try_start_1b2
    iget-object v8, v1, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 2172
    check-cast v8, Lads_mobile_sdk/as3;

    invoke-virtual {v8, v12, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c1

    .line 2173
    :goto_1ba
    iget-object v8, v1, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 2176
    check-cast v8, Lads_mobile_sdk/as3;

    invoke-virtual {v8, v11, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2188
    :cond_1c1
    :goto_1c1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c3
    .catchall {:try_start_1b2 .. :try_end_1c3} :catchall_1ab

    .line 3042
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 3043
    :goto_1c6
    iget-object v0, v1, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 3044
    iget-boolean v7, v0, Lads_mobile_sdk/ex0;->w:Z

    if-nez v7, :cond_20e

    .line 3045
    iget-wide v7, v0, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1d5

    goto :goto_20e

    .line 3046
    :cond_1d5
    iget-object v0, v1, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 3940
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    const/16 v5, 0x8

    iput v5, v2, Lads_mobile_sdk/r20;->i:I

    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1e9

    goto/16 :goto_31e

    :cond_1e9
    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    .line 3941
    :goto_1ec
    :try_start_1ec
    iput-object v0, v1, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f0
    .catchall {:try_start_1ec .. :try_end_1f0} :catchall_209

    .line 4839
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4840
    iput-object v6, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v6, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    const/16 v4, 0x9

    iput v4, v2, Lads_mobile_sdk/r20;->i:I

    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/g30;->b(Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_205

    goto/16 :goto_31e

    .line 4841
    :cond_205
    :goto_205
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_31e

    :catchall_209
    move-exception v0

    .line 5737
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_20e
    :goto_20e
    if-nez p1, :cond_242

    .line 5738
    iget-object v8, v1, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 6616
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, v2, Lads_mobile_sdk/r20;->d:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/r20;->e:Landroid/os/Bundle;

    move/from16 v7, p2

    iput-boolean v7, v2, Lads_mobile_sdk/r20;->f:Z

    iput v5, v2, Lads_mobile_sdk/r20;->i:I

    invoke-interface {v8, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_22a

    goto/16 :goto_31e

    :cond_22a
    move-object v10, v1

    move-object v9, v4

    .line 6617
    :goto_22c
    :try_start_22c
    iget-object v0, v10, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;
    :try_end_22e
    .catchall {:try_start_22c .. :try_end_22e} :catchall_23d

    .line 7499
    invoke-interface {v8, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 7500
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Lads_mobile_sdk/g30;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_31c

    move-object v4, v9

    move-object v1, v10

    goto :goto_244

    :catchall_23d
    move-exception v0

    .line 8382
    invoke-interface {v8, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_242
    move/from16 v7, p2

    .line 8383
    :goto_244
    iget-object v0, v1, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 9267
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, v2, Lads_mobile_sdk/r20;->d:Lads_mobile_sdk/g30;

    iput-object v6, v2, Lads_mobile_sdk/r20;->e:Landroid/os/Bundle;

    iput-boolean v7, v2, Lads_mobile_sdk/r20;->f:Z

    const/4 v8, 0x2

    iput v8, v2, Lads_mobile_sdk/r20;->i:I

    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_25d

    goto/16 :goto_31e

    :cond_25d
    move-object v8, v1

    move v1, v7

    move-object v7, v4

    move-object v4, v0

    .line 9268
    :goto_261
    :try_start_261
    iput-boolean v5, v8, Lads_mobile_sdk/g30;->I:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_265
    .catchall {:try_start_261 .. :try_end_265} :catchall_329

    .line 10156
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 10157
    iget-object v4, v8, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 11051
    iput-object v8, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v7, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v1, v2, Lads_mobile_sdk/r20;->f:Z

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/r20;->i:I

    invoke-interface {v4, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_27d

    goto/16 :goto_31e

    :cond_27d
    move-object v5, v7

    move-object v7, v8

    .line 11052
    :goto_27f
    :try_start_27f
    iput-object v5, v7, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_283
    .catchall {:try_start_27f .. :try_end_283} :catchall_324

    .line 11950
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v1, :cond_2dc

    .line 11951
    iget-object v0, v7, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 11952
    iget-object v0, v0, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 11953
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11955
    const-string v1, "key"

    const-string v4, "gads:enable_full_consent_fallback_check"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11971
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v1, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 11972
    iput-object v7, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v6, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/r20;->i:I

    invoke-virtual {v7, v2}, Lads_mobile_sdk/g30;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2b6

    goto :goto_31e

    :cond_2b6
    move-object v1, v7

    :goto_2b7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 11974
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    const/4 v0, 0x5

    iput v0, v2, Lads_mobile_sdk/r20;->i:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/g30;->O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2dd

    goto :goto_31e

    :cond_2cb
    move-object v1, v7

    .line 11976
    :cond_2cc
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v6, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x6

    iput v0, v2, Lads_mobile_sdk/r20;->i:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/g30;->N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2dd

    goto :goto_31e

    :cond_2dc
    move-object v1, v7

    .line 11980
    :cond_2dd
    :goto_2dd
    iget-object v0, v1, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 12870
    iput-object v1, v2, Lads_mobile_sdk/r20;->a:Lads_mobile_sdk/g30;

    iput-object v0, v2, Lads_mobile_sdk/r20;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/r20;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v4, 0x7

    iput v4, v2, Lads_mobile_sdk/r20;->i:I

    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_2ef

    goto :goto_31e

    :cond_2ef
    move-object v2, v1

    move-object v1, v0

    .line 12871
    :goto_2f1
    :try_start_2f1
    iget-object v7, v2, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/s20;

    invoke-direct {v0, v2, v6}, Lads_mobile_sdk/s20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 12872
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 12873
    const-string v3, "<this>"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13131
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, v0, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 13132
    iput-object v0, v2, Lads_mobile_sdk/g30;->H:Lkotlinx/coroutines/Job;

    .line 13133
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_319
    .catchall {:try_start_2f1 .. :try_end_319} :catchall_31f

    .line 14025
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14026
    :cond_31c
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_31e
    return-object v3

    :catchall_31f
    move-exception v0

    .line 14916
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_324
    move-exception v0

    .line 14917
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_329
    move-exception v0

    .line 14918
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 14919
    :goto_32e
    :try_start_32e
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 14923
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_367

    .line 14925
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_344

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_344

    .line 14931
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_344

    :catchall_341
    move-exception v0

    move-object v1, v0

    goto :goto_368

    .line 14937
    :cond_344
    :goto_344
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_35f

    .line 14938
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_357

    .line 14939
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_351

    throw v0

    .line 14940
    :cond_351
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 14941
    :cond_357
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 14942
    :cond_35f
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 14943
    :cond_367
    throw v0
    :try_end_368
    .catchall {:try_start_32e .. :try_end_368} :catchall_341

    .line 14944
    :goto_368
    :try_start_368
    throw v1
    :try_end_369
    .catchall {:try_start_368 .. :try_end_369} :catchall_369

    :catchall_369
    move-exception v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_36e
    .packed-switch 0x0
        :pswitch_96
        :pswitch_80
        :pswitch_71
        :pswitch_62
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_49
        :pswitch_39
        :pswitch_34
    .end packed-switch
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    .line 22854
    const-string v0, "newBundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22855
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    return v2

    .line 22857
    :cond_16
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v3, "keySet(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2a

    return v2

    .line 22859
    :cond_2a
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22860
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22861
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 22862
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_59

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_59

    .line 22863
    check-cast v3, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v3, v1}, Lads_mobile_sdk/g30;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    .line 22864
    :cond_59
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_60
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n10;

    iget v1, v0, Lads_mobile_sdk/n10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/n10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 778
    iget v2, v0, Lads_mobile_sdk/n10;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/n10;->b:Lads_mobile_sdk/s00;

    iget-object v2, v0, Lads_mobile_sdk/n10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 779
    sget-object p1, Lads_mobile_sdk/s00;->D:Lads_mobile_sdk/s00;

    .line 1628
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/n10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/n10;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/n10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_50

    goto :goto_72

    :cond_50
    move-object v5, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v5

    .line 1629
    :goto_54
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_73

    .line 1630
    iget-object p0, v2, Lads_mobile_sdk/g30;->w:Lads_mobile_sdk/dq0;

    const/4 p1, 0x0

    iput-object p1, v0, Lads_mobile_sdk/n10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/n10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/n10;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1631
    invoke-static {p0, v0}, Lads_mobile_sdk/dq0;->b(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_73

    :goto_72
    return-object v1

    .line 1632
    :cond_73
    :goto_73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/g30;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1633
    instance-of v0, p3, Lads_mobile_sdk/p20;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/p20;

    iget v1, v0, Lads_mobile_sdk/p20;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p20;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/p20;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/p20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/p20;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1828
    iget v2, v0, Lads_mobile_sdk/p20;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_44

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    iget-boolean p2, v0, Lads_mobile_sdk/p20;->d:Z

    iget-boolean p1, v0, Lads_mobile_sdk/p20;->c:Z

    iget-object p0, v0, Lads_mobile_sdk/p20;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/p20;->a:Lads_mobile_sdk/g30;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_5a

    :cond_44
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1832
    iget-object p3, p0, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 2689
    iput-object p0, v0, Lads_mobile_sdk/p20;->a:Lads_mobile_sdk/g30;

    iput-object p3, v0, Lads_mobile_sdk/p20;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/p20;->c:Z

    iput-boolean p2, v0, Lads_mobile_sdk/p20;->d:Z

    iput v4, v0, Lads_mobile_sdk/p20;->g:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5a

    goto :goto_a4

    .line 2690
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v2, p0, Lads_mobile_sdk/g30;->H:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_65

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_65

    :catchall_62
    move-exception v0

    move-object p0, v0

    goto :goto_a8

    .line 2691
    :cond_65
    :goto_65
    iget-boolean v2, p0, Lads_mobile_sdk/g30;->I:Z

    if-nez v2, :cond_6d

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :cond_6d
    :goto_6d
    iput-boolean v4, p0, Lads_mobile_sdk/g30;->I:Z

    .line 2694
    iget-object v6, p0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/q20;

    invoke-direct {p1, p0, v4, p2, v5}, Lads_mobile_sdk/q20;-><init>(Lads_mobile_sdk/g30;ZZLkotlin/coroutines/Continuation;)V

    .line 2695
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2696
    const-string p2, "<this>"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2954
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 2955
    iput-object p1, p0, Lads_mobile_sdk/g30;->H:Lkotlinx/coroutines/Job;
    :try_end_95
    .catchall {:try_start_5a .. :try_end_95} :catchall_62

    .line 3800
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3801
    iput-object v5, v0, Lads_mobile_sdk/p20;->a:Lads_mobile_sdk/g30;

    iput-object v5, v0, Lads_mobile_sdk/p20;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/p20;->g:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a5

    :goto_a4
    return-object v1

    .line 3802
    :cond_a5
    :goto_a5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4643
    :goto_a8
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic c(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/s10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/s10;

    iget v1, v0, Lads_mobile_sdk/s10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/s10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/s10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/s10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 158
    iget v2, v0, Lads_mobile_sdk/s10;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/s10;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/s10;->a:Lads_mobile_sdk/g30;

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

    iget-object p1, p0, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 1024
    iput-object p0, v0, Lads_mobile_sdk/s10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/s10;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/s10;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1025
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_50

    .line 1895
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_50
    move-exception p0

    .line 1896
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic d(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/t10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/t10;

    iget v1, v0, Lads_mobile_sdk/t10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/t10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/t10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, v0, Lads_mobile_sdk/t10;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/t10;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/t10;->a:Lads_mobile_sdk/g30;

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

    iget-object p1, p0, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 1035
    iput-object p0, v0, Lads_mobile_sdk/t10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/t10;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/t10;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1036
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_50

    .line 1914
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_50
    move-exception p0

    .line 1915
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/u10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/u10;

    iget v1, v0, Lads_mobile_sdk/u10;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u10;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/u10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/u10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/u10;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 163
    iget v2, v0, Lads_mobile_sdk/u10;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lads_mobile_sdk/u10;->d:Lcom/google/gson/Gson;

    iget-object v1, v0, Lads_mobile_sdk/u10;->c:Lcom/google/gson/Gson;

    iget-object v2, v0, Lads_mobile_sdk/u10;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/u10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lads_mobile_sdk/g30;->g:Lcom/google/gson/Gson;

    .line 165
    iget-object v2, p0, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 1046
    iput-object p0, v0, Lads_mobile_sdk/u10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/u10;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, v0, Lads_mobile_sdk/u10;->c:Lcom/google/gson/Gson;

    iput-object p1, v0, Lads_mobile_sdk/u10;->d:Lcom/google/gson/Gson;

    iput v3, v0, Lads_mobile_sdk/u10;->g:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    :cond_52
    move-object v0, p0

    move-object p0, p1

    move-object v1, p0

    .line 1047
    :goto_55
    :try_start_55
    iget-object p1, v0, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_65

    .line 1932
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1933
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1934
    const-class p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_65
    move-exception p0

    .line 2820
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static f(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/v10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/v10;

    iget v1, v0, Lads_mobile_sdk/v10;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/v10;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/v10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/v10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/v10;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 447
    iget v2, v0, Lads_mobile_sdk/v10;->g:I

    const-string v3, "getConsentStringJson(...)"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_18a

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_182

    :pswitch_34
    iget-object p0, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/qb0;

    iget-object v2, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/k30;

    iget-object v3, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_154

    :pswitch_43
    iget-object p0, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/qb0;

    iget-object v2, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/k30;

    iget-object v3, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13f

    :pswitch_52
    iget-object p0, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ma1;

    iget-object v6, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/gson/JsonObject;

    iget-object v7, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f4

    :pswitch_65
    iget-object p0, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_c7

    :pswitch_6c
    iget-object p0, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/rw0;

    iget-object v2, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/jb3;

    iget-object v7, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9d

    :pswitch_7e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 449
    iget-object v6, p0, Lads_mobile_sdk/g30;->e:Lads_mobile_sdk/jb3;

    .line 452
    iget-object p1, p0, Lads_mobile_sdk/g30;->s:Lads_mobile_sdk/rw0;

    iput-object p0, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object v6, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    const-string v2, "google.afma.sdkConstants.getEcoConfiguration"

    iput-object v2, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/v10;->g:I

    .line 453
    invoke-static {p0, v0}, Lads_mobile_sdk/g30;->e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_99

    goto/16 :goto_181

    :cond_99
    move-object v8, v7

    move-object v7, p0

    move-object p0, p1

    move-object p1, v8

    .line 454
    :goto_9d
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/rw0;->a(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 455
    iput-object v7, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object v5, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lads_mobile_sdk/v10;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/rp0;

    invoke-virtual {v6, v2, p0, v0}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c7

    goto/16 :goto_181

    .line 457
    :cond_c7
    :goto_c7
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1401
    instance-of p0, p1, Lads_mobile_sdk/i01;

    if-eqz p0, :cond_d0

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 1402
    :cond_d0
    const-string p0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 1403
    iget-object p0, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1404
    check-cast p0, Lcom/google/gson/JsonObject;

    .line 1409
    sget-object v2, Lads_mobile_sdk/ma1;->a:Lads_mobile_sdk/ma1;

    iput-object v7, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object p0, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v0, Lads_mobile_sdk/v10;->g:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1410
    invoke-static {v7, v0}, Lads_mobile_sdk/g30;->e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f3

    goto/16 :goto_181

    :cond_f3
    move-object v6, p0

    .line 1411
    :goto_f4
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lads_mobile_sdk/ma1;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lads_mobile_sdk/k30;

    move-result-object p0

    if-nez p0, :cond_10c

    .line 1412
    new-instance p0, Lads_mobile_sdk/m01;

    .line 1413
    const-string p1, "Error parsing consent state from getEcoConfiguration result. "

    .line 1414
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1415
    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 1416
    :cond_10c
    invoke-static {v6}, Lads_mobile_sdk/ma1;->d(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qb0;

    move-result-object p1

    if-nez p1, :cond_11c

    .line 1417
    new-instance p0, Lads_mobile_sdk/m01;

    .line 1418
    const-string p1, "Error parsing csrb data from getEcoConfiguration result. "

    .line 1419
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1420
    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 1421
    :cond_11c
    iget-object v2, v7, Lads_mobile_sdk/g30;->t:Lads_mobile_sdk/jw0;

    iput-object v7, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object p0, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/v10;->d:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lads_mobile_sdk/v10;->g:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1422
    invoke-static {v2, p0, v5, v4, v0}, Lads_mobile_sdk/jw0;->a(Lads_mobile_sdk/jw0;Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 1423
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_137

    goto :goto_139

    :cond_137
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_139
    if-ne v2, v1, :cond_13c

    goto :goto_181

    :cond_13c
    move-object v2, p0

    move-object p0, p1

    move-object v3, v7

    .line 1424
    :goto_13f
    iget-object p1, v3, Lads_mobile_sdk/g30;->u:Lads_mobile_sdk/xb0;

    iput-object v3, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v0, Lads_mobile_sdk/v10;->g:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    invoke-static {p1, p0, v0}, Lads_mobile_sdk/xb0;->a(Lads_mobile_sdk/xb0;Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_154

    goto :goto_181

    .line 1426
    :cond_154
    :goto_154
    iget-object p1, v3, Lads_mobile_sdk/g30;->r:Lads_mobile_sdk/xw0;

    check-cast p1, Lads_mobile_sdk/hr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1427
    const-string v4, "newConsentState"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    iget-object p1, p1, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1429
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1430
    iget-object p1, v3, Lads_mobile_sdk/g30;->r:Lads_mobile_sdk/xw0;

    iput-object v5, v0, Lads_mobile_sdk/v10;->a:Lads_mobile_sdk/g30;

    iput-object v5, v0, Lads_mobile_sdk/v10;->b:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/v10;->c:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v0, Lads_mobile_sdk/v10;->g:I

    check-cast p1, Lads_mobile_sdk/hr;

    .line 1431
    invoke-virtual {p1, p0, v0}, Lads_mobile_sdk/hr;->a(Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .line 1432
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_17d

    goto :goto_17f

    :cond_17d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_17f
    if-ne p0, v1, :cond_182

    :goto_181
    return-object v1

    .line 1433
    :cond_182
    :goto_182
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_6c
        :pswitch_65
        :pswitch_52
        :pswitch_43
        :pswitch_34
        :pswitch_2f
    .end packed-switch
.end method

.method public static g(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 973
    instance-of v0, p1, Lads_mobile_sdk/w10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/w10;

    iget v1, v0, Lads_mobile_sdk/w10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/w10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/w10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/w10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1742
    iget v2, v0, Lads_mobile_sdk/w10;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/w10;->b:Lads_mobile_sdk/s00;

    iget-object v2, v0, Lads_mobile_sdk/w10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1743
    sget-object p1, Lads_mobile_sdk/s00;->D:Lads_mobile_sdk/s00;

    .line 2596
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/w10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/w10;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/w10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_50

    goto :goto_72

    :cond_50
    move-object v5, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v5

    .line 2597
    :goto_54
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_75

    .line 2598
    iget-object p0, v2, Lads_mobile_sdk/g30;->w:Lads_mobile_sdk/dq0;

    iput-object p1, v0, Lads_mobile_sdk/w10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/w10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/w10;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2599
    invoke-static {p0, v0}, Lads_mobile_sdk/dq0;->c(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_73

    :goto_72
    return-object v1

    .line 2600
    :cond_73
    :goto_73
    check-cast p1, Lads_mobile_sdk/xp0;

    :cond_75
    return-object p1
.end method

.method public static h(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c20;

    iget v1, v0, Lads_mobile_sdk/c20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/c20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 755
    iget v2, v0, Lads_mobile_sdk/c20;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/c20;->b:Lads_mobile_sdk/s00;

    iget-object v2, v0, Lads_mobile_sdk/c20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 756
    sget-object p1, Lads_mobile_sdk/s00;->B:Lads_mobile_sdk/s00;

    .line 1616
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/c20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/c20;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/c20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_50

    goto :goto_72

    :cond_50
    move-object v5, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v5

    .line 1617
    :goto_54
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_75

    .line 1618
    iget-object p0, v2, Lads_mobile_sdk/g30;->t:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/c20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/c20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/c20;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1619
    invoke-static {p0, v0}, Lads_mobile_sdk/jw0;->c(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_73

    :goto_72
    return-object v1

    .line 1620
    :cond_73
    :goto_73
    check-cast p1, Ljava/util/Map;

    :cond_75
    return-object p1
.end method

.method public static synthetic i(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 3801
    instance-of v0, p1, Lads_mobile_sdk/d20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/d20;

    iget v1, v0, Lads_mobile_sdk/d20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/d20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/d20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4455
    iget v2, v0, Lads_mobile_sdk/d20;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/d20;->b:Lads_mobile_sdk/s00;

    iget-object v2, v0, Lads_mobile_sdk/d20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4456
    sget-object p1, Lads_mobile_sdk/s00;->k:Lads_mobile_sdk/s00;

    .line 5364
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/d20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/d20;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/d20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_50

    goto :goto_6f

    :cond_50
    move-object v5, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v5

    .line 5365
    :goto_54
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_72

    .line 5366
    iget-object p0, v2, Lads_mobile_sdk/g30;->F:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/d20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/d20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/d20;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_70

    :goto_6f
    return-object v1

    .line 5367
    :cond_70
    :goto_70
    check-cast p1, Ljava/lang/String;

    :cond_72
    return-object p1
.end method

.method public static synthetic j(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/e20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/e20;

    iget v1, v0, Lads_mobile_sdk/e20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/e20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/e20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/e20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/e20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 644
    iget v2, v0, Lads_mobile_sdk/e20;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p0, v0, Lads_mobile_sdk/e20;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/e20;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_92

    :catchall_35
    move-exception p1

    goto/16 :goto_a3

    .line 645
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    iget-object p0, v0, Lads_mobile_sdk/e20;->b:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/s00;

    iget-object v2, v0, Lads_mobile_sdk/e20;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 646
    sget-object p1, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    .line 1525
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/e20;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/e20;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/e20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_60

    goto :goto_90

    :cond_60
    move-object v6, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    .line 1526
    :goto_64
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ea

    .line 1527
    sget-object p0, Lads_mobile_sdk/s11;->b1:Lads_mobile_sdk/s11;

    .line 2408
    sget-object p1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p0

    .line 2409
    :try_start_7c
    iget-object p1, v2, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wt3;

    iput-object p0, v0, Lads_mobile_sdk/e20;->a:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/e20;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/e20;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/wt3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_a8

    if-ne p1, v1, :cond_91

    :goto_90
    return-object v1

    :cond_91
    move-object v0, p0

    .line 2410
    :goto_92
    :try_start_92
    check-cast p1, Lads_mobile_sdk/v01;

    .line 3296
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_9f

    .line 3297
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 3298
    invoke-static {v1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_35

    .line 3299
    :cond_9f
    invoke-static {p0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_a3
    move-object v6, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v6

    goto :goto_ab

    :catchall_a8
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    .line 3307
    :goto_ab
    :try_start_ab
    invoke-virtual {p0, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3311
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e3

    .line 3313
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c0

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c0

    .line 3319
    invoke-virtual {p0, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_c0

    :catchall_be
    move-exception p0

    goto :goto_e4

    .line 3325
    :cond_c0
    :goto_c0
    instance-of p0, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p0, :cond_db

    .line 3326
    instance-of p0, v0, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_d3

    .line 3327
    instance-of p0, v0, Lads_mobile_sdk/w01;

    if-eqz p0, :cond_cd

    throw v0

    .line 3328
    :cond_cd
    new-instance p0, Lads_mobile_sdk/b01;

    invoke-direct {p0, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 3329
    :cond_d3
    new-instance p0, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p0

    .line 3330
    :cond_db
    new-instance p0, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p0, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p0

    .line 3331
    :cond_e3
    throw v0
    :try_end_e4
    .catchall {:try_start_ab .. :try_end_e4} :catchall_be

    .line 3332
    :goto_e4
    :try_start_e4
    throw p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_ea
    return-object v5
.end method

.method public static k(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "key"

    instance-of v3, v1, Lads_mobile_sdk/f20;

    if-eqz v3, :cond_19

    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/f20;

    iget v4, v3, Lads_mobile_sdk/f20;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/f20;->e:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/f20;

    invoke-direct {v3, v0, v1}, Lads_mobile_sdk/f20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v1, v3, Lads_mobile_sdk/f20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 604
    iget v5, v3, Lads_mobile_sdk/f20;->e:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_5a

    if-eq v5, v8, :cond_4a

    if-eq v5, v7, :cond_3f

    if-ne v5, v6, :cond_37

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_155

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v0, v3, Lads_mobile_sdk/f20;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/f20;->a:Lads_mobile_sdk/g30;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_8c

    :cond_4a
    iget-object v0, v3, Lads_mobile_sdk/f20;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/s00;

    iget-object v5, v3, Lads_mobile_sdk/f20;->a:Lads_mobile_sdk/g30;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object v0, v5

    move-object/from16 v5, v16

    goto :goto_6f

    :cond_5a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 605
    sget-object v1, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    .line 1510
    iget-object v5, v0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object v0, v3, Lads_mobile_sdk/f20;->a:Lads_mobile_sdk/g30;

    iput-object v1, v3, Lads_mobile_sdk/f20;->b:Ljava/lang/Object;

    iput v8, v3, Lads_mobile_sdk/f20;->e:I

    invoke-virtual {v5, v3}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6f

    goto/16 :goto_154

    .line 1511
    :cond_6f
    :goto_6f
    check-cast v5, Lads_mobile_sdk/u00;

    invoke-virtual {v5}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1512
    iget-object v1, v0, Lads_mobile_sdk/g30;->M:Lkotlinx/coroutines/sync/Mutex;

    .line 2423
    iput-object v0, v3, Lads_mobile_sdk/f20;->a:Lads_mobile_sdk/g30;

    iput-object v1, v3, Lads_mobile_sdk/f20;->b:Ljava/lang/Object;

    iput v7, v3, Lads_mobile_sdk/f20;->e:I

    invoke-interface {v1, v9, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8b

    goto/16 :goto_154

    :cond_8b
    move-object v5, v0

    .line 2424
    :goto_8c
    :try_start_8c
    iget-object v0, v5, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 2425
    iget-object v0, v0, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 2426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2427
    const-string v7, "gads:trustless_token_collection:enabled"

    .line 2428
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2444
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v7, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 2445
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v9}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    goto :goto_113

    :catchall_b2
    move-exception v0

    goto/16 :goto_141

    .line 3359
    :cond_b5
    iget-object v0, v5, Lads_mobile_sdk/g30;->N:Ljava/lang/String;

    if-eqz v0, :cond_107

    .line 3361
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v5, Lads_mobile_sdk/g30;->n:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 3363
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v11, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    .line 3364
    iget-wide v12, v5, Lads_mobile_sdk/g30;->P:J

    iget-object v0, v5, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3365
    const-string v7, "gads:trustless_token_expiration_secs"

    sget-object v14, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v15, 0x12c

    invoke-static {v15, v14}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v14

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3366
    invoke-static {v14, v15}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    sget-object v14, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v0, v7, v2, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v14

    .line 3367
    invoke-static {v12, v13, v14, v15}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v12

    .line 3368
    invoke-static {v10, v11, v12, v13}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_107

    .line 3371
    new-instance v0, Lads_mobile_sdk/q01;

    iget-object v2, v5, Lads_mobile_sdk/g30;->N:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    goto :goto_113

    .line 3376
    :cond_107
    iget-object v0, v5, Lads_mobile_sdk/g30;->O:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_117

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v8, :cond_117

    .line 3377
    iget-object v0, v5, Lads_mobile_sdk/g30;->O:Lkotlinx/coroutines/Deferred;
    :try_end_113
    .catchall {:try_start_8c .. :try_end_113} :catchall_b2

    .line 3358
    :goto_113
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_146

    .line 3380
    :cond_117
    :try_start_117
    iget-object v10, v5, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/g20;

    invoke-direct {v0, v5, v9}, Lads_mobile_sdk/g20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 3381
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3382
    const-string v2, "<this>"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3630
    new-instance v13, Lads_mobile_sdk/vs3;

    invoke-direct {v13, v0, v9}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 3631
    iput-object v0, v5, Lads_mobile_sdk/g30;->O:Lkotlinx/coroutines/Deferred;
    :try_end_13d
    .catchall {:try_start_117 .. :try_end_13d} :catchall_b2

    .line 4527
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_146

    .line 4528
    :goto_141
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_145
    move-object v0, v9

    :goto_146
    if-eqz v0, :cond_158

    .line 4529
    iput-object v9, v3, Lads_mobile_sdk/f20;->a:Lads_mobile_sdk/g30;

    iput-object v9, v3, Lads_mobile_sdk/f20;->b:Ljava/lang/Object;

    iput v6, v3, Lads_mobile_sdk/f20;->e:I

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_155

    :goto_154
    return-object v4

    .line 4530
    :cond_155
    :goto_155
    check-cast v1, Lads_mobile_sdk/v01;

    return-object v1

    :cond_158
    return-object v9
.end method

.method public static l(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/h20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/h20;

    iget v1, v0, Lads_mobile_sdk/h20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/h20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/h20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/h20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 693
    iget v2, v0, Lads_mobile_sdk/h20;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p0, v0, Lads_mobile_sdk/h20;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/h20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 694
    sget-object p1, Lads_mobile_sdk/s00;->h:Lads_mobile_sdk/s00;

    .line 1588
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/h20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/h20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/h20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v13, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v13

    .line 1589
    :goto_4d
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_ad

    .line 1590
    iget-object p0, v0, Lads_mobile_sdk/g30;->D:Landroid/webkit/CookieManager;

    if-eqz p0, :cond_69

    iget-object v0, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->Q0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    :cond_69
    move-object p0, p1

    :goto_6a
    if-eqz p0, :cond_ad

    .line 1591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_73

    goto :goto_ad

    .line 1592
    :cond_73
    sget-object p1, Lads_mobile_sdk/g30;->Q:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 1595
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 1598
    const-string v0, "id="

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 1599
    const-string v0, "ide="

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1601
    :cond_9a
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_9e
    const/16 v11, 0x3e

    const/4 v12, 0x0

    .line 1604
    const-string v5, "; "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ad
    :goto_ad
    return-object p1
.end method

.method public static synthetic m(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/k20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/k20;

    iget v1, v0, Lads_mobile_sdk/k20;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/k20;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/k20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/k20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/k20;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 592
    iget v2, v0, Lads_mobile_sdk/k20;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 593
    iget-object p0, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    .line 594
    iput v3, v0, Lads_mobile_sdk/k20;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    .line 595
    :cond_3f
    :goto_3f
    check-cast p1, Lads_mobile_sdk/u00;

    .line 598
    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p0

    .line 599
    sget-object p1, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/u20;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/u20;

    iget v3, v2, Lads_mobile_sdk/u20;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/u20;->d:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/u20;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/u20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/u20;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 223
    iget v4, v2, Lads_mobile_sdk/u20;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "block"

    const-string v8, "context"

    const-string v9, "<this>"

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v4, :cond_51

    if-eq v4, v6, :cond_4b

    if-eq v4, v5, :cond_45

    if-ne v4, v10, :cond_3d

    iget-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_bb

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_af

    :cond_4b
    iget-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_84

    :cond_51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    iget-object v12, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/v20;

    invoke-direct {v1, v0, v11}, Lads_mobile_sdk/v20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 226
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 227
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v1, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 486
    iget-object v1, v0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    invoke-virtual {v0}, Lads_mobile_sdk/g30;->i()Lads_mobile_sdk/u00;

    move-result-object v4

    iput-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    iput v6, v2, Lads_mobile_sdk/u20;->d:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_84

    goto :goto_ba

    .line 491
    :cond_84
    :goto_84
    iget-object v1, v0, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "getDefaultSharedPreferences(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    const-string v4, "<set-?>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iput-object v1, v0, Lads_mobile_sdk/g30;->E:Landroid/content/SharedPreferences;

    .line 620
    iget-object v1, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 621
    iget-boolean v4, v1, Lads_mobile_sdk/ex0;->w:Z

    if-nez v4, :cond_a4

    .line 622
    iget-wide v12, v1, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v14, 0x0

    cmpl-double v1, v12, v14

    if-lez v1, :cond_af

    .line 623
    :cond_a4
    iput-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    iput v5, v2, Lads_mobile_sdk/u20;->d:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/g30;->K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_af

    goto :goto_ba

    .line 628
    :cond_af
    :goto_af
    iput-object v0, v2, Lads_mobile_sdk/u20;->a:Lads_mobile_sdk/g30;

    iput v10, v2, Lads_mobile_sdk/u20;->d:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v10}, Lads_mobile_sdk/g30;->a(Lads_mobile_sdk/g30;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_bb

    :goto_ba
    return-object v3

    .line 629
    :cond_bb
    :goto_bb
    iget-object v1, v0, Lads_mobile_sdk/g30;->C:Lkotlinx/coroutines/CompletableJob;

    .line 630
    invoke-interface {v1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 631
    iget-object v1, v0, Lads_mobile_sdk/g30;->E:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_c5

    goto :goto_cb

    :cond_c5
    const-string v1, "sharedPreferences"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    .line 632
    :goto_cb
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 635
    iget-object v12, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/w20;

    invoke-direct {v1, v0, v11}, Lads_mobile_sdk/w20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 636
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 637
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v1, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v13, v14

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 896
    iget-object v1, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 897
    iget-object v1, v1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 898
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    const-string v2, "gads:trustless_token_collection:enabled"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_147

    .line 917
    iget-object v1, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 918
    iget-object v1, v1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    const-string v2, "gads:trustless_token_caching_in_signal_source_enabled"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_147

    .line 938
    iget-object v1, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/x20;

    invoke-direct {v2, v0, v11}, Lads_mobile_sdk/x20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 939
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    new-instance v0, Lads_mobile_sdk/ws3;

    invoke-direct {v0, v2, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    move-object v14, v13

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1198
    :cond_147
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/k10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/k10;

    iget v1, v0, Lads_mobile_sdk/k10;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/k10;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/k10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/k10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/k10;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 836
    iget v2, v0, Lads_mobile_sdk/k10;->d:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v7, :cond_4f

    if-eq v2, v6, :cond_49

    if-eq v2, v5, :cond_43

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_91

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_85

    :cond_43
    iget-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_49
    iget-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_4f
    iget-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 837
    iput-object p0, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    iput v7, v0, Lads_mobile_sdk/k10;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/g30;->B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_63

    goto :goto_90

    :cond_63
    move-object v2, p0

    .line 838
    :goto_64
    iput-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    iput v6, v0, Lads_mobile_sdk/k10;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/g30;->y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6f

    goto :goto_90

    .line 839
    :cond_6f
    :goto_6f
    iput-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    iput v5, v0, Lads_mobile_sdk/k10;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/g30;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7a

    goto :goto_90

    .line 840
    :cond_7a
    :goto_7a
    iput-object v2, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    iput v4, v0, Lads_mobile_sdk/k10;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/g30;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_85

    goto :goto_90

    :cond_85
    :goto_85
    const/4 p1, 0x0

    .line 841
    iput-object p1, v0, Lads_mobile_sdk/k10;->a:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/k10;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/g30;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_91

    :goto_90
    return-object v1

    .line 842
    :cond_91
    :goto_91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/l10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/l10;

    iget v1, v0, Lads_mobile_sdk/l10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/l10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/l10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/l10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/l10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 728
    iget v2, v0, Lads_mobile_sdk/l10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/l10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/l10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 729
    sget-object p1, Lads_mobile_sdk/s00;->j:Lads_mobile_sdk/s00;

    .line 1596
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/l10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/l10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/l10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1597
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 1598
    iget-object p1, v0, Lads_mobile_sdk/g30;->D:Landroid/webkit/CookieManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_69

    iget-object v2, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->Q0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_6a

    :cond_69
    move-object v2, v1

    :goto_6a
    if-nez v2, :cond_6d

    goto :goto_d4

    :cond_6d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1600
    const-string p1, ";"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_87
    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 2468
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 3334
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 3336
    :cond_9e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a2
    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3337
    const-string v3, "="

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4, v1}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=; Max-Age=-1; path=/; domain=.doubleclick.net"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3338
    iget-object v3, v0, Lads_mobile_sdk/g30;->D:Landroid/webkit/CookieManager;

    if-eqz v3, :cond_a2

    iget-object v4, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->Q0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 4205
    :cond_d4
    :goto_d4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/o10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o10;

    iget v1, v0, Lads_mobile_sdk/o10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 534
    iget v2, v0, Lads_mobile_sdk/o10;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3c

    if-eq v2, v3, :cond_34

    if-ne v2, v4, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_81

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lads_mobile_sdk/o10;->b:Lads_mobile_sdk/s00;

    iget-object v3, v0, Lads_mobile_sdk/o10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 535
    sget-object v2, Lads_mobile_sdk/s00;->m:Lads_mobile_sdk/s00;

    .line 1484
    iget-object p1, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/o10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/o10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/o10;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_80

    :cond_50
    move-object v3, p0

    .line 1485
    :goto_51
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_84

    .line 1486
    iget-object p1, v3, Lads_mobile_sdk/g30;->j:Lads_mobile_sdk/tf;

    iget-object v3, v3, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    iput-object v2, v0, Lads_mobile_sdk/o10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/o10;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/o10;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1487
    :try_start_6b
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_75

    goto :goto_7e

    :catch_75
    move-exception p1

    .line 1489
    new-instance v0, Lads_mobile_sdk/j01;

    const-string v3, "Exception caught fetching Ad ID"

    invoke-direct {v0, p1, v2, v3, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p1, v0

    :goto_7e
    if-ne p1, v1, :cond_81

    :goto_80
    return-object v1

    .line 1490
    :cond_81
    :goto_81
    check-cast p1, Lads_mobile_sdk/v01;

    return-object p1

    :cond_84
    return-object v2
.end method

.method public final D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/p10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/p10;

    iget v1, v0, Lads_mobile_sdk/p10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/p10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/p10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/p10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 543
    iget v2, v0, Lads_mobile_sdk/p10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/p10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/p10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 544
    sget-object p1, Lads_mobile_sdk/s00;->y:Lads_mobile_sdk/s00;

    .line 1488
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/p10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/p10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/p10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1489
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1490
    iget-object p1, v0, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_61

    goto :goto_6b

    :cond_61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1491
    const-string v0, "advertising_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6b
    :goto_6b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final E(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/q10;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/q10;

    iget v3, v2, Lads_mobile_sdk/q10;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/q10;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/q10;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/q10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/q10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 562
    iget v4, v2, Lads_mobile_sdk/q10;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_51

    if-eq v4, v7, :cond_47

    if-eq v4, v6, :cond_3d

    if-ne v4, v5, :cond_35

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12e

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v4, v2, Lads_mobile_sdk/q10;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/q10;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_84

    :cond_47
    iget-object v4, v2, Lads_mobile_sdk/q10;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/s00;

    iget-object v9, v2, Lads_mobile_sdk/q10;->a:Lads_mobile_sdk/g30;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_51
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    sget-object v4, Lads_mobile_sdk/s00;->n:Lads_mobile_sdk/s00;

    .line 1496
    iget-object v0, v1, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object v1, v2, Lads_mobile_sdk/q10;->a:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/q10;->b:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/q10;->e:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_66

    goto/16 :goto_12d

    :cond_66
    move-object v9, v1

    .line 1497
    :goto_67
    check-cast v0, Lads_mobile_sdk/u00;

    invoke-virtual {v0}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1498
    iget-object v4, v9, Lads_mobile_sdk/g30;->J:Lkotlinx/coroutines/sync/Mutex;

    .line 2437
    iput-object v9, v2, Lads_mobile_sdk/q10;->a:Lads_mobile_sdk/g30;

    iput-object v4, v2, Lads_mobile_sdk/q10;->b:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/q10;->e:I

    invoke-interface {v4, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_83

    goto/16 :goto_12d

    :cond_83
    move-object v6, v9

    .line 2438
    :goto_84
    :try_start_84
    iget-object v0, v6, Lads_mobile_sdk/g30;->K:Lads_mobile_sdk/fu;

    if-eqz v0, :cond_df

    .line 2440
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v6, Lads_mobile_sdk/g30;->n:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2442
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v9, v10, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    .line 2443
    iget-object v0, v6, Lads_mobile_sdk/g30;->K:Lads_mobile_sdk/fu;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2444
    iget-wide v11, v0, Lads_mobile_sdk/fu;->b:J

    .line 2445
    iget-object v0, v6, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2446
    const-string v13, "gads:app_set_id_cache_expiration_in_days"

    sget-object v14, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 v15, 0x16d

    invoke-static {v15, v14}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v14

    const-string v5, "key"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2447
    invoke-static {v14, v15}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v14, Lads_mobile_sdk/yr;->k:Lads_mobile_sdk/jr;

    invoke-virtual {v0, v13, v5, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v13

    .line 2448
    invoke-static {v11, v12, v13, v14}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v11

    .line 2449
    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_df

    .line 2452
    new-instance v0, Lads_mobile_sdk/q01;

    iget-object v5, v6, Lads_mobile_sdk/g30;->K:Lads_mobile_sdk/fu;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v5}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    goto :goto_eb

    :catchall_dd
    move-exception v0

    goto :goto_119

    .line 3390
    :cond_df
    iget-object v0, v6, Lads_mobile_sdk/g30;->L:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_ef

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v7, :cond_ef

    .line 3391
    iget-object v0, v6, Lads_mobile_sdk/g30;->L:Lkotlinx/coroutines/Deferred;
    :try_end_eb
    .catchall {:try_start_84 .. :try_end_eb} :catchall_dd

    .line 3389
    :goto_eb
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_11e

    .line 3394
    :cond_ef
    :try_start_ef
    iget-object v9, v6, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/r10;

    invoke-direct {v0, v6, v8}, Lads_mobile_sdk/r10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 3395
    sget-object v10, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3396
    const-string v5, "<this>"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3644
    new-instance v12, Lads_mobile_sdk/vs3;

    invoke-direct {v12, v0, v8}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 3645
    iput-object v0, v6, Lads_mobile_sdk/g30;->L:Lkotlinx/coroutines/Deferred;
    :try_end_115
    .catchall {:try_start_ef .. :try_end_115} :catchall_dd

    .line 4573
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_11e

    .line 4574
    :goto_119
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_11d
    move-object v0, v8

    :goto_11e
    if-eqz v0, :cond_131

    .line 4575
    iput-object v8, v2, Lads_mobile_sdk/q10;->a:Lads_mobile_sdk/g30;

    iput-object v8, v2, Lads_mobile_sdk/q10;->b:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v2, Lads_mobile_sdk/q10;->e:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12e

    :goto_12d
    return-object v3

    .line 4576
    :cond_12e
    :goto_12e
    check-cast v0, Lads_mobile_sdk/v01;

    return-object v0

    :cond_131
    return-object v8
.end method

.method public final F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/x10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/x10;

    iget v1, v0, Lads_mobile_sdk/x10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/x10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/x10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/x10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 750
    iget v2, v0, Lads_mobile_sdk/x10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/x10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/x10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 751
    sget-object p1, Lads_mobile_sdk/s00;->w:Lads_mobile_sdk/s00;

    .line 1612
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/x10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/x10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/x10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1613
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1614
    iget-object p1, v0, Lads_mobile_sdk/g30;->m:Lads_mobile_sdk/ls0;

    .line 1615
    const-string v0, "generateEventId"

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 1616
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method public final G(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/y10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y10;

    iget v1, v0, Lads_mobile_sdk/y10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/y10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/y10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 740
    iget v2, v0, Lads_mobile_sdk/y10;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lads_mobile_sdk/y10;->b:Lads_mobile_sdk/s00;

    iget-object v4, v0, Lads_mobile_sdk/y10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 741
    sget-object v2, Lads_mobile_sdk/s00;->u:Lads_mobile_sdk/s00;

    .line 1604
    iget-object p1, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/y10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/y10;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/y10;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_6f

    :cond_50
    move-object v4, p0

    .line 1605
    :goto_51
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_73

    .line 1606
    iget-object p1, v4, Lads_mobile_sdk/g30;->m:Lads_mobile_sdk/ls0;

    iput-object v2, v0, Lads_mobile_sdk/y10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/y10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/y10;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    invoke-static {p1, v0}, Lads_mobile_sdk/ls0;->a(Lads_mobile_sdk/ls0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_70

    :goto_6f
    return-object v1

    .line 1608
    :cond_70
    :goto_70
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_73
    return-object v2
.end method

.method public final H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/z10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z10;

    iget v1, v0, Lads_mobile_sdk/z10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/z10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/z10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 745
    iget v2, v0, Lads_mobile_sdk/z10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/z10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/z10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 746
    sget-object p1, Lads_mobile_sdk/s00;->v:Lads_mobile_sdk/s00;

    .line 1608
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/z10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/z10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/z10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1609
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1610
    iget-object p1, v0, Lads_mobile_sdk/g30;->m:Lads_mobile_sdk/ls0;

    .line 1611
    const-string v0, "getAppInstanceId"

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 1612
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method public final I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/a20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/a20;

    iget v1, v0, Lads_mobile_sdk/a20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/a20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/a20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 664
    iget v2, v0, Lads_mobile_sdk/a20;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/a20;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/a20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 665
    sget-object p1, Lads_mobile_sdk/s00;->o:Lads_mobile_sdk/s00;

    .line 1572
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/a20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/a20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/a20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1573
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_bc

    .line 1574
    iget-object p1, v0, Lads_mobile_sdk/g30;->l:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1575
    :try_start_5e
    iget-object v0, p1, Lads_mobile_sdk/fi2;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/hi2;

    .line 1576
    iget-object p1, p1, Lads_mobile_sdk/fi2;->a:Lads_mobile_sdk/ex0;

    .line 1577
    iget-object p1, p1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 1578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1579
    const-string v2, "gads:signal:paid_v1_ttl"

    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v3, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 v4, 0xb6

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {p1, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1581
    check-cast v0, Lads_mobile_sdk/ii2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1582
    const-class p1, Lads_mobile_sdk/ii2;

    monitor-enter p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9f} :catch_aa

    .line 1583
    :try_start_9f
    invoke-virtual {v0, v2, v3}, Lads_mobile_sdk/bi2;->a(J)Lads_mobile_sdk/u41;

    move-result-object v0

    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_ac

    .line 1584
    :try_start_a4
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_aa

    return-object p1

    :catch_aa
    move-exception p1

    goto :goto_af

    :catchall_ac
    move-exception v0

    .line 1585
    :try_start_ad
    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_af} :catch_aa

    .line 1586
    :goto_af
    const-string v0, "Exception while getting PAIDV1"

    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1587
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    invoke-direct {v0, p1, v1, v1, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v0

    :cond_bc
    return-object v1
.end method

.method public final J(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/b20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/b20;

    iget v1, v0, Lads_mobile_sdk/b20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/b20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/b20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/b20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 678
    iget v2, v0, Lads_mobile_sdk/b20;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/b20;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/b20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 679
    sget-object p1, Lads_mobile_sdk/s00;->p:Lads_mobile_sdk/s00;

    .line 1580
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/b20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/b20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/b20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1581
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_fa

    .line 1582
    iget-object p1, v0, Lads_mobile_sdk/g30;->l:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    :try_start_5e
    iget-object v0, p1, Lads_mobile_sdk/fi2;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ji2;

    .line 1584
    iget-object v2, p1, Lads_mobile_sdk/fi2;->a:Lads_mobile_sdk/ex0;

    .line 1585
    iget-object v2, v2, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 1586
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1587
    const-string v3, "gads:signal:paid_v2_ttl"

    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 v5, 0x186

    invoke-static {v5, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v4

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1588
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {v2, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1589
    check-cast v0, Lads_mobile_sdk/ki2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1590
    const-class v4, Lads_mobile_sdk/ki2;

    monitor-enter v4
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9f} :catch_e9

    .line 1592
    :try_start_9f
    iget-object v5, v0, Lads_mobile_sdk/bi2;->g:Lads_mobile_sdk/w41;

    invoke-virtual {v5}, Lads_mobile_sdk/w41;->a()Z

    move-result v5

    if-nez v5, :cond_b0

    .line 1593
    new-instance v0, Lads_mobile_sdk/u41;

    invoke-direct {v0}, Lads_mobile_sdk/u41;-><init>()V

    monitor-exit v4

    goto :goto_b5

    :catchall_ae
    move-exception p1

    goto :goto_eb

    .line 1595
    :cond_b0
    invoke-virtual {v0, v2, v3}, Lads_mobile_sdk/bi2;->a(J)Lads_mobile_sdk/u41;

    move-result-object v0

    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_ae

    .line 1596
    :goto_b5
    :try_start_b5
    iget-object v2, p1, Lads_mobile_sdk/fi2;->e:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getValue(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/v41;

    .line 1597
    check-cast v2, Lads_mobile_sdk/w41;

    invoke-virtual {v2}, Lads_mobile_sdk/w41;->a()Z

    move-result v2

    .line 1598
    iget-object p1, p1, Lads_mobile_sdk/fi2;->e:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "getValue(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/v41;

    .line 1599
    check-cast p1, Lads_mobile_sdk/w41;

    invoke-virtual {p1}, Lads_mobile_sdk/w41;->b()Z

    move-result p1

    .line 1600
    new-instance v3, Lads_mobile_sdk/q01;

    new-instance v4, Lads_mobile_sdk/pj2;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v0, v2, p1}, Lads_mobile_sdk/pj2;-><init>(Lads_mobile_sdk/u41;ZZ)V

    invoke-direct {v3, v4}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e8} :catch_e9

    return-object v3

    :catch_e9
    move-exception p1

    goto :goto_ed

    .line 1601
    :goto_eb
    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ae

    :try_start_ec
    throw p1
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ed} :catch_e9

    .line 1602
    :goto_ed
    const-string v0, "Exception while getting PAIDV2"

    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1603
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    invoke-direct {v0, p1, v1, v1, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v0

    :cond_fa
    return-object v1
.end method

.method public final K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/l20;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/l20;

    iget v3, v2, Lads_mobile_sdk/l20;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/l20;->i:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/l20;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/l20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/l20;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 266
    iget v4, v2, Lads_mobile_sdk/l20;->i:I

    const/4 v5, 0x0

    const-string v6, "fromJson(...)"

    const-class v7, Lcom/google/gson/JsonObject;

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_c3

    if-eq v4, v12, :cond_a5

    if-eq v4, v11, :cond_85

    if-eq v4, v10, :cond_6a

    if-eq v4, v9, :cond_53

    if-ne v4, v8, :cond_4b

    iget-object v3, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_43
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_48

    goto/16 :goto_1da

    :catchall_48
    move-exception v0

    goto/16 :goto_1f1

    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_53
    iget-object v4, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iget-object v6, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/g30;

    :try_start_61
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_67

    move-object v14, v6

    goto/16 :goto_1bd

    :catchall_67
    move-exception v0

    goto/16 :goto_1eb

    .line 268
    :cond_6a
    iget-object v4, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iget-object v6, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/g30;

    :try_start_74
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_80
    .catchall {:try_start_74 .. :try_end_77} :catchall_7b

    move-object v3, v4

    move-object v2, v6

    goto/16 :goto_1da

    :catchall_7b
    move-exception v0

    move-object v3, v4

    move-object v2, v6

    goto/16 :goto_1f1

    :catch_80
    move-exception v0

    move-object v12, v4

    move-object v14, v6

    goto/16 :goto_192

    .line 269
    :cond_85
    iget-object v4, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    check-cast v12, Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/k30;

    iget-object v8, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/g30;

    :try_start_99
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_a1
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9e

    goto/16 :goto_145

    :catchall_9e
    move-exception v0

    goto/16 :goto_1f3

    :catch_a1
    move-exception v0

    move-object v7, v8

    goto/16 :goto_192

    .line 270
    :cond_a5
    iget-object v4, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    check-cast v12, Ljava/io/Closeable;

    iget-object v14, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v15, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/k30;

    iget-object v9, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/g30;

    :try_start_b9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bf
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_9e

    move-object v0, v8

    move-object v8, v9

    goto :goto_10d

    :catch_bf
    move-exception v0

    move-object v7, v9

    goto/16 :goto_192

    .line 271
    :cond_c3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 272
    iget-object v0, v1, Lads_mobile_sdk/g30;->r:Lads_mobile_sdk/xw0;

    check-cast v0, Lads_mobile_sdk/hr;

    .line 273
    iget-object v0, v0, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/k30;

    .line 275
    invoke-virtual {v0}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/u00;->v()I

    move-result v4

    if-gtz v4, :cond_df

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 277
    :cond_df
    sget-object v4, Lads_mobile_sdk/s11;->z1:Lads_mobile_sdk/s11;

    .line 1071
    sget-object v8, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {v4, v8, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1072
    :try_start_eb
    invoke-virtual {v0}, Lads_mobile_sdk/k30;->y()Ljava/lang/String;

    move-result-object v8

    .line 1073
    iget-object v9, v1, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 1875
    iput-object v1, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iput-object v9, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v12, v2, Lads_mobile_sdk/l20;->i:I

    invoke-interface {v9, v13, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_103} :catch_189
    .catchall {:try_start_eb .. :try_end_103} :catchall_187

    if-ne v12, v3, :cond_107

    goto/16 :goto_1d7

    :cond_107
    move-object v15, v0

    move-object v12, v4

    move-object v14, v12

    move-object v0, v8

    move-object v4, v9

    move-object v8, v1

    .line 1876
    :goto_10d
    :try_start_10d
    sget-object v9, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 1877
    iput-object v0, v8, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    .line 1879
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_125
    .catchall {:try_start_10d .. :try_end_125} :catchall_182

    .line 2682
    :try_start_125
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2683
    invoke-virtual {v15}, Lads_mobile_sdk/k30;->x()Ljava/lang/String;

    move-result-object v0

    .line 2684
    iget-object v4, v8, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 3491
    iput-object v8, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    iput-object v15, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iput-object v12, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iput-object v4, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v11, v2, Lads_mobile_sdk/l20;->i:I

    invoke-interface {v4, v13, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_140} :catch_a1
    .catchall {:try_start_125 .. :try_end_140} :catchall_9e

    if-ne v9, v3, :cond_144

    goto/16 :goto_1d7

    :cond_144
    move-object v11, v0

    .line 3492
    :goto_145
    :try_start_145
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v11, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, v8, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;

    .line 3493
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_157
    .catchall {:try_start_145 .. :try_end_157} :catchall_17d

    .line 4302
    :try_start_157
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4303
    iget-object v0, v8, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    invoke-virtual {v15}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object v4

    const-string v6, "getConsentAllowlist(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iput-object v13, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iput-object v13, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/l20;->i:I

    invoke-virtual {v0, v4, v2}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_17a

    goto :goto_1d7

    :cond_17a
    move-object v3, v12

    :goto_17b
    move-object v2, v14

    goto :goto_1da

    :catchall_17d
    move-exception v0

    .line 5110
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_182
    move-exception v0

    .line 5111
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_187} :catch_a1
    .catchall {:try_start_157 .. :try_end_187} :catchall_9e

    :catchall_187
    move-exception v0

    goto :goto_18b

    :catch_189
    move-exception v0

    goto :goto_18f

    :goto_18b
    move-object v12, v4

    move-object v14, v12

    goto/16 :goto_1f3

    :goto_18f
    move-object v7, v1

    move-object v12, v4

    move-object v14, v12

    .line 5112
    :goto_192
    :try_start_192
    const-string v4, "exception"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5113
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 5116
    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    iput-boolean v5, v6, Lads_mobile_sdk/uj2;->m:Z

    .line 5117
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5118
    iget-object v4, v7, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 5926
    iput-object v7, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/l20;->e:Ljava/lang/String;

    iput-object v13, v2, Lads_mobile_sdk/l20;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x4

    iput v5, v2, Lads_mobile_sdk/l20;->i:I

    invoke-interface {v4, v13, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b9
    .catchall {:try_start_192 .. :try_end_1b9} :catchall_1ee

    if-ne v0, v3, :cond_1bc

    goto :goto_1d7

    :cond_1bc
    move-object v5, v12

    .line 5927
    :goto_1bd
    :try_start_1bd
    sget-object v0, Lads_mobile_sdk/g30;->T:Landroid/os/Bundle;

    iput-object v0, v7, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c3
    .catchall {:try_start_1bd .. :try_end_1c3} :catchall_1e6

    .line 6739
    :try_start_1c3
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 6740
    iput-object v14, v2, Lads_mobile_sdk/l20;->a:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/l20;->b:Ljava/lang/Object;
    :try_end_1ca
    .catchall {:try_start_1c3 .. :try_end_1ca} :catchall_1e0

    :try_start_1ca
    iput-object v13, v2, Lads_mobile_sdk/l20;->c:Ljava/io/Closeable;
    :try_end_1cc
    .catchall {:try_start_1ca .. :try_end_1cc} :catchall_1e3

    :try_start_1cc
    iput-object v13, v2, Lads_mobile_sdk/l20;->d:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v2, Lads_mobile_sdk/l20;->i:I

    invoke-virtual {v7, v2}, Lads_mobile_sdk/g30;->N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d5
    .catchall {:try_start_1cc .. :try_end_1d5} :catchall_1e0

    if-ne v0, v3, :cond_1d8

    :goto_1d7
    return-object v3

    :cond_1d8
    move-object v3, v5

    goto :goto_17b

    .line 6742
    :goto_1da
    :try_start_1da
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1dc
    .catchall {:try_start_1da .. :try_end_1dc} :catchall_48

    .line 7556
    invoke-static {v3, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1e0
    move-exception v0

    move-object v6, v14

    goto :goto_1eb

    :catchall_1e3
    move-exception v0

    move-object v12, v5

    goto :goto_1f3

    :catchall_1e6
    move-exception v0

    .line 7590
    :try_start_1e7
    invoke-interface {v4, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1eb
    .catchall {:try_start_1e7 .. :try_end_1eb} :catchall_1e0

    :goto_1eb
    move-object v12, v5

    move-object v14, v6

    goto :goto_1f3

    :catchall_1ee
    move-exception v0

    move-object v3, v12

    move-object v2, v14

    :goto_1f1
    move-object v14, v2

    move-object v12, v3

    .line 7597
    :goto_1f3
    :try_start_1f3
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7601
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_22c

    .line 7603
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_209

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_209

    .line 7609
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_209

    :catchall_206
    move-exception v0

    move-object v2, v0

    goto :goto_22d

    .line 7615
    :cond_209
    :goto_209
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_224

    .line 7616
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_21c

    .line 7617
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_216

    throw v0

    .line 7618
    :cond_216
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 7619
    :cond_21c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 7620
    :cond_224
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 7621
    :cond_22c
    throw v0
    :try_end_22d
    .catchall {:try_start_1f3 .. :try_end_22d} :catchall_206

    .line 7622
    :goto_22d
    :try_start_22d
    throw v2
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22e

    :catchall_22e
    move-exception v0

    invoke-static {v12, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final L(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m20;

    iget v1, v0, Lads_mobile_sdk/m20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/m20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 553
    iget v2, v0, Lads_mobile_sdk/m20;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/m20;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/m20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 554
    sget-object p1, Lads_mobile_sdk/s00;->y:Lads_mobile_sdk/s00;

    .line 1492
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/m20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/m20;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/m20;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1493
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 1494
    iget-object p1, v0, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_61

    goto :goto_74

    :cond_61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1495
    const-string v0, "limit_ad_tracking"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_6e

    goto :goto_6f

    :cond_6e
    move v3, v1

    :goto_6f
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_74
    :goto_74
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/o20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o20;

    iget v1, v0, Lads_mobile_sdk/o20;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o20;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o20;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 416
    iget v2, v0, Lads_mobile_sdk/o20;->f:I

    const-string v3, "getConsentAllowlist(...)"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v2, :cond_5d

    if-eq v2, v6, :cond_55

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_3e

    if-ne v2, v7, :cond_36

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e3

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-object v2, v0, Lads_mobile_sdk/o20;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iget-object v4, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    :try_start_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_aa

    :catch_48
    move-exception p1

    goto/16 :goto_cf

    .line 417
    :cond_4b
    iget-object v2, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iget-object v3, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    :cond_53
    move-object v3, v2

    goto :goto_98

    :cond_55
    iget-object v2, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iget-object v6, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_82

    :cond_5d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 418
    iget-object p1, p0, Lads_mobile_sdk/g30;->r:Lads_mobile_sdk/xw0;

    check-cast p1, Lads_mobile_sdk/hr;

    .line 419
    iget-object p1, p1, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 420
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/k30;

    .line 422
    invoke-virtual {v2}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iput v6, v0, Lads_mobile_sdk/o20;->f:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/g30;->a(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_81

    goto :goto_e2

    :cond_81
    move-object v6, p0

    .line 424
    :goto_82
    iget-object p1, v6, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    invoke-virtual {v2}, Lads_mobile_sdk/k30;->w()Lads_mobile_sdk/u00;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iput v5, v0, Lads_mobile_sdk/o20;->f:I

    invoke-virtual {p1, v9, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_53

    goto :goto_e2

    .line 427
    :goto_98
    :try_start_98
    iget-object v2, v6, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 1388
    iput-object v6, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    iput-object v3, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iput-object v2, v0, Lads_mobile_sdk/o20;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/o20;->f:I

    invoke-interface {v2, v8, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a6} :catch_cd

    if-ne p1, v1, :cond_a9

    goto :goto_e2

    :cond_a9
    move-object v4, v6

    .line 1389
    :goto_aa
    :try_start_aa
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3}, Lads_mobile_sdk/k30;->x()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {p1, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "fromJson(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1390
    iput-object p1, v4, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;

    .line 1392
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c4
    .catchall {:try_start_aa .. :try_end_c4} :catchall_c8

    .line 2354
    :try_start_c4
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_e3

    :catchall_c8
    move-exception p1

    .line 2355
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cd} :catch_48

    :catch_cd
    move-exception p1

    move-object v4, v6

    .line 2356
    :goto_cf
    const-string v2, "Failed to read the updated in memory consent state"

    invoke-static {v2, p1, v7}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2357
    iput-object v8, v0, Lads_mobile_sdk/o20;->a:Lads_mobile_sdk/g30;

    iput-object v8, v0, Lads_mobile_sdk/o20;->b:Lads_mobile_sdk/k30;

    iput-object v8, v0, Lads_mobile_sdk/o20;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v0, Lads_mobile_sdk/o20;->f:I

    invoke-virtual {v4, v0}, Lads_mobile_sdk/g30;->N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e3

    :goto_e2
    return-object v1

    .line 2359
    :cond_e3
    :goto_e3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/t20;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/t20;

    iget v1, v0, Lads_mobile_sdk/t20;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t20;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t20;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/t20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/t20;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 397
    iget v2, v0, Lads_mobile_sdk/t20;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/t20;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/t20;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 399
    iget-object v2, p0, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 1285
    iput-object p0, v0, Lads_mobile_sdk/t20;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/t20;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/t20;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4f

    goto :goto_6b

    :cond_4f
    move-object v4, p0

    .line 1286
    :goto_50
    :try_start_50
    sget-object p1, Lads_mobile_sdk/g30;->R:Lcom/google/gson/JsonObject;

    iput-object p1, v4, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_6f

    .line 2176
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2177
    iget-object p1, v4, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    invoke-virtual {v4}, Lads_mobile_sdk/g30;->i()Lads_mobile_sdk/u00;

    move-result-object v2

    iput-object v5, v0, Lads_mobile_sdk/t20;->a:Lads_mobile_sdk/g30;

    iput-object v5, v0, Lads_mobile_sdk/t20;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/t20;->e:I

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    :goto_6b
    return-object v1

    .line 2178
    :cond_6c
    :goto_6c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_6f
    move-exception p1

    .line 3066
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/f30;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/f30;

    iget v1, v0, Lads_mobile_sdk/f30;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/f30;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/f30;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/f30;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/f30;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 392
    iget v2, v0, Lads_mobile_sdk/f30;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3e

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1b4

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v2, v0, Lads_mobile_sdk/f30;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/f30;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_3e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lads_mobile_sdk/g30;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 1274
    iput-object p0, v0, Lads_mobile_sdk/f30;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/f30;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/f30;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_51

    goto/16 :goto_1b3

    :cond_51
    move-object v4, p0

    .line 1275
    :goto_52
    :try_start_52
    sget-object p1, Lads_mobile_sdk/g30;->S:Lcom/google/gson/JsonObject;

    iput-object p1, v4, Lads_mobile_sdk/g30;->A:Lcom/google/gson/JsonObject;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_1b7

    .line 2160
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2161
    iget-object p1, v4, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    .line 2162
    invoke-static {}, Lads_mobile_sdk/u00;->z()Lads_mobile_sdk/t00;

    move-result-object v2

    const-string v6, "newBuilder(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2163
    const-string v7, "builder"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2164
    new-instance v8, Lads_mobile_sdk/lo0;

    .line 2165
    invoke-virtual {v2}, Lads_mobile_sdk/t00;->h()Lads_mobile_sdk/yh1$d;

    move-result-object v9

    const-string v10, "getAllowedApisList(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2166
    invoke-direct {v8, v9}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 2167
    iget-object v4, v4, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 2168
    iget-object v4, v4, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 2169
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2278
    invoke-static {}, Lads_mobile_sdk/u00;->z()Lads_mobile_sdk/t00;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2279
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2309
    new-instance v6, Lads_mobile_sdk/w00;

    .line 2310
    invoke-direct {v6, v9}, Lads_mobile_sdk/w00;-><init>(Lads_mobile_sdk/t00;)V

    .line 2311
    invoke-virtual {v6}, Lads_mobile_sdk/w00;->b()Lads_mobile_sdk/lo0;

    move-result-object v7

    sget-object v10, Lads_mobile_sdk/s00;->c:Lads_mobile_sdk/s00;

    .line 2312
    const-string v11, "<this>"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2313
    const-string v7, "value"

    invoke-static {v10, v7, v9, v10, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2314
    sget-object v12, Lads_mobile_sdk/s00;->h:Lads_mobile_sdk/s00;

    .line 2315
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2316
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2317
    sget-object v12, Lads_mobile_sdk/s00;->i:Lads_mobile_sdk/s00;

    .line 2318
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2319
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2320
    sget-object v12, Lads_mobile_sdk/s00;->k:Lads_mobile_sdk/s00;

    .line 2321
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2322
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2323
    sget-object v12, Lads_mobile_sdk/s00;->l:Lads_mobile_sdk/s00;

    .line 2324
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2325
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2326
    sget-object v12, Lads_mobile_sdk/s00;->m:Lads_mobile_sdk/s00;

    .line 2327
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2328
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2329
    sget-object v12, Lads_mobile_sdk/s00;->n:Lads_mobile_sdk/s00;

    .line 2330
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2331
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2332
    sget-object v12, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    .line 2333
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2335
    sget-object v12, Lads_mobile_sdk/s00;->d:Lads_mobile_sdk/s00;

    .line 2336
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2337
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2338
    sget-object v12, Lads_mobile_sdk/s00;->e:Lads_mobile_sdk/s00;

    .line 2339
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2340
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2341
    sget-object v12, Lads_mobile_sdk/s00;->f:Lads_mobile_sdk/s00;

    .line 2342
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2343
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2344
    sget-object v12, Lads_mobile_sdk/s00;->g:Lads_mobile_sdk/s00;

    .line 2345
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2346
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2347
    sget-object v12, Lads_mobile_sdk/s00;->o:Lads_mobile_sdk/s00;

    .line 2348
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2349
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2350
    sget-object v12, Lads_mobile_sdk/s00;->p:Lads_mobile_sdk/s00;

    .line 2351
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2352
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2353
    sget-object v12, Lads_mobile_sdk/s00;->u:Lads_mobile_sdk/s00;

    .line 2354
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2355
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2356
    sget-object v12, Lads_mobile_sdk/s00;->v:Lads_mobile_sdk/s00;

    .line 2357
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2358
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2359
    sget-object v12, Lads_mobile_sdk/s00;->w:Lads_mobile_sdk/s00;

    .line 2360
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2361
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2362
    sget-object v12, Lads_mobile_sdk/s00;->y:Lads_mobile_sdk/s00;

    .line 2363
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2364
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2365
    sget-object v12, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    .line 2366
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    invoke-static {v12, v7, v9, v12, v6}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v10

    .line 2368
    sget-object v12, Lads_mobile_sdk/s00;->D:Lads_mobile_sdk/s00;

    .line 2369
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v9, v12}, Lads_mobile_sdk/t00;->a(Lads_mobile_sdk/s00;)V

    .line 2428
    invoke-virtual {v6}, Lads_mobile_sdk/w00;->a()Lads_mobile_sdk/u00;

    move-result-object v6

    .line 2429
    invoke-virtual {v6}, Lads_mobile_sdk/u00;->x()Lads_mobile_sdk/yh1$c;

    move-result-object v6

    const-string v7, "getAllowedApisValueList(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2430
    const-string v7, "key"

    const-string v9, "gads:consent_allowlist_full_consent:string"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaultValue"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2478
    sget-object v7, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v4, v9, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2488
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_177
    :goto_177
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_191

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2489
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 2490
    invoke-static {v7}, Lads_mobile_sdk/s00;->a(I)Lads_mobile_sdk/s00;

    move-result-object v7

    if-eqz v7, :cond_177

    .line 3300
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_177

    .line 3301
    :cond_191
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "values"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v2, v6}, Lads_mobile_sdk/t00;->a(Ljava/util/ArrayList;)V

    .line 3378
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    const-string v4, "build(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/u00;

    .line 3379
    iput-object v5, v0, Lads_mobile_sdk/f30;->a:Lads_mobile_sdk/g30;

    iput-object v5, v0, Lads_mobile_sdk/f30;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/f30;->e:I

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1b4

    :goto_1b3
    return-object v1

    .line 3380
    :cond_1b4
    :goto_1b4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1b7
    move-exception p1

    .line 4263
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 32054
    instance-of v0, p2, Lads_mobile_sdk/j20;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j20;

    iget v1, v0, Lads_mobile_sdk/j20;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j20;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/j20;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/j20;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32572
    iget v2, v0, Lads_mobile_sdk/j20;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/j20;->a:Lads_mobile_sdk/i01;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32575
    instance-of p2, p1, Lads_mobile_sdk/j01;

    if-eqz p2, :cond_46

    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/j01;

    .line 32576
    iget-object p2, p2, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    .line 32577
    instance-of p2, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_46

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32579
    :cond_46
    invoke-virtual {p0}, Lads_mobile_sdk/g30;->i()Lads_mobile_sdk/u00;

    move-result-object p2

    iput-object p1, v0, Lads_mobile_sdk/j20;->a:Lads_mobile_sdk/i01;

    iput v3, v0, Lads_mobile_sdk/j20;->d:I

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_55

    return-object v1

    :cond_55
    :goto_55
    const/4 p2, 0x0

    .line 32580
    invoke-static {p1, p2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 32581
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 22865
    instance-of v0, p2, Lads_mobile_sdk/d10;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/d10;

    iget v1, v0, Lads_mobile_sdk/d10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d10;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/d10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/d10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23298
    iget v2, v0, Lads_mobile_sdk/d10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lads_mobile_sdk/d10;->b:Lads_mobile_sdk/u00;

    iget-object v0, v0, Lads_mobile_sdk/d10;->a:Lads_mobile_sdk/g30;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23299
    iget-object p2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/d10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/d10;->b:Lads_mobile_sdk/u00;

    iput v3, v0, Lads_mobile_sdk/d10;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_47

    return-object v1

    :cond_47
    move-object v0, p0

    .line 23300
    :goto_48
    check-cast p2, Lads_mobile_sdk/u00;

    .line 23302
    invoke-virtual {p2}, Lads_mobile_sdk/u00;->v()I

    move-result v1

    if-lez v1, :cond_7a

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 23303
    iget-object v1, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/e10;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/e10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 23304
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 23305
    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23563
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 23564
    :cond_7a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lcom/google/gson/JsonElement;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 23565
    instance-of v0, p2, Lads_mobile_sdk/m10;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/m10;

    iget v1, v0, Lads_mobile_sdk/m10;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m10;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m10;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/m10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/m10;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 24482
    iget v2, v0, Lads_mobile_sdk/m10;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5d

    if-eq v2, v5, :cond_51

    if-eq v2, v4, :cond_44

    if-ne v2, v3, :cond_3c

    iget-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    :try_start_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_39

    goto/16 :goto_f9

    :catch_39
    move-exception p1

    goto/16 :goto_112

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24483
    :cond_44
    iget-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    :try_start_4c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_39

    goto/16 :goto_c9

    .line 24484
    :cond_51
    iget-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    :try_start_59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_39

    goto :goto_9b

    .line 24485
    :cond_5d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24487
    :try_start_60
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 24488
    const-string p2, "consent_key"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 24489
    const-string p2, "consent_value_match"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 24490
    const-string v7, "consent_value_type"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 24492
    sget-object v7, Lads_mobile_sdk/o30;->b:Lads_mobile_sdk/o30;

    if-nez p1, :cond_b2

    .line 24493
    iget-object p1, p0, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 25246
    iput-object p0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/m10;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_96} :catch_b0

    if-ne v0, v1, :cond_99

    goto :goto_f6

    :cond_99
    move-object v0, p0

    move-object v1, p2

    .line 25247
    :goto_9b
    :try_start_9b
    iget-object p2, v0, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_ab

    .line 26003
    :try_start_a5
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move v5, p2

    goto/16 :goto_11b

    :catchall_ab
    move-exception p2

    .line 26004
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b0} :catch_39

    :catch_b0
    move-exception p1

    goto :goto_10e

    :cond_b2
    if-ne p1, v5, :cond_e2

    .line 26005
    :try_start_b4
    iget-object p1, p0, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 26764
    iput-object p0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/m10;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c4} :catch_b0

    if-ne v0, v1, :cond_c7

    goto :goto_f6

    :cond_c7
    move-object v0, p0

    move-object v1, p2

    .line 26765
    :goto_c9
    :try_start_c9
    iget-object p2, v0, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_dd

    .line 27528
    :try_start_d0
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 27529
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_110

    goto :goto_11b

    :catchall_dd
    move-exception p2

    .line 28291
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e2} :catch_39

    :cond_e2
    if-ne p1, v4, :cond_110

    .line 28292
    :try_start_e4
    iget-object p1, p0, Lads_mobile_sdk/g30;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 29058
    iput-object p0, v0, Lads_mobile_sdk/m10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/m10;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/m10;->c:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/m10;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/m10;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f4} :catch_b0

    if-ne v0, v1, :cond_f7

    :goto_f6
    return-object v1

    :cond_f7
    move-object v0, p0

    move-object v1, p2

    .line 29059
    :goto_f9
    :try_start_f9
    iget-object p2, v0, Lads_mobile_sdk/g30;->y:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_109

    .line 29829
    :try_start_ff
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 29830
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p2, p1, :cond_110

    goto :goto_11b

    :catchall_109
    move-exception p2

    .line 30599
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10e} :catch_39

    :goto_10e
    move-object v0, p0

    goto :goto_112

    :cond_110
    const/4 v5, 0x0

    goto :goto_11b

    .line 30600
    :goto_112
    iget-object p2, v0, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 30601
    check-cast p2, Lads_mobile_sdk/as3;

    const-string v0, "Error while parsing JSON shared preference key match object"

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30606
    :goto_11b
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 31518
    instance-of v0, p2, Lads_mobile_sdk/i20;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/i20;

    iget v1, v0, Lads_mobile_sdk/i20;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i20;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/i20;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/i20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/i20;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32045
    iget v2, v0, Lads_mobile_sdk/i20;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/i20;->a:Ljava/lang/Exception;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32046
    invoke-virtual {p0}, Lads_mobile_sdk/g30;->i()Lads_mobile_sdk/u00;

    move-result-object p2

    iput-object p1, v0, Lads_mobile_sdk/i20;->a:Ljava/lang/Exception;

    iput v3, v0, Lads_mobile_sdk/i20;->d:I

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_45

    return-object v1

    .line 32047
    :cond_45
    :goto_45
    const-string p2, "exception"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32048
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 32051
    invoke-virtual {p2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lads_mobile_sdk/uj2;->m:Z

    if-eqz p1, :cond_5a

    .line 32052
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 32053
    :cond_5a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lcom/google/gson/JsonElement;Landroid/os/Bundle;)V
    .registers 9

    .line 30607
    const-string v0, "JSON shared preference consent key object parsing failure"

    const-string v1, "preferences"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "consentStringElement"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bundle"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31478
    :try_start_11
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 31479
    const-string v1, "bk"

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :catch_23
    move-exception p1

    goto/16 :goto_b0

    :catch_26
    move-exception p1

    goto/16 :goto_b8

    :catch_29
    move-exception p1

    goto/16 :goto_c0

    :cond_2c
    move-object v1, v2

    .line 31481
    :goto_2d
    const-string v3, "sk"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    .line 31482
    :goto_3b
    const-string v4, "type"

    invoke-virtual {p2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_4b

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 31484
    :cond_4b
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31486
    sget-object p2, Lads_mobile_sdk/o30;->b:Lads_mobile_sdk/o30;

    if-nez v2, :cond_54

    goto :goto_64

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_64

    .line 31487
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_c7

    .line 31488
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_64
    :goto_64
    if-nez v2, :cond_67

    goto :goto_98

    .line 31490
    :cond_67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_98

    .line 31492
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_7c

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 31493
    :cond_7c
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_8a

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 31494
    :cond_8a
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_c7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_98
    :goto_98
    if-nez v2, :cond_9b

    goto :goto_c7

    .line 31496
    :cond_9b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_c7

    .line 31497
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_c7

    .line 31498
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_af
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_af} :catch_29
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_af} :catch_26
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_af} :catch_23

    return-void

    .line 31512
    :goto_b0
    iget-object p2, p0, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 31513
    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c7

    .line 31514
    :goto_b8
    iget-object p2, p0, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 31515
    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c7

    .line 31516
    :goto_c0
    iget-object p2, p0, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    .line 31517
    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public final b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 4644
    instance-of v0, p2, Lads_mobile_sdk/y20;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/y20;

    iget v1, v0, Lads_mobile_sdk/y20;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y20;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/y20;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/y20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/y20;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4823
    iget v2, v0, Lads_mobile_sdk/y20;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4b

    if-eq v2, v7, :cond_45

    if-eq v2, v6, :cond_41

    if-eq v2, v5, :cond_3b

    if-ne v2, v4, :cond_33

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_76

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_96

    :cond_45
    iget-object p1, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_87

    :cond_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4824
    iget-object p2, p0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 4825
    iget-boolean v2, p2, Lads_mobile_sdk/ex0;->w:Z

    if-nez v2, :cond_79

    .line 4826
    iget-wide v8, p2, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v10, 0x0

    cmpl-double p2, v8, v10

    if-lez p2, :cond_5d

    goto :goto_79

    .line 4827
    :cond_5d
    iget-object p2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    iput v5, v0, Lads_mobile_sdk/y20;->d:I

    invoke-virtual {p2, p1, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6a

    goto :goto_95

    :cond_6a
    move-object p1, p0

    .line 4828
    :goto_6b
    iput-object v3, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    iput v4, v0, Lads_mobile_sdk/y20;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/g30;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_76

    goto :goto_95

    .line 4830
    :cond_76
    :goto_76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4831
    :cond_79
    :goto_79
    iget-object p2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    iput v7, v0, Lads_mobile_sdk/y20;->d:I

    invoke-virtual {p2, p1, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_86

    goto :goto_95

    :cond_86
    move-object p1, p0

    .line 4832
    :goto_87
    iput-object v3, v0, Lads_mobile_sdk/y20;->a:Lads_mobile_sdk/g30;

    iput v6, v0, Lads_mobile_sdk/y20;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 4833
    invoke-static {p1, v7, p2, v0}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/g30;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_96

    :goto_95
    return-object v1

    .line 4834
    :cond_96
    :goto_96
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 7324
    instance-of v3, v2, Lads_mobile_sdk/b30;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/b30;

    iget v4, v3, Lads_mobile_sdk/b30;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/b30;->g:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/b30;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/b30;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/b30;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 7811
    iget v5, v3, Lads_mobile_sdk/b30;->g:I

    const-string v6, "The allowlist is not a valid encoded string."

    const-string v7, "Allowlist proto deserialization failed."

    const-string v8, "parseFrom(...)"

    const-string v9, "allowlist"

    const-string v10, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    packed-switch v5, :pswitch_data_3c4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    iget-object v0, v3, Lads_mobile_sdk/b30;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_49
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_51

    const/4 v7, 0x0

    :goto_4d
    move-object v2, v0

    const/4 v0, 0x0

    goto/16 :goto_32a

    :catchall_51
    move-exception v0

    goto/16 :goto_37e

    .line 7812
    :pswitch_54
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/np1;

    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_5f
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_51

    :goto_62
    const/4 v2, 0x4

    goto/16 :goto_351

    .line 7813
    :pswitch_65
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/g30;

    :try_start_74
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_77
    .catch Lads_mobile_sdk/np1; {:try_start_74 .. :try_end_77} :catch_7e
    .catchall {:try_start_74 .. :try_end_77} :catchall_79

    goto/16 :goto_30f

    :catchall_79
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_37e

    :catch_7e
    move-exception v0

    goto/16 :goto_33c

    .line 7814
    :pswitch_81
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/IllegalArgumentException;

    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_8c
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_51

    move-object v2, v6

    :goto_90
    const/4 v3, 0x4

    goto/16 :goto_374

    .line 7815
    :pswitch_93
    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_9a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_51

    goto/16 :goto_2da

    .line 7816
    :pswitch_9f
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    move-object v14, v0

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/g30;

    :try_start_ad
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b6

    move-object v11, v0

    move-object v0, v2

    move-object v2, v6

    move-object v6, v14

    goto/16 :goto_2bd

    :catchall_b6
    move-exception v0

    goto/16 :goto_383

    .line 7817
    :pswitch_b9
    iget-object v0, v3, Lads_mobile_sdk/b30;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g30;

    :try_start_c7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cf

    const/4 v7, 0x0

    :goto_cb
    move-object v2, v0

    const/4 v0, 0x0

    goto/16 :goto_1f8

    :catchall_cf
    move-exception v0

    goto/16 :goto_24e

    .line 7818
    :pswitch_d2
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/np1;

    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_dd
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_cf

    :goto_e0
    const/4 v2, 0x4

    goto/16 :goto_21f

    .line 7819
    :pswitch_e3
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/g30;

    :try_start_f2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f5
    .catch Lads_mobile_sdk/np1; {:try_start_f2 .. :try_end_f5} :catch_fc
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f7

    goto/16 :goto_1dd

    :catchall_f7
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_24e

    :catch_fc
    move-exception v0

    goto/16 :goto_20a

    .line 7820
    :pswitch_ff
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/IllegalArgumentException;

    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v3, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_10a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_cf

    move-object v2, v6

    :goto_10e
    const/4 v3, 0x4

    goto/16 :goto_244

    .line 7821
    :pswitch_111
    iget-object v4, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_118
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_cf

    goto/16 :goto_1a8

    .line 7822
    :pswitch_11d
    iget-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    move-object v14, v0

    check-cast v14, Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/g30;

    :try_start_12b
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_133

    move-object v11, v0

    move-object/from16 v16, v6

    move-object v6, v14

    goto :goto_18c

    :catchall_133
    move-exception v0

    goto/16 :goto_253

    .line 7823
    :pswitch_136
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7824
    iget-object v2, v1, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->v0:Lads_mobile_sdk/s11;

    .line 8732
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 8733
    new-instance v15, Lads_mobile_sdk/ks3;

    .line 8734
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    .line 8735
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    .line 8736
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v16, v6

    .line 8737
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 8738
    invoke-direct {v15, v11, v12, v13, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 8739
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 8740
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v11, 0x1

    const-string v12, "toJson(...)"

    const-string v13, "google.afma.request.updateConsentAllowlist"

    if-nez v6, :cond_293

    .line 8741
    invoke-static {v2, v5, v14, v15}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 8742
    :try_start_16d
    iget-object v2, v1, Lads_mobile_sdk/g30;->e:Lads_mobile_sdk/jb3;

    .line 8743
    iget-object v6, v1, Lads_mobile_sdk/g30;->g:Lcom/google/gson/Gson;

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    iput v11, v3, Lads_mobile_sdk/b30;->g:I

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-virtual {v2, v13, v0, v3}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_186
    .catchall {:try_start_16d .. :try_end_186} :catchall_251

    if-ne v2, v4, :cond_18a

    goto/16 :goto_36f

    :cond_18a
    move-object v11, v1

    move-object v6, v5

    .line 8744
    :goto_18c
    :try_start_18c
    check-cast v2, Lads_mobile_sdk/v01;

    .line 9659
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1af

    check-cast v2, Lads_mobile_sdk/i01;

    .line 9660
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    const/4 v7, 0x0

    iput-object v7, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v2, v3}, Lads_mobile_sdk/g30;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a2
    .catchall {:try_start_18c .. :try_end_1a2} :catchall_229

    if-ne v0, v4, :cond_1a6

    goto/16 :goto_36f

    :cond_1a6
    move-object v4, v5

    move-object v5, v6

    .line 9661
    :goto_1a8
    :try_start_1a8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1aa
    .catchall {:try_start_1a8 .. :try_end_1aa} :catchall_cf

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 10570
    :cond_1af
    :try_start_1af
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 10571
    iget-object v0, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 10572
    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_1b8
    .catchall {:try_start_1af .. :try_end_1b8} :catchall_229

    .line 10579
    :try_start_1b8
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64Url()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    .line 10580
    invoke-static {v0, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0
    :try_end_1c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b8 .. :try_end_1c4} :catch_22c
    .catchall {:try_start_1b8 .. :try_end_1c4} :catchall_229

    .line 10588
    :try_start_1c4
    invoke-static {v0}, Lads_mobile_sdk/u00;->a([B)Lads_mobile_sdk/u00;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v0, v3}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d8
    .catch Lads_mobile_sdk/np1; {:try_start_1c4 .. :try_end_1d8} :catch_208
    .catchall {:try_start_1c4 .. :try_end_1d8} :catchall_229

    if-ne v0, v4, :cond_1dc

    goto/16 :goto_36f

    :cond_1dc
    move-object v8, v11

    .line 10595
    :goto_1dd
    :try_start_1dd
    iget-object v0, v8, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 11489
    iput-object v8, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/b30;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v2, 0x6

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    const/4 v7, 0x0

    invoke-interface {v0, v7, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1ef
    .catchall {:try_start_1dd .. :try_end_1ef} :catchall_f7

    if-ne v2, v4, :cond_1f3

    goto/16 :goto_36f

    :cond_1f3
    move-object v4, v5

    move-object v5, v6

    move-object v3, v8

    goto/16 :goto_cb

    .line 11490
    :goto_1f8
    :try_start_1f8
    iput-boolean v0, v3, Lads_mobile_sdk/g30;->I:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1fc
    .catchall {:try_start_1f8 .. :try_end_1fc} :catchall_203

    .line 12388
    :try_start_1fc
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1ff
    .catchall {:try_start_1fc .. :try_end_1ff} :catchall_cf

    .line 12393
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_203
    move-exception v0

    .line 12407
    :try_start_204
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_208
    .catchall {:try_start_204 .. :try_end_208} :catchall_cf

    :catch_208
    move-exception v0

    move-object v8, v11

    .line 12408
    :goto_20a
    :try_start_20a
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v8, v0, v3}, Lads_mobile_sdk/g30;->a(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_217
    .catchall {:try_start_20a .. :try_end_217} :catchall_229

    if-ne v2, v4, :cond_21b

    goto/16 :goto_36f

    :cond_21b
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e0

    .line 12409
    :goto_21f
    :try_start_21f
    invoke-static {v7, v0, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 12410
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_224
    .catchall {:try_start_21f .. :try_end_224} :catchall_cf

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_229
    move-exception v0

    move-object v14, v6

    goto :goto_253

    :catch_22c
    move-exception v0

    .line 12411
    :try_start_22d
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v0, v3}, Lads_mobile_sdk/g30;->a(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23a
    .catchall {:try_start_22d .. :try_end_23a} :catchall_229

    if-ne v2, v4, :cond_23e

    goto/16 :goto_36f

    :cond_23e
    move-object v4, v5

    move-object v5, v6

    move-object/from16 v2, v16

    goto/16 :goto_10e

    .line 12412
    :goto_244
    :try_start_244
    invoke-static {v2, v0, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 12413
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_249
    .catchall {:try_start_244 .. :try_end_249} :catchall_cf

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_24e
    move-object v14, v5

    move-object v5, v4

    goto :goto_253

    :catchall_251
    move-exception v0

    move-object v14, v5

    .line 13329
    :goto_253
    :try_start_253
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 13333
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_28c

    .line 13335
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_269

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_269

    .line 13341
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_269

    :catchall_266
    move-exception v0

    move-object v2, v0

    goto :goto_28d

    .line 13347
    :cond_269
    :goto_269
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_284

    .line 13348
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_27c

    .line 13349
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_276

    throw v0

    .line 13350
    :cond_276
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 13351
    :cond_27c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 13352
    :cond_284
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 13353
    :cond_28c
    throw v0
    :try_end_28d
    .catchall {:try_start_253 .. :try_end_28d} :catchall_266

    .line 13354
    :goto_28d
    :try_start_28d
    throw v2
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_28e

    :catchall_28e
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_293
    move-object/from16 v2, v16

    .line 13401
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 13402
    :try_start_29d
    iget-object v6, v1, Lads_mobile_sdk/g30;->e:Lads_mobile_sdk/jb3;

    .line 13403
    iget-object v11, v1, Lads_mobile_sdk/g30;->g:Lcom/google/gson/Gson;

    invoke-virtual {v11, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/4 v11, 0x7

    iput v11, v3, Lads_mobile_sdk/b30;->g:I

    check-cast v6, Lads_mobile_sdk/rp0;

    invoke-virtual {v6, v13, v0, v3}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b7
    .catchall {:try_start_29d .. :try_end_2b7} :catchall_381

    if-ne v0, v4, :cond_2bb

    goto/16 :goto_36f

    :cond_2bb
    move-object v11, v1

    move-object v6, v5

    .line 13404
    :goto_2bd
    :try_start_2bd
    check-cast v0, Lads_mobile_sdk/v01;

    .line 14319
    instance-of v12, v0, Lads_mobile_sdk/i01;

    if-eqz v12, :cond_2e1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 14320
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    const/4 v7, 0x0

    iput-object v7, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v0, v3}, Lads_mobile_sdk/g30;->a(Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d4
    .catchall {:try_start_2bd .. :try_end_2d4} :catchall_35b

    if-ne v0, v4, :cond_2d8

    goto/16 :goto_36f

    :cond_2d8
    move-object v4, v5

    move-object v5, v6

    .line 14321
    :goto_2da
    :try_start_2da
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2dc
    .catchall {:try_start_2da .. :try_end_2dc} :catchall_51

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 15230
    :cond_2e1
    :try_start_2e1
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 15231
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 15232
    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_2ea
    .catchall {:try_start_2e1 .. :try_end_2ea} :catchall_35b

    .line 15239
    :try_start_2ea
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64Url()Lcom/google/common/io/BaseEncoding;

    move-result-object v10

    .line 15240
    invoke-static {v0, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0
    :try_end_2f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ea .. :try_end_2f6} :catch_35e
    .catchall {:try_start_2ea .. :try_end_2f6} :catchall_35b

    .line 15248
    :try_start_2f6
    invoke-static {v0}, Lads_mobile_sdk/u00;->a([B)Lads_mobile_sdk/u00;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/16 v2, 0xa

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v0, v3}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30b
    .catch Lads_mobile_sdk/np1; {:try_start_2f6 .. :try_end_30b} :catch_33a
    .catchall {:try_start_2f6 .. :try_end_30b} :catchall_35b

    if-ne v0, v4, :cond_30e

    goto :goto_36f

    :cond_30e
    move-object v8, v11

    .line 15255
    :goto_30f
    :try_start_30f
    iget-object v0, v8, Lads_mobile_sdk/g30;->G:Lkotlinx/coroutines/sync/Mutex;

    .line 16149
    iput-object v8, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v5, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/b30;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 v2, 0xc

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    const/4 v7, 0x0

    invoke-interface {v0, v7, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_322
    .catchall {:try_start_30f .. :try_end_322} :catchall_79

    if-ne v2, v4, :cond_325

    goto :goto_36f

    :cond_325
    move-object v4, v5

    move-object v5, v6

    move-object v3, v8

    goto/16 :goto_4d

    .line 16150
    :goto_32a
    :try_start_32a
    iput-boolean v0, v3, Lads_mobile_sdk/g30;->I:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32e
    .catchall {:try_start_32a .. :try_end_32e} :catchall_335

    .line 17048
    :try_start_32e
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_331
    .catchall {:try_start_32e .. :try_end_331} :catchall_51

    .line 17090
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_335
    move-exception v0

    .line 17091
    :try_start_336
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_33a
    .catchall {:try_start_336 .. :try_end_33a} :catchall_51

    :catch_33a
    move-exception v0

    move-object v8, v11

    .line 17092
    :goto_33c
    :try_start_33c
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v8, v0, v3}, Lads_mobile_sdk/g30;->a(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_34a
    .catchall {:try_start_33c .. :try_end_34a} :catchall_35b

    if-ne v2, v4, :cond_34d

    goto :goto_36f

    :cond_34d
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_62

    .line 17093
    :goto_351
    :try_start_351
    invoke-static {v7, v0, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17094
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_356
    .catchall {:try_start_351 .. :try_end_356} :catchall_51

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_35b
    move-exception v0

    move-object v14, v6

    goto :goto_383

    :catch_35e
    move-exception v0

    .line 17095
    :try_start_35f
    iput-object v6, v3, Lads_mobile_sdk/b30;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/b30;->b:Ljava/io/Closeable;

    iput-object v0, v3, Lads_mobile_sdk/b30;->c:Ljava/lang/Object;

    const/16 v7, 0x9

    iput v7, v3, Lads_mobile_sdk/b30;->g:I

    invoke-virtual {v11, v0, v3}, Lads_mobile_sdk/g30;->a(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_36d
    .catchall {:try_start_35f .. :try_end_36d} :catchall_35b

    if-ne v3, v4, :cond_370

    :goto_36f
    return-object v4

    :cond_370
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_90

    .line 17096
    :goto_374
    :try_start_374
    invoke-static {v2, v0, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17097
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_379
    .catchall {:try_start_374 .. :try_end_379} :catchall_51

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_37e
    move-object v14, v5

    move-object v5, v4

    goto :goto_383

    :catchall_381
    move-exception v0

    move-object v14, v5

    .line 18050
    :goto_383
    :try_start_383
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 18054
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_3bc

    .line 18056
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_399

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_399

    .line 18062
    invoke-virtual {v14, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_399

    :catchall_396
    move-exception v0

    move-object v2, v0

    goto :goto_3bd

    .line 18068
    :cond_399
    :goto_399
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_3b4

    .line 18069
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3ac

    .line 18070
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_3a6

    throw v0

    .line 18071
    :cond_3a6
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 18072
    :cond_3ac
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 18073
    :cond_3b4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 18074
    :cond_3bc
    throw v0
    :try_end_3bd
    .catchall {:try_start_383 .. :try_end_3bd} :catchall_396

    .line 18075
    :goto_3bd
    :try_start_3bd
    throw v2
    :try_end_3be
    .catchall {:try_start_3bd .. :try_end_3be} :catchall_3be

    :catchall_3be
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_3c4
    .packed-switch 0x0
        :pswitch_136
        :pswitch_11d
        :pswitch_111
        :pswitch_ff
        :pswitch_e3
        :pswitch_d2
        :pswitch_b9
        :pswitch_9f
        :pswitch_93
        :pswitch_81
        :pswitch_65
        :pswitch_54
        :pswitch_3b
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 4835
    instance-of v0, p2, Lads_mobile_sdk/z20;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/z20;

    iget v1, v0, Lads_mobile_sdk/z20;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z20;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/z20;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/z20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/z20;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5532
    iget v2, v0, Lads_mobile_sdk/z20;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lads_mobile_sdk/z20;->c:Lads_mobile_sdk/s00;

    iget-object v1, v0, Lads_mobile_sdk/z20;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/z20;->a:Lads_mobile_sdk/g30;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5533
    sget-object p2, Lads_mobile_sdk/s00;->i:Lads_mobile_sdk/s00;

    .line 6426
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/z20;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/z20;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/z20;->c:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/z20;->f:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4d

    return-object v1

    :cond_4d
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    .line 6427
    :goto_51
    check-cast p2, Lads_mobile_sdk/u00;

    invoke-virtual {p2}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 6428
    iget-object p1, v0, Lads_mobile_sdk/g30;->D:Landroid/webkit/CookieManager;

    if-eqz p1, :cond_6a

    iget-object p2, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Lads_mobile_sdk/ex0;->Q0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 7323
    :cond_6a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    .line 970
    iget-object v0, p0, Lads_mobile_sdk/g30;->p:Lads_mobile_sdk/f13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v0

    .line 972
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lads_mobile_sdk/u00;
    .registers 10

    .line 1640
    invoke-static {}, Lads_mobile_sdk/u00;->z()Lads_mobile_sdk/t00;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1641
    const-string v2, "builder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 1643
    invoke-virtual {v0}, Lads_mobile_sdk/t00;->h()Lads_mobile_sdk/yh1$d;

    move-result-object v4

    const-string v5, "getAllowedApisList(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    invoke-direct {v3, v4}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 1645
    iget-object v4, p0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 1646
    iget-object v4, v4, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 1647
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1807
    invoke-static {}, Lads_mobile_sdk/u00;->z()Lads_mobile_sdk/t00;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1808
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1838
    new-instance v1, Lads_mobile_sdk/w00;

    .line 1839
    invoke-direct {v1, v5}, Lads_mobile_sdk/w00;-><init>(Lads_mobile_sdk/t00;)V

    .line 1840
    invoke-virtual {v1}, Lads_mobile_sdk/w00;->b()Lads_mobile_sdk/lo0;

    move-result-object v2

    sget-object v6, Lads_mobile_sdk/s00;->c:Lads_mobile_sdk/s00;

    .line 1841
    const-string v7, "<this>"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1842
    const-string v2, "value"

    invoke-static {v6, v2, v5, v6, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1843
    sget-object v8, Lads_mobile_sdk/s00;->d:Lads_mobile_sdk/s00;

    .line 1844
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1845
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1846
    sget-object v8, Lads_mobile_sdk/s00;->e:Lads_mobile_sdk/s00;

    .line 1847
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1848
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1849
    sget-object v8, Lads_mobile_sdk/s00;->f:Lads_mobile_sdk/s00;

    .line 1850
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1852
    sget-object v8, Lads_mobile_sdk/s00;->j:Lads_mobile_sdk/s00;

    .line 1853
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1854
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1855
    sget-object v8, Lads_mobile_sdk/s00;->l:Lads_mobile_sdk/s00;

    .line 1856
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1857
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1858
    sget-object v8, Lads_mobile_sdk/s00;->m:Lads_mobile_sdk/s00;

    .line 1859
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1860
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1861
    sget-object v8, Lads_mobile_sdk/s00;->n:Lads_mobile_sdk/s00;

    .line 1862
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1863
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1864
    sget-object v8, Lads_mobile_sdk/s00;->q:Lads_mobile_sdk/s00;

    .line 1865
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1866
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1867
    sget-object v8, Lads_mobile_sdk/s00;->r:Lads_mobile_sdk/s00;

    .line 1868
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1870
    sget-object v8, Lads_mobile_sdk/s00;->u:Lads_mobile_sdk/s00;

    .line 1871
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1872
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1873
    sget-object v8, Lads_mobile_sdk/s00;->v:Lads_mobile_sdk/s00;

    .line 1874
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v5, v8}, Lads_mobile_sdk/t00;->a(Lads_mobile_sdk/s00;)V

    .line 1933
    invoke-virtual {v1}, Lads_mobile_sdk/w00;->b()Lads_mobile_sdk/lo0;

    move-result-object v6

    sget-object v8, Lads_mobile_sdk/s00;->w:Lads_mobile_sdk/s00;

    .line 1934
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1935
    invoke-static {v8, v2, v5, v8, v1}, Lads_mobile_sdk/b10;->a(Lads_mobile_sdk/s00;Ljava/lang/String;Lads_mobile_sdk/t00;Lads_mobile_sdk/s00;Lads_mobile_sdk/w00;)Lads_mobile_sdk/lo0;

    move-result-object v6

    .line 1936
    sget-object v8, Lads_mobile_sdk/s00;->A:Lads_mobile_sdk/s00;

    .line 1937
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v5, v8}, Lads_mobile_sdk/t00;->a(Lads_mobile_sdk/s00;)V

    .line 1996
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2139
    invoke-virtual {v1}, Lads_mobile_sdk/w00;->a()Lads_mobile_sdk/u00;

    move-result-object v1

    .line 2140
    invoke-virtual {v1}, Lads_mobile_sdk/u00;->x()Lads_mobile_sdk/yh1$c;

    move-result-object v1

    const-string v2, "getAllowedApisValueList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2141
    const-string v2, "key"

    const-string v5, "gads:consent_allowlist_default:string"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2189
    sget-object v2, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v4, v5, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ec
    :goto_ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2200
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2201
    invoke-static {v4}, Lads_mobile_sdk/s00;->a(I)Lads_mobile_sdk/s00;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 3002
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 3003
    :cond_106
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "values"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, v2}, Lads_mobile_sdk/t00;->a(Ljava/util/ArrayList;)V

    .line 3080
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/u00;

    return-object v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    .line 1
    const-string v1, "sharedPreferences"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    iget-object v1, v0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 978
    iget-object v1, v1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 979
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    const-string v18, "IABConsent_ParsedVendorConsents"

    const-string v19, "UMP_eids"

    const-string v2, "IABTCF_AddtlConsent"

    const-string v3, "IABConsent_CMPPresent"

    const-string v4, "IABTCF_CmpSdkID"

    const-string v5, "IABConsent_ConsentString"

    const-string v6, "IABTCF_gdprApplies"

    const-string v7, "IABGPP_HDR_GppString"

    const-string v8, "IABGPP_GppSID"

    const-string v9, "gad_has_consent_for_cookies"

    const-string v10, "IABConsent_ParsedPurposeConsents"

    const-string v11, "personalized_ad_status"

    const-string v12, "IABTCF_PolicyVersion"

    const-string v13, "IABUSPrivacy_String"

    const-string v14, "IABTCF_PurposeConsents"

    const-string v15, "gad_rdp"

    const-string v16, "IABConsent_SubjectToGDPR"

    const-string v17, "IABTCF_TCString"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1001
    const-string v3, "key"

    const-string v4, "gads:sp:consent_keys_list"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    sget-object v3, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, p2

    .line 1047
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1048
    iget-object v2, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/n20;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lads_mobile_sdk/n20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 1049
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1050
    const-string v5, "<this>"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_7d
    return-void
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/g30;->n(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c10;

    iget v1, v0, Lads_mobile_sdk/c10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/c10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 380
    iget v2, v0, Lads_mobile_sdk/c10;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v4, :cond_30

    iget-object v2, v0, Lads_mobile_sdk/c10;->b:Ljava/util/Iterator;

    iget-object v5, v0, Lads_mobile_sdk/c10;->a:Lads_mobile_sdk/g30;

    :try_start_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_87

    :catch_2e
    move-exception p1

    goto :goto_97

    .line 381
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    :try_start_3b
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lads_mobile_sdk/g30;->h:Lads_mobile_sdk/ex0;

    .line 385
    iget-object v2, v2, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 386
    invoke-virtual {v2}, Lads_mobile_sdk/x00;->a()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/google/gson/JsonArray;

    invoke-virtual {p1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    .line 387
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1269
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_65

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    move-object v5, p0

    :cond_61
    move p1, v3

    goto :goto_90

    :catch_63
    move-exception p1

    goto :goto_96

    .line 1270
    :cond_65
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_69
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3b .. :try_end_69} :catch_63

    move-object v5, p0

    move-object v2, p1

    :cond_6b
    :try_start_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1271
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v5, v0, Lads_mobile_sdk/c10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/c10;->b:Ljava/util/Iterator;

    iput v4, v0, Lads_mobile_sdk/c10;->e:I

    invoke-virtual {v5, p1, v0}, Lads_mobile_sdk/g30;->a(Lcom/google/gson/JsonElement;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_87

    return-object v1

    .line 1272
    :cond_87
    :goto_87
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6b

    move p1, v4

    :goto_90
    xor-int/2addr p1, v4

    .line 2156
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_95
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6b .. :try_end_95} :catch_2e

    return-object p1

    :goto_96
    move-object v5, p0

    .line 2157
    :goto_97
    iget-object v0, v5, Lads_mobile_sdk/g30;->f:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "JSON fallback consent keys set parsing failure"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2158
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/f10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/f10;

    iget v1, v0, Lads_mobile_sdk/f10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/f10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/f10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/f10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/f10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 818
    iget v2, v0, Lads_mobile_sdk/f10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/f10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/f10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 819
    sget-object p1, Lads_mobile_sdk/s00;->A:Lads_mobile_sdk/s00;

    .line 1632
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/f10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/f10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/f10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1633
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1634
    iget-object v1, v0, Lads_mobile_sdk/g30;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/g10;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/g10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 1635
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1636
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1895
    :cond_7d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/h10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/h10;

    iget v1, v0, Lads_mobile_sdk/h10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/h10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/h10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/h10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 826
    iget v2, v0, Lads_mobile_sdk/h10;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lads_mobile_sdk/h10;->b:Lads_mobile_sdk/s00;

    iget-object v4, v0, Lads_mobile_sdk/h10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 827
    sget-object v2, Lads_mobile_sdk/s00;->E:Lads_mobile_sdk/s00;

    .line 1636
    iget-object p1, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/h10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/h10;->b:Lads_mobile_sdk/s00;

    iput v4, v0, Lads_mobile_sdk/h10;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_6f

    :cond_50
    move-object v4, p0

    .line 1637
    :goto_51
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1638
    iget-object p1, v4, Lads_mobile_sdk/g30;->w:Lads_mobile_sdk/dq0;

    const/4 v2, 0x0

    iput-object v2, v0, Lads_mobile_sdk/h10;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/h10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/h10;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    invoke-static {p1, v0}, Lads_mobile_sdk/dq0;->a(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_70

    :goto_6f
    return-object v1

    .line 1640
    :cond_70
    :goto_70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/i10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i10;

    iget v1, v0, Lads_mobile_sdk/i10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/i10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/i10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/i10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 672
    iget v2, v0, Lads_mobile_sdk/i10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/i10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/i10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 673
    sget-object p1, Lads_mobile_sdk/s00;->q:Lads_mobile_sdk/s00;

    .line 1576
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/i10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/i10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/i10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1577
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 1578
    iget-object p1, v0, Lads_mobile_sdk/g30;->l:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Lads_mobile_sdk/fi2;->a()V

    .line 2483
    :cond_5d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/j10;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/j10;

    iget v1, v0, Lads_mobile_sdk/j10;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j10;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/j10;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/j10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/j10;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 686
    iget v2, v0, Lads_mobile_sdk/j10;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/j10;->b:Lads_mobile_sdk/s00;

    iget-object v0, v0, Lads_mobile_sdk/j10;->a:Lads_mobile_sdk/g30;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 687
    sget-object p1, Lads_mobile_sdk/s00;->r:Lads_mobile_sdk/s00;

    .line 1584
    iget-object v2, p0, Lads_mobile_sdk/g30;->B:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/j10;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/j10;->b:Lads_mobile_sdk/s00;

    iput v3, v0, Lads_mobile_sdk/j10;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_49

    return-object v1

    :cond_49
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 1585
    :goto_4c
    check-cast p1, Lads_mobile_sdk/u00;

    invoke-virtual {p1}, Lads_mobile_sdk/u00;->w()Lads_mobile_sdk/yh1$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 1586
    iget-object p1, v0, Lads_mobile_sdk/g30;->l:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Lads_mobile_sdk/fi2;->b()V

    .line 2485
    :cond_5d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
