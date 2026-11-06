###### Class ads_mobile_sdk.vl2 (ads_mobile_sdk.vl2)
.class public final Lads_mobile_sdk/vl2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Lads_mobile_sdk/rr3;

.field public e:Ljava/io/Closeable;

.field public f:Ljava/lang/Object;

.field public g:Lads_mobile_sdk/om2;

.field public h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public i:I

.field public j:I

.field public k:J

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lads_mobile_sdk/im2;

.field public n:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vl2;->m:Lads_mobile_sdk/im2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vl2;->l:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/vl2;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/vl2;->n:I

    iget-object p1, p0, Lads_mobile_sdk/vl2;->m:Lads_mobile_sdk/im2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
