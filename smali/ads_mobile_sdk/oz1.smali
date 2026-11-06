###### Class ads_mobile_sdk.oz1 (ads_mobile_sdk.oz1)
.class public final Lads_mobile_sdk/oz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/zx1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zx1;)V
    .registers 3

    .line 1
    const-string v0, "mraidEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/oz1;->a:Lads_mobile_sdk/zx1;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/cy1;)Lkotlin/Unit;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/oz1;->a:Lads_mobile_sdk/zx1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/zx1;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    :goto_f
    check-cast p1, Lkotlin/Unit;

    return-object p1
.end method
