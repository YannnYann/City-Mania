###### Class ads_mobile_sdk.di (ads_mobile_sdk.di)
.class public final Lads_mobile_sdk/di;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lads_mobile_sdk/ei;

.field public d:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ei;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/di;->c:Lads_mobile_sdk/ei;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/di;->b:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/di;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/di;->d:I

    iget-object p1, p0, Lads_mobile_sdk/di;->c:Lads_mobile_sdk/ei;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/ei;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
