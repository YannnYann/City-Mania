###### Class ads_mobile_sdk.ws (ads_mobile_sdk.ws)
.class public final Lads_mobile_sdk/ws;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/xs;

.field public b:D

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/xs;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xs;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ws;->e:Lads_mobile_sdk/xs;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ws;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ws;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ws;->f:I

    iget-object v0, p0, Lads_mobile_sdk/ws;->e:Lads_mobile_sdk/xs;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/xs;->a(Lads_mobile_sdk/xs;Ljava/lang/String;DZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
