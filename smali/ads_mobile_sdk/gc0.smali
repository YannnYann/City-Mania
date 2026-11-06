###### Class ads_mobile_sdk.gc0 (ads_mobile_sdk.gc0)
.class public final Lads_mobile_sdk/gc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/v3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v3;)V
    .registers 3

    .line 1
    const-string v0, "adEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/gc0;->a:Lads_mobile_sdk/v3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 19
    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_11

    goto :goto_21

    .line 23
    :cond_11
    iget-object p2, p0, Lads_mobile_sdk/gc0;->a:Lads_mobile_sdk/v3;

    invoke-virtual {p2, p1, p3}, Lads_mobile_sdk/v3;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1e

    return-object p1

    :cond_1e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 24
    const-string p3, "No asset name provided in custom click GMSG."

    invoke-static {p3, p1, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->H:Lads_mobile_sdk/u11;

    return-object v0
.end method
