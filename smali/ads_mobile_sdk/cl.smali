###### Class ads_mobile_sdk.cl (ads_mobile_sdk.cl)
.class public final Lads_mobile_sdk/cl;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/dl;

.field public c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dl;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cl;->b:Lads_mobile_sdk/dl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cl;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/cl;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/cl;->c:I

    iget-object v0, p0, Lads_mobile_sdk/cl;->b:Lads_mobile_sdk/dl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lads_mobile_sdk/dl;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/ks3;ZLads_mobile_sdk/m13;Lads_mobile_sdk/md1;Lads_mobile_sdk/pb;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
