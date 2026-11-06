###### Class ads_mobile_sdk.ah3 (ads_mobile_sdk.ah3)
.class public final Lads_mobile_sdk/ah3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

.field public c:Ljava/lang/String;

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/eh3;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ah3;->f:Lads_mobile_sdk/eh3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ah3;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ah3;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ah3;->g:I

    iget-object p1, p0, Lads_mobile_sdk/ah3;->f:Lads_mobile_sdk/eh3;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/eh3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
