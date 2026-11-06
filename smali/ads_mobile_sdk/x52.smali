###### Class ads_mobile_sdk.x52 (ads_mobile_sdk.x52)
.class public final Lads_mobile_sdk/x52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/q52;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q52;)V
    .registers 3

    .line 1
    const-string v0, "nativeJavascriptEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lads_mobile_sdk/x52;->a:Lads_mobile_sdk/q52;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 13
    iget-object v0, p0, Lads_mobile_sdk/x52;->a:Lads_mobile_sdk/q52;

    invoke-interface {v0, p1}, Lads_mobile_sdk/q52;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
