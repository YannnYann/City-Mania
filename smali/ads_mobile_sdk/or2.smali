###### Class ads_mobile_sdk.or2 (ads_mobile_sdk.or2)
.class public final Lads_mobile_sdk/or2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/pt2;

.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public d:J

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/pt2;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/or2;->f:Lads_mobile_sdk/pt2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/or2;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/or2;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/or2;->g:I

    iget-object p1, p0, Lads_mobile_sdk/or2;->f:Lads_mobile_sdk/pt2;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p0}, Lads_mobile_sdk/pt2;->b(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
