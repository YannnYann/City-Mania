###### Class ads_mobile_sdk.c02 (ads_mobile_sdk.c02)
.class public final Lads_mobile_sdk/c02;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/d02;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lads_mobile_sdk/d02;

.field public d:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/d02;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c02;->c:Lads_mobile_sdk/d02;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c02;->b:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/c02;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/c02;->d:I

    iget-object p1, p0, Lads_mobile_sdk/c02;->c:Lads_mobile_sdk/d02;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lads_mobile_sdk/d02;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
