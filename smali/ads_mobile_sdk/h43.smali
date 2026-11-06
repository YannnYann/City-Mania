###### Class ads_mobile_sdk.h43 (ads_mobile_sdk.h43)
.class public final Lads_mobile_sdk/h43;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/j43;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/h43;->d:Lads_mobile_sdk/j43;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/h43;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/h43;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/h43;->e:I

    iget-object p1, p0, Lads_mobile_sdk/h43;->d:Lads_mobile_sdk/j43;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
