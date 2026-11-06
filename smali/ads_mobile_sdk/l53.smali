###### Class ads_mobile_sdk.l53 (ads_mobile_sdk.l53)
.class public final Lads_mobile_sdk/l53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/fi2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fi2;)V
    .registers 3

    .line 1
    const-string v0, "paidLifecycleWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/l53;->a:Lads_mobile_sdk/fi2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/l53;->a:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Lads_mobile_sdk/fi2;->a()V

    .line 20
    iget-object p1, p0, Lads_mobile_sdk/l53;->a:Lads_mobile_sdk/fi2;

    invoke-virtual {p1}, Lads_mobile_sdk/fi2;->b()V

    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->z:Lads_mobile_sdk/u11;

    return-object v0
.end method
