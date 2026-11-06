###### Class ads_mobile_sdk.ni (ads_mobile_sdk.ni)
.class public final Lads_mobile_sdk/ni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/g30;

.field public final d:Lads_mobile_sdk/uv;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/ao0;

.field public final g:Lads_mobile_sdk/zw3;

.field public final h:Lads_mobile_sdk/qn;

.field public final i:Lads_mobile_sdk/cn0;

.field public final j:Lads_mobile_sdk/e11;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ja1;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tx;Lads_mobile_sdk/g30;Lads_mobile_sdk/uv;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ao0;Lads_mobile_sdk/zw3;Lads_mobile_sdk/qn;Lads_mobile_sdk/cn0;)V
    .registers 14

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersionString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariationsProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTierManager"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    .line 50
    iput-object p5, p0, Lads_mobile_sdk/ni;->b:Lads_mobile_sdk/tx;

    .line 51
    iput-object p6, p0, Lads_mobile_sdk/ni;->c:Lads_mobile_sdk/g30;

    .line 52
    iput-object p7, p0, Lads_mobile_sdk/ni;->d:Lads_mobile_sdk/uv;

    .line 53
    iput-object p8, p0, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    .line 54
    iput-object p9, p0, Lads_mobile_sdk/ni;->f:Lads_mobile_sdk/ao0;

    .line 55
    iput-object p10, p0, Lads_mobile_sdk/ni;->g:Lads_mobile_sdk/zw3;

    .line 56
    iput-object p11, p0, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 57
    iput-object p12, p0, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 60
    invoke-virtual {p0}, Lads_mobile_sdk/ni;->a()Landroid/graphics/Rect;

    move-result-object p5

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    const-string p7, ""

    if-eqz p6, :cond_6d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    const/16 p9, 0x80

    invoke-virtual {p6, p8, p9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p6

    if-eqz p6, :cond_6d

    iget-object p6, p6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p6, :cond_6e

    :cond_6d
    move-object p6, p7

    .line 192
    :cond_6e
    invoke-static {}, Lads_mobile_sdk/e11;->w()Lads_mobile_sdk/b11;

    move-result-object p8

    const-string p9, "newBuilder(...)"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8}, Lads_mobile_sdk/f11;->a(Lads_mobile_sdk/b11;)Lads_mobile_sdk/g11;

    move-result-object p8

    .line 193
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->b()V

    .line 194
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->c()V

    .line 195
    sget-object p9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p10, "RELEASE"

    invoke-static {p9, p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->g(Ljava/lang/String;)V

    .line 196
    sget-object p9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p10, "MODEL"

    invoke-static {p9, p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->f(Ljava/lang/String;)V

    .line 197
    sget p9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->c(I)V

    .line 198
    invoke-virtual {p8, p4}, Lads_mobile_sdk/g11;->h(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p8, p3}, Lads_mobile_sdk/g11;->a(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getPackageName(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->c(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p8, p6}, Lads_mobile_sdk/g11;->d(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p1

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_bc

    goto :goto_bd

    :cond_bc
    move-object p7, p1

    :cond_bd
    :goto_bd
    invoke-virtual {p8, p7}, Lads_mobile_sdk/g11;->b(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getCountry(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->b(I)V

    .line 205
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->a(I)V

    .line 319
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->a()Lads_mobile_sdk/e11;

    move-result-object p1

    .line 320
    iput-object p1, p0, Lads_mobile_sdk/ni;->j:Lads_mobile_sdk/e11;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .registers 4

    .line 15231
    iget-object v0, p0, Lads_mobile_sdk/ni;->f:Lads_mobile_sdk/ao0;

    iget-object v1, p0, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ao0;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 15233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_17

    .line 15234
    invoke-static {v0}, Lads_mobile_sdk/ni$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/ms$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_24

    .line 15236
    :cond_17
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 15237
    :goto_24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/mi;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/mi;

    iget v3, v2, Lads_mobile_sdk/mi;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/mi;->k:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/mi;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/mi;-><init>(Lads_mobile_sdk/ni;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/mi;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 82
    iget v4, v2, Lads_mobile_sdk/mi;->k:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_6b

    if-eq v4, v6, :cond_4e

    if-ne v4, v5, :cond_46

    iget-object v3, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g11;

    iget-object v4, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/g11;

    iget-object v5, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ks3;

    iget-object v6, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v4

    move-object v4, v7

    goto/16 :goto_23f

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget-object v4, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iget-object v6, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iget-object v8, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iget-object v9, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ks3;

    iget-object v10, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/lv;

    iget-object v12, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    check-cast v12, Landroid/app/ActivityManager$MemoryInfo;

    iget-object v13, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1ba

    :cond_6b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v4, "getThread(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const-string v0, "getStackTrace(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "\n"

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :try_start_93
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "getBytes(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%032X"

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v10, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "format(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_c7} :catch_c8

    goto :goto_c9

    :catch_c8
    move-object v4, v7

    :goto_c9
    if-nez v4, :cond_cd

    .line 88
    const-string v4, ""

    .line 89
    :cond_cd
    iget-object v8, v1, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/ActivityManager;

    .line 90
    new-instance v12, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v12}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v8, v12}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 91
    iget-object v8, v1, Lads_mobile_sdk/ni;->d:Lads_mobile_sdk/uv;

    .line 92
    iget-object v9, v8, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;

    if-nez v9, :cond_fc

    .line 94
    iget-object v13, v8, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lads_mobile_sdk/sv;

    invoke-direct {v10, v8, v7}, Lads_mobile_sdk/sv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v10

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_fc
    if-eqz v9, :cond_102

    .line 95
    iget-object v8, v9, Lads_mobile_sdk/mv;->b:Lads_mobile_sdk/lv;

    move-object v11, v8

    goto :goto_103

    :cond_102
    move-object v11, v7

    .line 96
    :goto_103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    const-string v9, "getThread(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v9, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    .line 98
    const-string v9, "thread"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v9, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    monitor-enter v9

    :try_start_11a
    invoke-virtual {v9, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/gs3;

    if-eqz v8, :cond_128

    .line 157
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;
    :try_end_124
    .catchall {:try_start_11a .. :try_end_124} :catchall_125

    goto :goto_129

    :catchall_125
    move-exception v0

    goto/16 :goto_538

    :cond_128
    move-object v8, v7

    .line 158
    :goto_129
    monitor-exit v9

    if-eqz v8, :cond_12f

    .line 159
    iget-object v9, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    goto :goto_130

    :cond_12f
    move-object v9, v7

    .line 160
    :goto_130
    iget-object v10, v1, Lads_mobile_sdk/ni;->j:Lads_mobile_sdk/e11;

    .line 259
    invoke-virtual {v10}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v10

    const-string v13, "toBuilder(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lads_mobile_sdk/b11;

    .line 260
    const-string v13, "builder"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v13, Lads_mobile_sdk/g11;

    .line 291
    invoke-direct {v13, v10}, Lads_mobile_sdk/g11;-><init>(Lads_mobile_sdk/b11;)V

    .line 292
    iget-object v14, v1, Lads_mobile_sdk/ni;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 294
    invoke-virtual {v10, v14, v15}, Lads_mobile_sdk/b11;->e(J)V

    .line 295
    const-string v14, "value"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v10, v0}, Lads_mobile_sdk/b11;->v(Ljava/lang/String;)V

    .line 426
    const-string v0, "value"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v10, v4}, Lads_mobile_sdk/b11;->u(Ljava/lang/String;)V

    .line 1187
    iget-object v0, v1, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    const-string v4, "gads:system_health:anr_watchdog:sample_rate"

    .line 1189
    const-string v14, "key"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v14, 0x3fa999999999999aL    # 0.05

    .line 1208
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v0, v4, v14, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v0, v14, v16

    if-lez v0, :cond_18f

    move-object v0, v8

    int-to-double v7, v6

    div-double/2addr v7, v14

    double-to-long v7, v7

    goto :goto_192

    :cond_18f
    move-object v0, v8

    const-wide/16 v7, 0x0

    .line 1209
    :goto_192
    invoke-virtual {v10, v7, v8}, Lads_mobile_sdk/b11;->c(J)V

    .line 1210
    iget-object v4, v1, Lads_mobile_sdk/ni;->c:Lads_mobile_sdk/g30;

    iput-object v1, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    iput-object v12, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iput-object v13, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iput-object v13, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iput v6, v2, Lads_mobile_sdk/mi;->k:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    invoke-static {v4, v2}, Lads_mobile_sdk/g30;->i(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1b4

    goto/16 :goto_23a

    :cond_1b4
    move-object v10, v0

    move-object v0, v4

    move-object v4, v13

    move-object v6, v4

    move-object v8, v6

    move-object v13, v1

    .line 1212
    :goto_1ba
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1c0

    const-string v0, ""

    :cond_1c0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    const-string v7, "value"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1820
    iget-object v4, v4, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v0}, Lads_mobile_sdk/b11;->t(Ljava/lang/String;)V

    .line 1821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 1822
    iget-object v4, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    .line 1823
    invoke-virtual {v4, v0}, Lads_mobile_sdk/b11;->f(I)V

    .line 1824
    iget-wide v14, v12, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1825
    iget-object v0, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v14, v15}, Lads_mobile_sdk/b11;->f(J)V

    .line 1826
    iget-wide v14, v12, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1827
    iget-object v0, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v14, v15}, Lads_mobile_sdk/b11;->a(J)V

    .line 1828
    iget-wide v14, v12, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1829
    iget-object v0, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v14, v15}, Lads_mobile_sdk/b11;->d(J)V

    .line 1830
    iget-boolean v0, v12, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1831
    iget-object v4, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v0}, Lads_mobile_sdk/b11;->a(Z)V

    if-nez v11, :cond_212

    .line 1832
    invoke-static {}, Lads_mobile_sdk/lv;->v()Lads_mobile_sdk/kv;

    move-result-object v0

    const-string v4, "newBuilder(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    const-string v4, "builder"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v4, "build(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Lads_mobile_sdk/lv;

    .line 1835
    :cond_212
    const-string v0, "value"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2639
    iget-object v0, v6, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v11}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/lv;)V

    .line 2640
    iget-object v0, v13, Lads_mobile_sdk/ni;->g:Lads_mobile_sdk/zw3;

    iput-object v13, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    iput-object v10, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iput-object v4, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iput-object v4, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iput v5, v2, Lads_mobile_sdk/mi;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2641
    invoke-static {v0, v2}, Lads_mobile_sdk/zw3;->a(Lads_mobile_sdk/zw3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_23b

    :goto_23a
    return-object v3

    :cond_23b
    move-object v3, v6

    move-object v5, v9

    move-object v6, v10

    move-object v2, v13

    .line 2642
    :goto_23f
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_250

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2643
    const-string v7, "value"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2848
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v0}, Lads_mobile_sdk/b11;->y(Ljava/lang/String;)V

    .line 2849
    :cond_250
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 2850
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    .line 2851
    invoke-virtual {v7}, Lads_mobile_sdk/b11;->j()Ljava/util/List;

    move-result-object v7

    const-string v9, "getExperimentIdList(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2852
    invoke-direct {v0, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 2853
    iget-object v7, v2, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    .line 2854
    iget-object v7, v7, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 2855
    invoke-virtual {v7}, Lads_mobile_sdk/eb3;->c()Ljava/lang/String;

    move-result-object v9

    const-string v7, ","

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 2944
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27f
    :goto_27f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_295

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 2954
    check-cast v10, Ljava/lang/String;

    .line 2955
    invoke-static {v10}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_27f

    .line 3052
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27f

    .line 3053
    :cond_295
    const-string v7, "<this>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3543
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v9}, Lads_mobile_sdk/b11;->b(Ljava/util/ArrayList;)V

    .line 3544
    iget-object v0, v2, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 3545
    iget-object v0, v0, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 3546
    check-cast v0, Lads_mobile_sdk/rs1;

    .line 3547
    iget v0, v0, Lads_mobile_sdk/rs1;->c:I

    .line 3548
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v0}, Lads_mobile_sdk/b11;->c(I)V

    .line 3549
    iget-object v0, v2, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 3550
    iget-object v0, v0, Lads_mobile_sdk/qn;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3581
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3582
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3583
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 3584
    check-cast v9, Ljava/util/Map$Entry;

    .line 3585
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 3586
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3620
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ca

    .line 3623
    :cond_2ec
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3624
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2f9
    :goto_2f9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3625
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_2f9

    .line 3626
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f9

    .line 3627
    :cond_31d
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_325
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_389

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/j53;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 3628
    new-instance v10, Lads_mobile_sdk/lo0;

    .line 3629
    iget-object v11, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v11}, Lads_mobile_sdk/b11;->k()Ljava/util/List;

    move-result-object v11

    const-string v12, "getLoadedAdsStatsList(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3630
    invoke-direct {v10, v11}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 3631
    invoke-static {}, Lads_mobile_sdk/a11;->v()Lads_mobile_sdk/z01;

    move-result-object v11

    const-string v12, "newBuilder(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3632
    const-string v12, "builder"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3633
    invoke-static {v9}, Lads_mobile_sdk/k53;->a(Lads_mobile_sdk/j53;)Lads_mobile_sdk/nt1;

    move-result-object v9

    .line 3634
    const-string v12, "value"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v11, v9}, Lads_mobile_sdk/z01;->a(Lads_mobile_sdk/nt1;)V

    .line 5004
    invoke-virtual {v11, v7}, Lads_mobile_sdk/z01;->a(I)V

    .line 5005
    invoke-virtual {v11}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v7

    const-string v9, "build(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/a11;

    .line 5006
    const-string v9, "<this>"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5901
    iget-object v9, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v9, v7}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/a11;)V

    goto :goto_325

    .line 5902
    :cond_389
    iget-object v0, v2, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 5903
    iget-object v0, v0, Lads_mobile_sdk/qn;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5942
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5943
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5944
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 5945
    check-cast v9, Ljava/util/Map$Entry;

    .line 5946
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 5947
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5989
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a2

    .line 5992
    :cond_3c4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5993
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3d1
    :goto_3d1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5994
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_3d1

    .line 5995
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d1

    .line 5996
    :cond_3f5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3fd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_461

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/j53;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 5997
    new-instance v10, Lads_mobile_sdk/lo0;

    .line 5998
    iget-object v11, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v11}, Lads_mobile_sdk/b11;->l()Ljava/util/List;

    move-result-object v11

    const-string v12, "getShowingAdsStatsList(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5999
    invoke-direct {v10, v11}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 6000
    invoke-static {}, Lads_mobile_sdk/a11;->v()Lads_mobile_sdk/z01;

    move-result-object v11

    const-string v12, "newBuilder(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6001
    const-string v12, "builder"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6002
    invoke-static {v9}, Lads_mobile_sdk/k53;->a(Lads_mobile_sdk/j53;)Lads_mobile_sdk/nt1;

    move-result-object v9

    .line 6003
    const-string v12, "value"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7372
    invoke-virtual {v11, v9}, Lads_mobile_sdk/z01;->a(Lads_mobile_sdk/nt1;)V

    .line 7373
    invoke-virtual {v11, v7}, Lads_mobile_sdk/z01;->a(I)V

    .line 7374
    invoke-virtual {v11}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v7

    const-string v9, "build(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/a11;

    .line 7375
    const-string v9, "<this>"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8341
    iget-object v9, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v9, v7}, Lads_mobile_sdk/b11;->b(Lads_mobile_sdk/a11;)V

    goto :goto_3fd

    .line 8342
    :cond_461
    iget-object v0, v2, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 8343
    iget-object v0, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8344
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v7, "get(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/mm0;

    .line 8345
    const-string v7, "value"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9369
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/mm0;)V

    .line 9370
    iget-object v0, v2, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 9371
    iget-object v0, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9372
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 9373
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/b11;->b(J)V

    .line 9374
    iget-object v0, v2, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 9375
    iget-object v0, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9376
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v7, "get(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/om0;

    .line 9377
    const-string v7, "value"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10425
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/om0;)V

    .line 10426
    iget-object v0, v2, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    invoke-virtual {v0}, Lads_mobile_sdk/cn0;->a()Lads_mobile_sdk/nm0;

    move-result-object v0

    .line 10427
    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11625
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/nm0;)V

    if-eqz v6, :cond_4c9

    .line 11626
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    if-eqz v0, :cond_4c9

    iget-object v0, v0, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    if-eqz v0, :cond_4c9

    .line 11627
    invoke-virtual {v0}, Lads_mobile_sdk/s11;->getNumber()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/mt1;->a(I)Lads_mobile_sdk/mt1;

    move-result-object v7

    if-nez v7, :cond_4ca

    .line 11628
    sget-object v7, Lads_mobile_sdk/mt1;->b:Lads_mobile_sdk/mt1;

    goto :goto_4ca

    :cond_4c9
    move-object v7, v4

    :cond_4ca
    :goto_4ca
    if-eqz v7, :cond_4d6

    .line 11629
    const-string v0, "value"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12701
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v7}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/mt1;)V

    .line 12702
    :cond_4d6
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 12703
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2}, Lads_mobile_sdk/b11;->i()Ljava/util/List;

    move-result-object v2

    const-string v4, "getActiveCuiStackList(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12704
    invoke-direct {v0, v2}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 12705
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13859
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0}, Lads_mobile_sdk/b11;->h()V

    .line 13860
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 13861
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2}, Lads_mobile_sdk/b11;->i()Ljava/util/List;

    move-result-object v2

    const-string v4, "getActiveCuiStackList(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13862
    invoke-direct {v0, v2}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 13863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_505
    if-eqz v6, :cond_51f

    .line 13866
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iget-object v4, v4, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    .line 13867
    invoke-virtual {v4}, Lads_mobile_sdk/s11;->getNumber()I

    move-result v4

    invoke-static {v4}, Lads_mobile_sdk/mt1;->a(I)Lads_mobile_sdk/mt1;

    move-result-object v4

    if-nez v4, :cond_519

    .line 13868
    sget-object v4, Lads_mobile_sdk/mt1;->b:Lads_mobile_sdk/mt1;

    .line 13869
    :cond_519
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13870
    iget-object v6, v6, Lads_mobile_sdk/rr3;->b:Lads_mobile_sdk/rr3;

    goto :goto_505

    .line 13871
    :cond_51f
    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14998
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v2}, Lads_mobile_sdk/b11;->a(Ljava/util/ArrayList;)V

    if-eqz v5, :cond_533

    .line 14999
    invoke-static {v3, v5}, Lads_mobile_sdk/is3;->a(Lads_mobile_sdk/g11;Lads_mobile_sdk/ks3;)V

    .line 15059
    :cond_533
    invoke-virtual {v8}, Lads_mobile_sdk/g11;->a()Lads_mobile_sdk/e11;

    move-result-object v0

    return-object v0

    .line 15060
    :goto_538
    monitor-exit v9

    throw v0
.end method
