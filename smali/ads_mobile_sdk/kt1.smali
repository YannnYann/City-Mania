###### Class ads_mobile_sdk.kt1 (ads_mobile_sdk.kt1)
.class public final Lads_mobile_sdk/kt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ls0;

.field public final b:Lads_mobile_sdk/i2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ls0;Lads_mobile_sdk/i2;)V
    .registers 4

    .line 1
    const-string v0, "firebaseAnalyticsAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/kt1;->a:Lads_mobile_sdk/ls0;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/kt1;->b:Lads_mobile_sdk/i2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 27
    const-string p1, "eventName"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_d

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 28
    :cond_d
    const-string p3, "eventId"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1a

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :cond_1a
    sget-object p3, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 33
    const-string v0, "_ac"

    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2f

    .line 35
    :cond_25
    sget-object p3, Lads_mobile_sdk/is0;->c:Lads_mobile_sdk/is0;

    .line 36
    const-string v0, "_ai"

    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 41
    :goto_2f
    iget-object p1, p0, Lads_mobile_sdk/kt1;->a:Lads_mobile_sdk/ls0;

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/kt1;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {p1, p3, v0, p2}, Lads_mobile_sdk/ls0;->a(Lads_mobile_sdk/ls0;Lads_mobile_sdk/is0;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    .line 46
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_43

    return-object p1

    :cond_43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 47
    :cond_46
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->V:Lads_mobile_sdk/u11;

    return-object v0
.end method
