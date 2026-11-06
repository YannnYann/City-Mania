###### Class ads_mobile_sdk.fz1 (ads_mobile_sdk.fz1)
.class public final Lads_mobile_sdk/fz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ix1;

.field public final b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ix1;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 4

    .line 1
    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/fz1;->a:Lads_mobile_sdk/ix1;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/fz1;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lads_mobile_sdk/r31;)Lkotlin/Unit;
    .registers 11

    .line 2
    iget-object v0, p2, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/fz1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/dz1;

    invoke-direct {v5, p0, p2, v1}, Lads_mobile_sdk/dz1;-><init>(Lads_mobile_sdk/fz1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 13
    :cond_16
    const-string p2, "forceOrientation"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 14
    const-string v2, "allowOrientationChange"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_33

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_34

    :cond_33
    const/4 p1, 0x1

    :goto_34
    if-eqz p2, :cond_42

    .line 18
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "toLowerCase(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    move-object p2, v1

    .line 19
    :goto_43
    const-string v2, "landscape"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 p1, 0x6

    goto :goto_5d

    .line 20
    :cond_4d
    const-string v2, "portrait"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    const/4 p1, 0x7

    goto :goto_5d

    :cond_57
    if-eqz p1, :cond_5b

    const/4 p1, -0x1

    goto :goto_5d

    :cond_5b
    const/16 p1, 0xe

    .line 29
    :goto_5d
    iget-object v2, p0, Lads_mobile_sdk/fz1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ez1;

    invoke-direct {v5, v0, p1, v1}, Lads_mobile_sdk/ez1;-><init>(Lads_mobile_sdk/ay0;ILkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
