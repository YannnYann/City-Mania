###### Class ads_mobile_sdk.y53 (ads_mobile_sdk.y53)
.class public final Lads_mobile_sdk/y53;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/q01;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/rr3;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/c63;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y53;->e:Lads_mobile_sdk/c63;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y53;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/y53;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/y53;->f:I

    iget-object v0, p0, Lads_mobile_sdk/y53;->e:Lads_mobile_sdk/c63;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
