###### Class ads_mobile_sdk.p72 (ads_mobile_sdk.p72)
.class public final Lads_mobile_sdk/p72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/n72;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/n72;)V
    .registers 3

    .line 1
    const-string v0, "nativeOnePointFiveOverlayFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/p72;->a:Lads_mobile_sdk/n72;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 17
    iget-object v0, p0, Lads_mobile_sdk/p72;->a:Lads_mobile_sdk/n72;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v0, p1}, Lads_mobile_sdk/n72;->b(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_10

    return-object p1

    :cond_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
