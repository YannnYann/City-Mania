###### Class ads_mobile_sdk.ze (ads_mobile_sdk.ze)
.class public final Lads_mobile_sdk/ze;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/hf;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Lkotlinx/coroutines/sync/Mutex;

.field public h:J

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/hf;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ze;->j:Lads_mobile_sdk/hf;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ze;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ze;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ze;->k:I

    iget-object p1, p0, Lads_mobile_sdk/ze;->j:Lads_mobile_sdk/hf;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, v0, p0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/jf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
