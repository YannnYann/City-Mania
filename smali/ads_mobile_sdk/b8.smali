###### Class ads_mobile_sdk.b8 (ads_mobile_sdk.b8)
.class public final Lads_mobile_sdk/b8;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/r6;

.field public final d:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r6;Lads_mobile_sdk/ex0;)V
    .registers 5

    .line 1
    const-string v0, "adQualityDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 16
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/b8;->c:Lads_mobile_sdk/r6;

    iput-object p2, p0, Lads_mobile_sdk/b8;->d:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 18
    iget-object p1, p0, Lads_mobile_sdk/b8;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v0, "key"

    const-string v1, "gads:ad_quality_metrics:enabled"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 37
    iget-object p1, p0, Lads_mobile_sdk/b8;->c:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 38
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    new-instance v3, Lads_mobile_sdk/i7;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lads_mobile_sdk/i7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 40
    :cond_2e
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
