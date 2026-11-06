###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.a (com.google.android.libraries.ads.mobile.sdk.internal.signals.a)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final f:Lads_mobile_sdk/ej1;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/ej1;)V
    .registers 8

    .line 1
    const-string v0, "signalSourceConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    .line 7
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 8
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    return-void
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    instance-of v2, v1, Lads_mobile_sdk/ak3;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ak3;

    iget v3, v2, Lads_mobile_sdk/ak3;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ak3;->i:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/ak3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ak3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/ak3;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 265
    iget v4, v2, Lads_mobile_sdk/ak3;->i:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_8e

    if-eq v4, v9, :cond_86

    if-eq v4, v7, :cond_6e

    if-eq v4, v6, :cond_52

    if-ne v4, v5, :cond_4a

    iget-object v0, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v2, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableJob;

    :try_start_3f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catch Lads_mobile_sdk/df3; {:try_start_3f .. :try_end_42} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_44

    goto/16 :goto_2f7

    :catch_44
    move-exception v0

    goto/16 :goto_301

    :catch_47
    move-exception v0

    goto/16 :goto_30a

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    iget-object v0, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iget-object v4, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iget-object v7, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v11, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CompletableJob;

    iget-object v12, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_60
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_63
    .catch Lads_mobile_sdk/df3; {:try_start_60 .. :try_end_63} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_66

    move-object v14, v11

    goto/16 :goto_2bb

    :catch_66
    move-exception v0

    move-object v2, v11

    goto/16 :goto_301

    :catch_6a
    move-exception v0

    move-object v2, v11

    goto/16 :goto_30a

    :cond_6e
    iget-object v0, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    iget-object v4, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iget-object v11, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iget-object v12, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v13, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CompletableJob;

    iget-object v14, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_7e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_83

    goto/16 :goto_1b5

    :catch_83
    move-exception v0

    goto/16 :goto_317

    :cond_86
    iget-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a0

    :cond_8e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput v9, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/ej1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a0

    return-object v3

    .line 269
    :cond_a0
    :goto_a0
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v13

    .line 271
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->Companion:Lads_mobile_sdk/nj3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    invoke-direct {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;-><init>()V

    .line 273
    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    .line 274
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    const-string v11, "key"

    const-string v12, "gad:signal_ids_to_skip"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "defaultValue"

    const-string v14, ""

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v11, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v4, v12, v14, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 278
    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 435
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e9
    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_105

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 445
    check-cast v12, Ljava/lang/String;

    .line 446
    :try_start_f5
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lads_mobile_sdk/y11;->a(I)Lads_mobile_sdk/y11;

    move-result-object v12
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fd} :catch_fe

    goto :goto_ff

    :catch_fe
    move-object v12, v10

    :goto_ff
    if-eqz v12, :cond_e9

    .line 607
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 608
    :cond_105
    invoke-static {v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 610
    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a:Ljava/util/Set;

    .line 769
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 770
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_114
    :goto_114
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_135

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lads_mobile_sdk/sh3;

    .line 771
    iget-object v15, v15, Lads_mobile_sdk/sh3;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v15, :cond_131

    .line 772
    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_114

    .line 931
    :cond_131
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 933
    :cond_135
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 934
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_13e
    :goto_13e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lads_mobile_sdk/sh3;

    .line 935
    invoke-virtual {v15}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object v15

    invoke-interface {v15}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13e

    .line 1096
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    .line 1097
    :cond_15d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_16b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_183

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lads_mobile_sdk/sh3;

    .line 1100
    instance-of v15, v14, Lads_mobile_sdk/pu;

    if-eqz v15, :cond_17f

    .line 1101
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16b

    .line 1103
    :cond_17f
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16b

    .line 1108
    :cond_183
    :try_start_183
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_187} :catch_83

    move-object v11, v12

    move-object v12, v1

    :goto_189
    move-object v14, v13

    :try_start_18a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_230

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/pu;

    .line 1109
    iget-object v13, v1, Lads_mobile_sdk/pu;->f:Lads_mobile_sdk/ou;

    .line 1110
    iput-object v0, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v11, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v4, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v1, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    iput v7, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v13, v2}, Lads_mobile_sdk/ou;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1aa} :catch_22c

    if-ne v13, v3, :cond_1ae

    goto/16 :goto_31f

    :cond_1ae
    move-object/from16 v20, v14

    move-object v14, v0

    move-object v0, v1

    move-object v1, v13

    move-object/from16 v13, v20

    .line 1111
    :goto_1b5
    :try_start_1b5
    check-cast v1, Lads_mobile_sdk/oe3;

    if-eqz v1, :cond_224

    .line 1139
    sget-object v15, Lads_mobile_sdk/s11;->P0:Lads_mobile_sdk/s11;

    .line 1140
    sget-object v16, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v15, v7, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v7
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1c5} :catch_83

    .line 1141
    :try_start_1c5
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v15

    invoke-virtual {v15}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v15

    new-instance v5, Lads_mobile_sdk/gh3;

    .line 1142
    iget-object v0, v0, Lads_mobile_sdk/pu;->f:Lads_mobile_sdk/ou;

    .line 1143
    invoke-interface {v0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v0

    invoke-direct {v5, v0, v10, v8}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v5, v15, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 1144
    invoke-interface {v1, v12}, Lads_mobile_sdk/oe3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V

    .line 1145
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1df
    .catchall {:try_start_1c5 .. :try_end_1df} :catchall_1e3

    .line 1149
    :try_start_1df
    invoke-static {v7, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e2} :catch_83

    goto :goto_227

    :catchall_1e3
    move-exception v0

    .line 1157
    :try_start_1e4
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1161
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_21d

    .line 1163
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1fa

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1fa

    .line 1169
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1fa

    :catchall_1f7
    move-exception v0

    move-object v1, v0

    goto :goto_21e

    .line 1175
    :cond_1fa
    :goto_1fa
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_215

    .line 1176
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_20d

    .line 1177
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_207

    throw v0

    .line 1178
    :cond_207
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1179
    :cond_20d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1180
    :cond_215
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1181
    :cond_21d
    throw v0
    :try_end_21e
    .catchall {:try_start_1e4 .. :try_end_21e} :catchall_1f7

    .line 1182
    :goto_21e
    :try_start_21e
    throw v1
    :try_end_21f
    .catchall {:try_start_21e .. :try_end_21f} :catchall_21f

    :catchall_21f
    move-exception v0

    :try_start_220
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1183
    :cond_224
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_227} :catch_83

    :goto_227
    move-object v0, v14

    const/4 v5, 0x4

    const/4 v7, 0x2

    goto/16 :goto_189

    :catch_22c
    move-exception v0

    move-object v13, v14

    goto/16 :goto_317

    .line 1361
    :cond_230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_259

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1364
    move-object v11, v7

    check-cast v11, Lads_mobile_sdk/sh3;

    .line 1365
    iget-object v11, v11, Lads_mobile_sdk/sh3;->b:Lads_mobile_sdk/qf3;

    .line 1366
    sget-object v13, Lads_mobile_sdk/qf3;->b:Lads_mobile_sdk/qf3;

    if-ne v11, v13, :cond_255

    .line 1539
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    .line 1541
    :cond_255
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    .line 1544
    :cond_259
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1545
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1546
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1726
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1727
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_279
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1728
    check-cast v7, Lads_mobile_sdk/sh3;

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    iget-object v11, v7, Lads_mobile_sdk/sh3;->c:Lads_mobile_sdk/ph3;

    .line 1731
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_29c

    if-ne v11, v9, :cond_296

    .line 1733
    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b:Lkotlinx/coroutines/CoroutineScope;

    :goto_294
    move-object v13, v11

    goto :goto_29f

    :cond_296
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1734
    :cond_29c
    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->c:Lkotlinx/coroutines/CoroutineScope;

    goto :goto_294

    .line 1735
    :goto_29f
    new-instance v11, Lads_mobile_sdk/bk3;

    invoke-direct {v11, v0, v7, v12, v10}, Lads_mobile_sdk/bk3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v11

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    .line 1911
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_279

    .line 1912
    :cond_2b3
    :try_start_2b3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v5

    move-object v7, v12

    move-object v12, v0

    move-object v0, v1

    :cond_2bb
    :goto_2bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sh3;

    .line 1913
    iput-object v12, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v4, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v0, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v10, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    iput v6, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-virtual {v12, v1, v7, v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2bb

    goto :goto_31f

    :catch_2dc
    move-exception v0

    goto :goto_2fd

    :catch_2de
    move-exception v0

    goto :goto_2ff

    .line 1915
    :cond_2e0
    iput-object v14, v2, Lads_mobile_sdk/ak3;->a:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/ak3;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ak3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v10, v2, Lads_mobile_sdk/ak3;->d:Ljava/util/List;

    iput-object v10, v2, Lads_mobile_sdk/ak3;->e:Ljava/util/Iterator;

    iput-object v10, v2, Lads_mobile_sdk/ak3;->f:Lads_mobile_sdk/pu;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/ak3;->i:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2f3
    .catch Lads_mobile_sdk/df3; {:try_start_2b3 .. :try_end_2f3} :catch_2de
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2f3} :catch_2dc

    if-ne v0, v3, :cond_2f6

    goto :goto_31f

    :cond_2f6
    move-object v0, v7

    .line 1923
    :goto_2f7
    new-instance v3, Lads_mobile_sdk/q01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_31f

    :goto_2fd
    move-object v2, v14

    goto :goto_301

    :goto_2ff
    move-object v2, v14

    goto :goto_30a

    .line 1924
    :goto_301
    invoke-static {v2, v10, v9, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1925
    new-instance v3, Lads_mobile_sdk/j01;

    invoke-direct {v3, v0, v10, v10, v8}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_31f

    .line 1926
    :goto_30a
    invoke-static {v2, v10, v9, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1927
    new-instance v3, Lads_mobile_sdk/m01;

    .line 1928
    iget-object v0, v0, Lads_mobile_sdk/df3;->a:Ljava/lang/String;

    .line 1929
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1930
    invoke-direct {v3, v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_31f

    .line 1931
    :goto_317
    invoke-static {v13, v10, v9, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1932
    new-instance v3, Lads_mobile_sdk/j01;

    invoke-direct {v3, v0, v10, v10, v8}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    :goto_31f
    return-object v3
.end method

.method public static synthetic b(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p1, Lads_mobile_sdk/yj3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/yj3;

    iget v1, v0, Lads_mobile_sdk/yj3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yj3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/yj3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/yj3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/yj3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lads_mobile_sdk/yj3;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_62

    if-eq v2, v4, :cond_46

    if-ne v2, v3, :cond_3e

    iget-object p0, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/v01;

    iget-object v1, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_33 .. :try_end_36} :catch_3b
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    goto/16 :goto_bb

    :catchall_38
    move-exception p0

    goto/16 :goto_cb

    :catch_3b
    move-exception p0

    goto/16 :goto_b5

    .line 2
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    iget-object p0, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    :try_start_52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_52 .. :try_end_55} :catch_5c
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    move-object v8, v6

    move-object v6, p0

    move-object p0, v8

    goto :goto_8c

    :catchall_59
    move-exception p1

    goto/16 :goto_ce

    :catch_5c
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    move-object v0, v2

    goto/16 :goto_b5

    .line 3
    :cond_62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lads_mobile_sdk/s11;->F:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {p1, v2, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 6
    :try_start_6f
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->H0()J

    move-result-wide v6

    new-instance v2, Lads_mobile_sdk/zj3;

    invoke-direct {v2, p0, v5}, Lads_mobile_sdk/zj3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/yj3;->f:I

    invoke-static {v6, v7, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_86
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_6f .. :try_end_86} :catch_b2
    .catchall {:try_start_6f .. :try_end_86} :catchall_ad

    if-ne v2, v1, :cond_89

    goto :goto_9e

    :cond_89
    move-object v6, p1

    move-object p1, v2

    move-object v2, v6

    .line 7
    :goto_8c
    :try_start_8c
    check-cast p1, Lads_mobile_sdk/v01;

    .line 11
    iget-object p0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->f:Lads_mobile_sdk/ej1;

    iput-object v2, v0, Lads_mobile_sdk/yj3;->a:Ljava/lang/Object;
    :try_end_92
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_8c .. :try_end_92} :catch_a9
    .catchall {:try_start_8c .. :try_end_92} :catchall_a3

    :try_start_92
    iput-object v6, v0, Lads_mobile_sdk/yj3;->b:Ljava/io/Closeable;
    :try_end_94
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_92 .. :try_end_94} :catch_a9
    .catchall {:try_start_92 .. :try_end_94} :catchall_a6

    :try_start_94
    iput-object p1, v0, Lads_mobile_sdk/yj3;->c:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/yj3;->f:I

    invoke-virtual {p0}, Lads_mobile_sdk/ej1;->j()Lkotlin/Unit;

    move-result-object p0
    :try_end_9c
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_94 .. :try_end_9c} :catch_a9
    .catchall {:try_start_94 .. :try_end_9c} :catchall_a3

    if-ne p0, v1, :cond_9f

    :goto_9e
    return-object v1

    :cond_9f
    move-object p0, p1

    move-object v0, v2

    move-object v1, v6

    goto :goto_bb

    :catchall_a3
    move-exception p0

    move-object p1, p0

    goto :goto_a7

    :catchall_a6
    move-exception p1

    :goto_a7
    move-object p0, v6

    goto :goto_ce

    :catch_a9
    move-exception p0

    move-object v0, v2

    move-object v1, v6

    goto :goto_b5

    :catchall_ad
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_ce

    :catch_b2
    move-exception p0

    move-object v0, p1

    move-object v1, v0

    .line 14
    :goto_b5
    :try_start_b5
    new-instance p1, Lads_mobile_sdk/r01;

    invoke-direct {p1, p0, v4}, Lads_mobile_sdk/r01;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;I)V

    move-object p0, p1

    .line 15
    :goto_bb
    nop

    instance-of p1, p0, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_c7

    .line 16
    move-object p1, p0

    check-cast p1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_c7
    .catchall {:try_start_b5 .. :try_end_c7} :catchall_38

    .line 18
    :cond_c7
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :goto_cb
    move-object p1, p0

    move-object v2, v0

    move-object p0, v1

    .line 26
    :goto_ce
    :try_start_ce
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 30
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_106

    .line 32
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_e3

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_e3

    .line 38
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e3

    :catchall_e1
    move-exception p1

    goto :goto_107

    .line 44
    :cond_e3
    :goto_e3
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_fe

    .line 45
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f6

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_f0

    throw p1

    .line 47
    :cond_f0
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 48
    :cond_f6
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 49
    :cond_fe
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 50
    :cond_106
    throw p1
    :try_end_107
    .catchall {:try_start_ce .. :try_end_107} :catchall_e1

    .line 51
    :goto_107
    :try_start_107
    throw p1
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/sh3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 2
    instance-of v0, p3, Lads_mobile_sdk/ck3;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ck3;

    iget v1, v0, Lads_mobile_sdk/ck3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ck3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ck3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ck3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/ck3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 133
    iget v2, v0, Lads_mobile_sdk/ck3;->e:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_39

    if-ne v2, v4, :cond_31

    iget-object p2, v0, Lads_mobile_sdk/ck3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object p1, v0, Lads_mobile_sdk/ck3;->a:Lads_mobile_sdk/sh3;

    :try_start_2b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_89

    :catch_2f
    move-exception p3

    goto :goto_8c

    .line 134
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    :try_start_3c
    invoke-static {}, Lads_mobile_sdk/au;->a()Lads_mobile_sdk/bu;

    move-result-object p3

    sget-object v2, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-ne p3, v2, :cond_73

    .line 140
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->K0()J

    move-result-wide v6

    sget-object p3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p3

    if-lez p3, :cond_73

    .line 144
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->K0()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Lkotlin/time/Duration;

    invoke-virtual {p3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    goto :goto_77

    .line 146
    :cond_73
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->c()J

    move-result-wide v6

    .line 148
    :goto_77
    new-instance p3, Lads_mobile_sdk/dk3;

    invoke-direct {p3, p1, v5}, Lads_mobile_sdk/dk3;-><init>(Lads_mobile_sdk/sh3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/ck3;->a:Lads_mobile_sdk/sh3;

    iput-object p2, v0, Lads_mobile_sdk/ck3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput v4, v0, Lads_mobile_sdk/ck3;->e:I

    invoke-static {v6, v7, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_89

    return-object v1

    .line 149
    :cond_89
    :goto_89
    check-cast p3, Lads_mobile_sdk/v01;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_8b} :catch_2f

    goto :goto_92

    .line 151
    :goto_8c
    new-instance v0, Lads_mobile_sdk/j01;

    invoke-direct {v0, p3, v5, v5, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p3, v0

    .line 153
    :goto_92
    nop

    instance-of v0, p3, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_10c

    .line 154
    sget-object v0, Lads_mobile_sdk/s11;->P0:Lads_mobile_sdk/s11;

    .line 155
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 156
    :try_start_a3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    new-instance v2, Lads_mobile_sdk/gh3;

    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object p1

    invoke-interface {p1}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object p1

    invoke-direct {v2, p1, v5, v3}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v2, v1, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 157
    check-cast p3, Lads_mobile_sdk/q01;

    invoke-virtual {p3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oe3;

    invoke-interface {p1, p2}, Lads_mobile_sdk/oe3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V

    .line 158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c7
    .catchall {:try_start_a3 .. :try_end_c7} :catchall_cc

    .line 161
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_144

    :catchall_cc
    move-exception p1

    .line 169
    :try_start_cd
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 173
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_105

    .line 175
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_e2

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_e2

    .line 181
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e2

    :catchall_e0
    move-exception p1

    goto :goto_106

    .line 187
    :cond_e2
    :goto_e2
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_fd

    .line 188
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_f5

    .line 189
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_ef

    throw p1

    .line 190
    :cond_ef
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 191
    :cond_f5
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 192
    :cond_fd
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 193
    :cond_105
    throw p1
    :try_end_106
    .catchall {:try_start_cd .. :try_end_106} :catchall_e0

    .line 194
    :goto_106
    :try_start_106
    throw p1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 195
    :cond_10c
    instance-of p2, p3, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_144

    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->a()Lads_mobile_sdk/lg3;

    move-result-object p2

    sget-object v0, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    if-eq p2, v0, :cond_119

    goto :goto_144

    .line 196
    :cond_119
    new-instance p2, Lads_mobile_sdk/df3;

    .line 197
    invoke-virtual {p1}, Lads_mobile_sdk/sh3;->b()Lads_mobile_sdk/rh3;

    move-result-object p1

    invoke-interface {p1}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required signal with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-direct {p2, p1}, Lads_mobile_sdk/df3;-><init>(Ljava/lang/String;)V

    throw p2

    .line 202
    :cond_144
    :goto_144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->b(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
