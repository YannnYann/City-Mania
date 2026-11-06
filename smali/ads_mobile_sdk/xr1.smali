###### Class ads_mobile_sdk.xr1 (ads_mobile_sdk.xr1)
.class public final Lads_mobile_sdk/xr1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkotlinx/coroutines/CompletableDeferred;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/yr1;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xr1;->d:Lads_mobile_sdk/yr1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xr1;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/xr1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/xr1;->e:I

    iget-object p1, p0, Lads_mobile_sdk/xr1;->d:Lads_mobile_sdk/yr1;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
