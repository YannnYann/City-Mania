###### Class ads_mobile_sdk.ef (ads_mobile_sdk.ef)
.class public final Lads_mobile_sdk/ef;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/hf;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/hf;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ef;->e:Lads_mobile_sdk/hf;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ef;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ef;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ef;->f:I

    iget-object p1, p0, Lads_mobile_sdk/ef;->e:Lads_mobile_sdk/hf;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
