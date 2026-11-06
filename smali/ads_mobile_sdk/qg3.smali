###### Class ads_mobile_sdk.qg3 (ads_mobile_sdk.qg3)
.class public final Lads_mobile_sdk/qg3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/eh3;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qg3;->d:Lads_mobile_sdk/eh3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qg3;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/qg3;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/qg3;->e:I

    iget-object p1, p0, Lads_mobile_sdk/qg3;->d:Lads_mobile_sdk/eh3;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/eh3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
