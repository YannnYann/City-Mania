###### Class ads_mobile_sdk.ni1 (ads_mobile_sdk.ni1)
.class public final Lads_mobile_sdk/ni1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic d:Lads_mobile_sdk/oi1;

.field public e:Lads_mobile_sdk/v01;

.field public f:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/oi1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ni1;->d:Lads_mobile_sdk/oi1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ni1;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ni1;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ni1;->b:I

    iget-object p1, p0, Lads_mobile_sdk/ni1;->d:Lads_mobile_sdk/oi1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/oi1;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
