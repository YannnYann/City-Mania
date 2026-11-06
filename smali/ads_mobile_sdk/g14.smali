###### Class ads_mobile_sdk.g14 (ads_mobile_sdk.g14)
.class public final Lads_mobile_sdk/g14;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lads_mobile_sdk/rr3;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/r14;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g14;->d:Lads_mobile_sdk/r14;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g14;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/g14;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/g14;->e:I

    iget-object p1, p0, Lads_mobile_sdk/g14;->d:Lads_mobile_sdk/r14;

    invoke-static {p1, p0}, Lads_mobile_sdk/r14;->c(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
