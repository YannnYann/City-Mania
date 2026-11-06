###### Class ads_mobile_sdk.in (ads_mobile_sdk.in)
.class public final Lads_mobile_sdk/in;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/pn;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/pn;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/in;->d:Lads_mobile_sdk/pn;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/in;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/in;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/in;->e:I

    iget-object p1, p0, Lads_mobile_sdk/in;->d:Lads_mobile_sdk/pn;

    invoke-static {p1, p0}, Lads_mobile_sdk/pn;->c(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
