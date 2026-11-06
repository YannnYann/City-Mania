###### Class ads_mobile_sdk.xa2 (ads_mobile_sdk.xa2)
.class public final Lads_mobile_sdk/xa2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Closeable;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

.field public e:Lads_mobile_sdk/rr3;

.field public f:Lads_mobile_sdk/rr3;

.field public g:Lads_mobile_sdk/yt;

.field public h:J

.field public i:Z

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lads_mobile_sdk/bb2;

.field public l:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xa2;->k:Lads_mobile_sdk/bb2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xa2;->j:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/xa2;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/xa2;->l:I

    iget-object p1, p0, Lads_mobile_sdk/xa2;->k:Lads_mobile_sdk/bb2;

    invoke-static {p1, p0}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
