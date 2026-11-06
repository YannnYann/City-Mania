###### Class ads_mobile_sdk.v42 (ads_mobile_sdk.v42)
.class public final Lads_mobile_sdk/v42;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:I

.field public static final i:I


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final b:Lads_mobile_sdk/xs;

.field public final c:Lads_mobile_sdk/ur3;

.field public final d:Lads_mobile_sdk/j62;

.field public final e:Lads_mobile_sdk/iz3;

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public final g:Lads_mobile_sdk/g83;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xae

    const/16 v1, 0xce

    const/16 v2, 0xc

    .line 361
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v1, 0xcc

    .line 362
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 364
    sput v1, Lads_mobile_sdk/v42;->h:I

    .line 365
    sput v0, Lads_mobile_sdk/v42;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/xs;Lads_mobile_sdk/ur3;Lads_mobile_sdk/j62;Lads_mobile_sdk/iz3;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;)V
    .registers 10

    .line 1
    const-string v0, "nativeRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaAssetLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "uiScope"

    invoke-static {p7, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "traceCreator"

    invoke-static {p8, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 55
    iput-object p2, p0, Lads_mobile_sdk/v42;->b:Lads_mobile_sdk/xs;

    .line 56
    iput-object p3, p0, Lads_mobile_sdk/v42;->c:Lads_mobile_sdk/ur3;

    .line 57
    iput-object p4, p0, Lads_mobile_sdk/v42;->d:Lads_mobile_sdk/j62;

    .line 58
    iput-object p5, p0, Lads_mobile_sdk/v42;->e:Lads_mobile_sdk/iz3;

    .line 60
    iput-object p7, p0, Lads_mobile_sdk/v42;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    iput-object p8, p0, Lads_mobile_sdk/v42;->g:Lads_mobile_sdk/g83;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 518
    instance-of v0, p2, Lads_mobile_sdk/q42;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/q42;

    iget v1, v0, Lads_mobile_sdk/q42;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q42;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/q42;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/q42;-><init>(Lads_mobile_sdk/v42;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/q42;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 519
    iget v2, v0, Lads_mobile_sdk/q42;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lads_mobile_sdk/q42;->b:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/q42;->a:Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_58

    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_89

    .line 523
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_48

    goto :goto_89

    .line 527
    :cond_48
    new-instance p2, Lads_mobile_sdk/s42;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p2, p0, p1, v2, v5}, Lads_mobile_sdk/s42;-><init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;Z)V

    iput v4, v0, Lads_mobile_sdk/q42;->e:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_58

    goto :goto_7d

    .line 528
    :cond_58
    :goto_58
    check-cast p2, Ljava/util/List;

    .line 733
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_65
    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 743
    check-cast p2, Lkotlinx/coroutines/Deferred;

    .line 744
    iput-object v2, v0, Lads_mobile_sdk/q42;->a:Ljava/util/Collection;

    iput-object p1, v0, Lads_mobile_sdk/q42;->b:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/q42;->e:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7e

    :goto_7d
    return-object v1

    :cond_7e
    :goto_7e
    check-cast p2, Lads_mobile_sdk/km1;

    if-eqz p2, :cond_65

    .line 942
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 946
    :cond_86
    check-cast v2, Ljava/util/List;

    return-object v2

    .line 947
    :cond_89
    :goto_89
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 948
    instance-of v0, p3, Lads_mobile_sdk/t42;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/t42;

    iget v1, v0, Lads_mobile_sdk/t42;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t42;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t42;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/t42;-><init>(Lads_mobile_sdk/v42;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/t42;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1182
    iget v2, v0, Lads_mobile_sdk/t42;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9d

    :cond_3a
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1186
    const-string p3, "html_config"

    .line 1187
    invoke-static {p1, p3, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p3, :cond_4d

    .line 1188
    const-string v6, "html"

    invoke-virtual {p3, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    goto :goto_4e

    :cond_4d
    move v6, v2

    .line 1189
    :goto_4e
    const-string v7, "video"

    .line 1190
    invoke-static {p1, v7, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 1191
    const-string v7, "vast_xml"

    .line 1192
    const-string v8, ""

    invoke-static {p1, v7, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1193
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_63

    move v2, v4

    :cond_63
    const-string v7, "loadMediaAsset"

    const-string v8, "key"

    const/16 v9, 0xa

    const-string v10, "gads:native_video_load_timeout"

    if-eqz p3, :cond_c7

    if-eqz v6, :cond_b5

    .line 1199
    iget-object p1, p0, Lads_mobile_sdk/v42;->d:Lads_mobile_sdk/j62;

    iput v4, v0, Lads_mobile_sdk/t42;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1200
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v3, p1, Lads_mobile_sdk/j62;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 1202
    invoke-static {v9, v4, v10, v8}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v4

    .line 1203
    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v3, v10, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 1204
    new-instance v6, Lads_mobile_sdk/d62;

    invoke-direct {v6, p2, p1, p3, v5}, Lads_mobile_sdk/d62;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v3, v4, v6, v0}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9d

    goto :goto_f8

    .line 1205
    :cond_9d
    :goto_9d
    check-cast p3, Lads_mobile_sdk/v01;

    .line 1220
    instance-of p1, p3, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_aa

    check-cast p3, Lads_mobile_sdk/q01;

    .line 1221
    iget-object p1, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1222
    check-cast p1, Lads_mobile_sdk/r31;

    return-object p1

    .line 1223
    :cond_aa
    instance-of p1, p3, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_af

    return-object v5

    .line 1224
    :cond_af
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1229
    :cond_b5
    const-string p1, "Has \'html_config\' but the html field is missing."

    invoke-static {p1, v5}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1230
    iget-object p2, p0, Lads_mobile_sdk/v42;->c:Lads_mobile_sdk/ur3;

    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v7, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_122

    :cond_c7
    if-eqz p1, :cond_122

    if-eqz v2, :cond_111

    .line 1235
    iget-object p3, p0, Lads_mobile_sdk/v42;->d:Lads_mobile_sdk/j62;

    iput v3, v0, Lads_mobile_sdk/t42;->c:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1236
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v3, p3, Lads_mobile_sdk/j62;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 1238
    invoke-static {v9, v4, v10, v8}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v4

    .line 1239
    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v3, v10, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 1240
    new-instance v6, Lads_mobile_sdk/h62;

    invoke-direct {v6, p2, p3, p1, v5}, Lads_mobile_sdk/h62;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v3, v4, v6, v0}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_f9

    :goto_f8
    return-object v1

    .line 1241
    :cond_f9
    :goto_f9
    check-cast p3, Lads_mobile_sdk/v01;

    .line 1269
    instance-of p1, p3, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_106

    check-cast p3, Lads_mobile_sdk/q01;

    .line 1270
    iget-object p1, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1271
    check-cast p1, Lads_mobile_sdk/r31;

    return-object p1

    .line 1272
    :cond_106
    instance-of p1, p3, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_10b

    return-object v5

    .line 1273
    :cond_10b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1278
    :cond_111
    const-string p1, "Has video field but \'vast_xml\' is missing."

    invoke-static {p1, v5}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1279
    iget-object p2, p0, Lads_mobile_sdk/v42;->c:Lads_mobile_sdk/ur3;

    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v7, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_122
    :goto_122
    return-object v5
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/n42;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/n42;

    iget v3, v2, Lads_mobile_sdk/n42;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/n42;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/n42;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/n42;-><init>(Lads_mobile_sdk/v42;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/n42;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 164
    iget v4, v2, Lads_mobile_sdk/n42;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3a

    if-ne v4, v5, :cond_32

    iget-object v3, v2, Lads_mobile_sdk/n42;->b:Lcom/google/gson/JsonObject;

    iget-object v2, v2, Lads_mobile_sdk/n42;->a:Lads_mobile_sdk/v42;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 166
    invoke-static {v1, v4, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_48

    return-object v6

    .line 167
    :cond_48
    const-string v4, "images"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 168
    const-string v7, "image"

    .line 169
    invoke-static {v1, v7, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-nez v4, :cond_60

    if-eqz v7, :cond_60

    .line 170
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 175
    :cond_60
    iput-object v0, v2, Lads_mobile_sdk/n42;->a:Lads_mobile_sdk/v42;

    iput-object v1, v2, Lads_mobile_sdk/n42;->b:Lcom/google/gson/JsonObject;

    iput v5, v2, Lads_mobile_sdk/n42;->e:I

    invoke-virtual {v0, v4, v2}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_6d

    return-object v3

    :cond_6d
    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    .line 176
    :goto_70
    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7d

    return-object v6

    .line 192
    :cond_7d
    const-string v1, "text"

    .line 193
    const-string v4, ""

    invoke-static {v3, v1, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    const-string v1, "bg_color"

    invoke-static {v3, v1}, Lads_mobile_sdk/m42;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    const-string v4, "text_color"

    invoke-static {v3, v4}, Lads_mobile_sdk/m42;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 196
    const-string v5, "text_size"

    const/4 v7, -0x1

    invoke-static {v3, v5, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v5

    .line 198
    const-string v7, "allow_pub_rendering"

    const/4 v10, 0x0

    invoke-static {v3, v7, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v16

    .line 202
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 203
    const-string v7, "animation_ms"

    const/16 v10, 0x3e8

    invoke-static {v3, v7, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v7

    .line 204
    sget-object v10, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v10}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    .line 207
    const-string v7, "presentation_ms"

    const/16 v13, 0xfa0

    invoke-static {v3, v7, v13}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    .line 208
    invoke-static {v3, v10}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    if-eqz v1, :cond_c3

    .line 213
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_c1
    move v10, v1

    goto :goto_c6

    :cond_c3
    sget v1, Lads_mobile_sdk/v42;->h:I

    goto :goto_c1

    :goto_c6
    if-eqz v4, :cond_cd

    .line 214
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_cf

    :cond_cd
    sget v1, Lads_mobile_sdk/v42;->i:I

    .line 215
    :goto_cf
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v5, :cond_d6

    move-object v6, v3

    :cond_d6
    if-eqz v6, :cond_dd

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_df

    :cond_dd
    const/16 v3, 0xc

    .line 220
    :goto_df
    invoke-static {v13, v14, v11, v12}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v13

    .line 221
    iget-object v2, v2, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v15

    .line 222
    new-instance v7, Lads_mobile_sdk/ak1;

    move v11, v1

    move v12, v3

    .line 223
    invoke-direct/range {v7 .. v16}, Lads_mobile_sdk/ak1;-><init>(Ljava/lang/String;Ljava/util/List;IIIJLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Z)V

    return-object v7
.end method

.method public final a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 224
    instance-of v3, v0, Lads_mobile_sdk/o42;

    if-eqz v3, :cond_1a

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/o42;

    iget v4, v3, Lads_mobile_sdk/o42;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1a

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/o42;->i:I

    :goto_18
    move-object v9, v3

    goto :goto_20

    :cond_1a
    new-instance v3, Lads_mobile_sdk/o42;

    invoke-direct {v3, v1, v0}, Lads_mobile_sdk/o42;-><init>(Lads_mobile_sdk/v42;Lkotlin/coroutines/Continuation;)V

    goto :goto_18

    :goto_20
    iget-object v0, v9, Lads_mobile_sdk/o42;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 322
    iget v4, v9, Lads_mobile_sdk/o42;->i:I

    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_4f

    if-ne v4, v5, :cond_47

    iget v2, v9, Lads_mobile_sdk/o42;->f:I

    iget v3, v9, Lads_mobile_sdk/o42;->e:I

    iget-wide v4, v9, Lads_mobile_sdk/o42;->d:D

    iget-object v6, v9, Lads_mobile_sdk/o42;->c:Ljava/lang/String;

    iget-object v7, v9, Lads_mobile_sdk/o42;->b:Lcom/google/gson/JsonObject;

    iget-object v8, v9, Lads_mobile_sdk/o42;->a:Lads_mobile_sdk/v42;

    :try_start_3b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_42

    move v12, v2

    move-object v2, v7

    goto/16 :goto_b9

    :catch_42
    move-exception v0

    move v12, v2

    move-object v2, v7

    goto/16 :goto_d1

    .line 323
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez v2, :cond_55

    return-object v11

    .line 329
    :cond_55
    const-string v0, "url"

    .line 330
    const-string v4, ""

    invoke-static {v2, v0, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_64

    return-object v11

    .line 334
    :cond_64
    const-string v0, "scale"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v0, v6, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v15

    .line 335
    const-string v0, "is_transparent"

    invoke-static {v2, v0, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 338
    const-string v0, "width"

    const/4 v6, -0x1

    invoke-static {v2, v0, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v17

    .line 339
    const-string v0, "height"

    invoke-static {v2, v0, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v18

    if-eqz p2, :cond_91

    .line 343
    new-instance v12, Lads_mobile_sdk/km1;

    .line 345
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v0, "parse(...)"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 346
    invoke-direct/range {v12 .. v18}, Lads_mobile_sdk/km1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v12

    :cond_91
    move-wide v6, v15

    move/from16 v13, v17

    move/from16 v12, v18

    .line 357
    :try_start_96
    iget-object v0, v1, Lads_mobile_sdk/v42;->b:Lads_mobile_sdk/xs;

    iput-object v1, v9, Lads_mobile_sdk/o42;->a:Lads_mobile_sdk/v42;

    iput-object v2, v9, Lads_mobile_sdk/o42;->b:Lcom/google/gson/JsonObject;

    iput-object v4, v9, Lads_mobile_sdk/o42;->c:Ljava/lang/String;

    iput-wide v6, v9, Lads_mobile_sdk/o42;->d:D

    iput v13, v9, Lads_mobile_sdk/o42;->e:I

    iput v12, v9, Lads_mobile_sdk/o42;->f:I

    iput v5, v9, Lads_mobile_sdk/o42;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a9} :catch_c8

    move-object v5, v4

    move-object v4, v0

    .line 358
    :try_start_ab
    invoke-static/range {v4 .. v9}, Lads_mobile_sdk/xs;->a(Lads_mobile_sdk/xs;Ljava/lang/String;DZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_c6

    if-ne v0, v3, :cond_b2

    return-object v3

    :cond_b2
    move-wide/from16 v20, v6

    move-object v6, v5

    move-wide/from16 v4, v20

    move-object v8, v1

    move v3, v13

    .line 359
    :goto_b9
    :try_start_b9
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bb} :catch_c4

    move-object v14, v0

    :goto_bc
    move/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v15, v6

    move/from16 v19, v12

    goto :goto_e1

    :catch_c4
    move-exception v0

    goto :goto_d1

    :catch_c6
    move-exception v0

    goto :goto_ca

    :catch_c8
    move-exception v0

    move-object v5, v4

    :goto_ca
    move-wide/from16 v20, v6

    move-object v6, v5

    move-wide/from16 v4, v20

    move-object v8, v1

    move v3, v13

    .line 361
    :goto_d1
    iget-object v7, v8, Lads_mobile_sdk/v42;->c:Lads_mobile_sdk/ur3;

    check-cast v7, Lads_mobile_sdk/as3;

    const-string v9, "Error loading bitmap."

    invoke-virtual {v7, v9, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    new-instance v7, Lads_mobile_sdk/j01;

    invoke-direct {v7, v0, v11, v11, v10}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v14, v7

    goto :goto_bc

    .line 367
    :goto_e1
    instance-of v0, v14, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_100

    .line 368
    new-instance v13, Lads_mobile_sdk/p42;

    invoke-direct/range {v13 .. v19}, Lads_mobile_sdk/p42;-><init>(Lads_mobile_sdk/v01;Ljava/lang/String;DII)V

    .line 369
    const-string v0, "block"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    :try_start_ef
    new-instance v14, Lads_mobile_sdk/q01;

    invoke-virtual {v13}, Lads_mobile_sdk/p42;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v14, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f8} :catch_f9

    goto :goto_104

    :catch_f9
    move-exception v0

    .line 497
    new-instance v14, Lads_mobile_sdk/j01;

    invoke-direct {v14, v0, v11, v11, v10}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_104

    .line 498
    :cond_100
    instance-of v0, v14, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_131

    .line 502
    :goto_104
    const-string v0, "require"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 503
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    instance-of v2, v14, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_117

    check-cast v14, Lads_mobile_sdk/q01;

    .line 505
    iget-object v11, v14, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    goto :goto_122

    .line 506
    :cond_117
    instance-of v2, v14, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_12b

    if-nez v0, :cond_123

    .line 510
    const-string v0, "Error during loading assets."

    .line 511
    invoke-static {v0, v11}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_122
    return-object v11

    .line 512
    :cond_123
    new-instance v0, Lads_mobile_sdk/w01;

    check-cast v14, Lads_mobile_sdk/i01;

    invoke-direct {v0, v14}, Lads_mobile_sdk/w01;-><init>(Lads_mobile_sdk/i01;)V

    throw v0

    .line 516
    :cond_12b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 517
    :cond_131
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
