###### Class ads_mobile_sdk.fu3 (ads_mobile_sdk.fu3)
.class public final Lads_mobile_sdk/fu3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lads_mobile_sdk/rr3;

.field public d:Lads_mobile_sdk/rr3;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/nu3;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nu3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fu3;->f:Lads_mobile_sdk/nu3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fu3;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/fu3;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/fu3;->g:I

    iget-object v0, p0, Lads_mobile_sdk/fu3;->f:Lads_mobile_sdk/nu3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/nu3;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
