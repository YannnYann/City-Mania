###### Class ads_mobile_sdk.zc3 (ads_mobile_sdk.zc3)
.class public final Lads_mobile_sdk/zc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/m;


# instance fields
.field public final a:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;)V
    .registers 3

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/zc3;->a:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/j;)Ljava/lang/Object;
    .registers 5

    .line 3
    const-string v0, "clear"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 5
    iget-object p1, p0, Lads_mobile_sdk/zc3;->a:Lads_mobile_sdk/g30;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/g30;->B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1b

    return-object p1

    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 8
    :cond_1e
    const-string v0, "cookie"

    .line 9
    invoke-static {p1, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/zc3;->a:Lads_mobile_sdk/g30;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/g30;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_37

    return-object p1

    :cond_37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 14
    :cond_3a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
