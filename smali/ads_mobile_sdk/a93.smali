###### Class ads_mobile_sdk.a93 (ads_mobile_sdk.a93)
.class public final Lads_mobile_sdk/a93;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public d:Ljava/util/Map;

.field public e:Lads_mobile_sdk/j53;

.field public f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public g:Lads_mobile_sdk/rr3;

.field public h:Lads_mobile_sdk/rr3;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/b93;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a93;->j:Lads_mobile_sdk/b93;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a93;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/a93;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/a93;->k:I

    iget-object v0, p0, Lads_mobile_sdk/a93;->j:Lads_mobile_sdk/b93;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/b93;->a(Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
