###### Class ads_mobile_sdk.gl2 (ads_mobile_sdk.gl2)
.class public final Lads_mobile_sdk/gl2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/r1;

.field public final d:Lads_mobile_sdk/e9;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/cl2;

.field public g:Lads_mobile_sdk/im2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r1;Lads_mobile_sdk/e9;Landroid/content/Context;Lads_mobile_sdk/xw0;Lads_mobile_sdk/cl2;)V
    .registers 7

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagValueProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "flags"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p4, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/gl2;->c:Lads_mobile_sdk/r1;

    .line 32
    iput-object p2, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    .line 33
    iput-object p3, p0, Lads_mobile_sdk/gl2;->e:Landroid/content/Context;

    .line 35
    iput-object p5, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/el2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/el2;

    iget v1, v0, Lads_mobile_sdk/el2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/el2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/el2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/el2;-><init>(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/el2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lads_mobile_sdk/el2;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lads_mobile_sdk/el2;->b:Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lads_mobile_sdk/el2;->a:Lads_mobile_sdk/gl2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v6

    goto :goto_5c

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 82
    iget-object v2, p0, Lads_mobile_sdk/gl2;->c:Lads_mobile_sdk/r1;

    .line 83
    iget-object v2, v2, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    .line 84
    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    invoke-interface {v2}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 85
    iput-object p0, v0, Lads_mobile_sdk/el2;->a:Lads_mobile_sdk/gl2;

    iput-object p1, v0, Lads_mobile_sdk/el2;->b:Ljava/util/LinkedHashSet;

    iput v3, v0, Lads_mobile_sdk/el2;->e:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5c

    return-object v1

    .line 86
    :cond_5c
    :goto_5c
    check-cast v0, Lads_mobile_sdk/o1;

    .line 91
    invoke-virtual {v0}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/rx0;

    .line 92
    invoke-virtual {v1}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/j9;

    .line 93
    invoke-virtual {v2}, Lads_mobile_sdk/j9;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/d9;

    .line 94
    invoke-virtual {v3}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFilename(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 100
    :cond_af
    iget-object p0, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    invoke-virtual {p0}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b9
    :goto_b9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ".tmp"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_b9

    .line 104
    :cond_dd
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_b9

    .line 108
    :cond_eb
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/fl2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fl2;

    iget v1, v0, Lads_mobile_sdk/fl2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fl2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fl2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fl2;-><init>(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/fl2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lads_mobile_sdk/fl2;->f:I

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6c

    if-eq v2, v6, :cond_5b

    if-eq v2, v5, :cond_46

    if-ne v2, v4, :cond_3e

    iget-object p0, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3b
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    goto/16 :goto_153

    :catchall_38
    move-exception p1

    goto/16 :goto_183

    :catch_3b
    move-exception p1

    goto/16 :goto_166

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_46
    iget-object p0, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v5, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/gl2;

    :try_start_50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_58
    .catchall {:try_start_50 .. :try_end_53} :catchall_55

    goto/16 :goto_129

    :catchall_55
    move-exception p1

    goto/16 :goto_12e

    :catch_58
    move-exception p1

    goto/16 :goto_133

    .line 40
    :cond_5b
    iget-object p0, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iget-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/gl2;

    :try_start_65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_58
    .catchall {:try_start_65 .. :try_end_68} :catchall_55

    move-object p1, p0

    move-object p0, v6

    goto/16 :goto_eb

    .line 41
    :cond_6c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string v2, "key"

    const-string v8, "gads:pc:enabled"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v8, v2, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_93

    .line 61
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 65
    :cond_93
    :try_start_93
    iget-object p1, p0, Lads_mobile_sdk/gl2;->e:Landroid/content/Context;

    const-string v2, "google_mobile_ads_ad_cache_manifest.pb"

    invoke-static {p1, v2}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 66
    iget-object v2, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    .line 67
    iget-boolean v8, v2, Lads_mobile_sdk/e9;->b:Z

    if-eqz v8, :cond_a7

    move v2, v6

    goto :goto_b1

    .line 68
    :cond_a7
    iget-object v8, v2, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    iput-boolean v8, v2, Lads_mobile_sdk/e9;->b:Z

    .line 69
    iget-boolean v2, v2, Lads_mobile_sdk/e9;->b:Z

    :goto_b1
    if-nez p1, :cond_c0

    if-nez v2, :cond_c0

    .line 70
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_bc} :catch_bd

    return-object p0

    :catch_bd
    move-exception p0

    goto/16 :goto_1c6

    .line 76
    :cond_c0
    sget-object p1, Lads_mobile_sdk/s11;->G1:Lads_mobile_sdk/s11;

    .line 127
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 128
    :try_start_cc
    iget-object v2, p0, Lads_mobile_sdk/gl2;->g:Lads_mobile_sdk/im2;

    if-eqz v2, :cond_ea

    iput-object p0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;

    iput v6, v0, Lads_mobile_sdk/fl2;->f:I

    .line 129
    invoke-static {v2, v0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_dc} :catch_e2
    .catchall {:try_start_cc .. :try_end_dc} :catchall_e0

    if-ne v2, v1, :cond_ea

    goto/16 :goto_14e

    :catchall_e0
    move-exception p0

    goto :goto_e4

    :catch_e2
    move-exception p0

    goto :goto_e7

    :goto_e4
    move-object v0, p1

    goto/16 :goto_187

    :goto_e7
    move-object v0, p1

    goto/16 :goto_169

    :cond_ea
    move-object v2, p1

    .line 130
    :goto_eb
    :try_start_eb
    iget-object v6, p0, Lads_mobile_sdk/gl2;->d:Lads_mobile_sdk/e9;

    invoke-virtual {v6}, Lads_mobile_sdk/e9;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 131
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_170

    :catchall_100
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_12e

    :catch_105
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_133

    .line 134
    :cond_10a
    iget-object v6, p0, Lads_mobile_sdk/gl2;->f:Lads_mobile_sdk/cl2;

    invoke-virtual {v6}, Lads_mobile_sdk/cl2;->a()Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 135
    iget-object v6, p0, Lads_mobile_sdk/gl2;->g:Lads_mobile_sdk/im2;

    if-eqz v6, :cond_13d

    iput-object p0, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_118} :catch_105
    .catchall {:try_start_eb .. :try_end_118} :catchall_100

    :try_start_118
    iput-object v2, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object p1, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11c} :catch_13b
    .catchall {:try_start_118 .. :try_end_11c} :catchall_138

    :try_start_11c
    iput v5, v0, Lads_mobile_sdk/fl2;->f:I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11e} :catch_105
    .catchall {:try_start_11c .. :try_end_11e} :catchall_100

    .line 136
    :try_start_11e
    invoke-static {v6, v0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_122} :catch_13b
    .catchall {:try_start_11e .. :try_end_122} :catchall_138

    if-ne v5, v1, :cond_125

    goto :goto_14e

    :cond_125
    move-object v10, v5

    move-object v5, p0

    move-object p0, p1

    move-object p1, v10

    .line 137
    :goto_129
    :try_start_129
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12b} :catch_58
    .catchall {:try_start_129 .. :try_end_12b} :catchall_55

    move-object p1, p0

    move-object p0, v5

    goto :goto_13d

    :goto_12e
    move-object v0, p0

    move-object p0, p1

    :goto_130
    move-object p1, v2

    goto/16 :goto_187

    :goto_133
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    :goto_136
    move-object v0, v2

    goto :goto_169

    :catchall_138
    move-exception p0

    move-object v0, p1

    goto :goto_130

    :catch_13b
    move-exception p0

    goto :goto_136

    .line 140
    :cond_13d
    :goto_13d
    :try_start_13d
    iput-object v2, v0, Lads_mobile_sdk/fl2;->a:Ljava/lang/Object;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_13f} :catch_105
    .catchall {:try_start_13d .. :try_end_13f} :catchall_100

    :try_start_13f
    iput-object p1, v0, Lads_mobile_sdk/fl2;->b:Ljava/io/Closeable;

    iput-object v7, v0, Lads_mobile_sdk/fl2;->c:Ljava/io/Closeable;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_143} :catch_13b
    .catchall {:try_start_13f .. :try_end_143} :catchall_138

    :try_start_143
    iput v4, v0, Lads_mobile_sdk/fl2;->f:I
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_145} :catch_105
    .catchall {:try_start_143 .. :try_end_145} :catchall_100

    :try_start_145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {p0, v0}, Lads_mobile_sdk/gl2;->a(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_14c} :catch_13b
    .catchall {:try_start_145 .. :try_end_14c} :catchall_138

    if-ne p0, v1, :cond_14f

    :goto_14e
    return-object v1

    :cond_14f
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    .line 142
    :goto_153
    :try_start_153
    check-cast p1, Lads_mobile_sdk/v01;

    .line 173
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_15a

    goto :goto_161

    .line 176
    :cond_15a
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_161} :catch_3b
    .catchall {:try_start_153 .. :try_end_161} :catchall_38

    :goto_161
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    goto :goto_170

    :goto_166
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 178
    :goto_169
    :try_start_169
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p0, v7, v7, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_16e
    .catchall {:try_start_169 .. :try_end_16e} :catchall_17f

    move-object v2, v0

    move-object p0, v1

    .line 217
    :goto_170
    :try_start_170
    instance-of v0, p0, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_17b

    .line 218
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/i01;
    :try_end_177
    .catchall {:try_start_170 .. :try_end_177} :catchall_100

    const/4 v1, 0x0

    .line 219
    :try_start_178
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_138

    .line 220
    :cond_17b
    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_17f
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_183
    move-object v10, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v10

    .line 228
    :goto_187
    :try_start_187
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 232
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1bf

    .line 234
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_19c

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19c

    .line 240
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_19c

    :catchall_19a
    move-exception p0

    goto :goto_1c0

    .line 246
    :cond_19c
    :goto_19c
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_1b7

    .line 247
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_1af

    .line 248
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_1a9

    throw p0

    .line 249
    :cond_1a9
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 250
    :cond_1af
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 251
    :cond_1b7
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 252
    :cond_1bf
    throw p0
    :try_end_1c0
    .catchall {:try_start_187 .. :try_end_1c0} :catchall_19a

    .line 253
    :goto_1c0
    :try_start_1c0
    throw p0
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1c1

    :catchall_1c1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 254
    :goto_1c6
    new-instance p1, Lads_mobile_sdk/j01;

    invoke-direct {p1, p0, v7, v7, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/gl2;->b(Lads_mobile_sdk/gl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
