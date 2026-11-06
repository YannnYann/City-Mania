###### Class ads_mobile_sdk.ak3 (ads_mobile_sdk.ak3)
.class public final Lads_mobile_sdk/ak3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

.field public d:Ljava/util/List;

.field public e:Ljava/util/Iterator;

.field public f:Lads_mobile_sdk/pu;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ak3;->h:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ak3;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ak3;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ak3;->i:I

    iget-object p1, p0, Lads_mobile_sdk/ak3;->h:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    invoke-static {p1, p0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
