###### Class ads_mobile_sdk.tc3 (ads_mobile_sdk.tc3)
.class public final Lads_mobile_sdk/tc3;
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
    iput-object p1, p0, Lads_mobile_sdk/tc3;->a:Lads_mobile_sdk/fi2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 19
    const-string p1, "enabled"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 21
    const-string p2, "true"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 22
    const-string p2, "false"

    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 27
    :cond_1c
    iget-object p2, p0, Lads_mobile_sdk/tc3;->a:Lads_mobile_sdk/fi2;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    :try_start_25
    iget-object p2, p2, Lads_mobile_sdk/fi2;->e:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "getValue(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/v41;

    .line 29
    check-cast p2, Lads_mobile_sdk/w41;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-class p3, Lads_mobile_sdk/w41;

    monitor-enter p3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_4a

    .line 31
    :try_start_3a
    iget-object p2, p2, Lads_mobile_sdk/w41;->a:Lads_mobile_sdk/x41;

    const-string v0, "paidv2_user_option"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lads_mobile_sdk/x41;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    monitor-exit p3

    goto :goto_51

    :catchall_47
    move-exception p1

    monitor-exit p3
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_47

    :try_start_49
    throw p1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p1

    .line 33
    const-string p2, "Exception while setting GpidV2 UserOption"

    const/4 p3, 0x4

    invoke-static {p2, p1, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 34
    :goto_51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->A:Lads_mobile_sdk/u11;

    return-object v0
.end method
