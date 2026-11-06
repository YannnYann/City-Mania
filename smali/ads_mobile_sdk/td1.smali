###### Class ads_mobile_sdk.td1 (ads_mobile_sdk.td1)
.class public final Lads_mobile_sdk/td1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/lo;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lo;)V
    .registers 3

    .line 1
    const-string v0, "backButtonStateDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/td1;->a:Lads_mobile_sdk/lo;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 25
    const-string p1, "disabled"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    if-eqz p1, :cond_13

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p2, :cond_13

    move p1, p2

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 26
    :goto_14
    iget-object p3, p0, Lads_mobile_sdk/td1;->a:Lads_mobile_sdk/lo;

    xor-int/2addr p1, p2

    check-cast p3, Lads_mobile_sdk/mo;

    .line 27
    iget-object p2, p3, Lads_mobile_sdk/mo;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->r:Lads_mobile_sdk/u11;

    return-object v0
.end method
