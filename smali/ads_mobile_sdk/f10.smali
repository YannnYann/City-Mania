###### Class ads_mobile_sdk.f10 (ads_mobile_sdk.f10)
.class public final Lads_mobile_sdk/f10;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/g30;

.field public b:Lads_mobile_sdk/s00;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/g30;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f10;->d:Lads_mobile_sdk/g30;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f10;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/f10;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/f10;->e:I

    iget-object p1, p0, Lads_mobile_sdk/f10;->d:Lads_mobile_sdk/g30;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/g30;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
