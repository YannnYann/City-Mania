###### Class ads_mobile_sdk.rh1 (ads_mobile_sdk.rh1)
.class public final Lads_mobile_sdk/rh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/mh1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/th1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/th1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rh1;->a:Lads_mobile_sdk/th1;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 9

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/rh1;->a:Lads_mobile_sdk/th1;

    .line 50
    iget-object v1, v0, Lads_mobile_sdk/th1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 51
    new-instance v4, Lads_mobile_sdk/ph1;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lads_mobile_sdk/ph1;-><init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
