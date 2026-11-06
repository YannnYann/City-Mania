###### Class ads_mobile_sdk.d43 (ads_mobile_sdk.d43)
.class public final Lads_mobile_sdk/d43;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lads_mobile_sdk/hj2;

.field public d:Lads_mobile_sdk/rr3;

.field public e:Lads_mobile_sdk/rr3;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/j43;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d43;->g:Lads_mobile_sdk/j43;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d43;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/d43;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/d43;->h:I

    iget-object v0, p0, Lads_mobile_sdk/d43;->g:Lads_mobile_sdk/j43;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/j43;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
