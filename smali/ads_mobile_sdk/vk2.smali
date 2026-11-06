###### Class ads_mobile_sdk.vk2 (ads_mobile_sdk.vk2)
.class public final Lads_mobile_sdk/vk2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/al2;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public c:Lads_mobile_sdk/j53;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Lads_mobile_sdk/i2;

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lads_mobile_sdk/al2;

.field public l:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vk2;->k:Lads_mobile_sdk/al2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vk2;->j:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/vk2;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/vk2;->l:I

    iget-object v0, p0, Lads_mobile_sdk/vk2;->k:Lads_mobile_sdk/al2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/rk2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
