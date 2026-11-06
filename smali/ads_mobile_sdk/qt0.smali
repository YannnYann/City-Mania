###### Class ads_mobile_sdk.qt0 (ads_mobile_sdk.qt0)
.class public final Lads_mobile_sdk/qt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zr1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zy;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qt0;->a:Lads_mobile_sdk/zy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lads_mobile_sdk/or1;)Ljava/lang/Object;
    .registers 6

    .line 2
    check-cast p1, Lads_mobile_sdk/a04;

    .line 3
    new-instance v0, Lads_mobile_sdk/pt0;

    iget-object v1, p0, Lads_mobile_sdk/qt0;->a:Lads_mobile_sdk/zy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/pt0;-><init>(Lads_mobile_sdk/zy;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v0, p2}, Lads_mobile_sdk/a04;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
