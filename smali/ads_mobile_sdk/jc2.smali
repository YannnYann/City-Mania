###### Class ads_mobile_sdk.jc2 (ads_mobile_sdk.jc2)
.class public final Lads_mobile_sdk/jc2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/lc2;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Landroidx/work/WorkManager;

.field public d:Ljava/lang/Class;

.field public e:Landroidx/work/Constraints;

.field public f:Ljava/lang/String;

.field public g:Landroidx/work/Data$Builder;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lads_mobile_sdk/lc2;

.field public j:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lc2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jc2;->i:Lads_mobile_sdk/lc2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jc2;->h:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/jc2;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/jc2;->j:I

    iget-object p1, p0, Lads_mobile_sdk/jc2;->i:Lads_mobile_sdk/lc2;

    invoke-static {p1, p0}, Lads_mobile_sdk/lc2;->a(Lads_mobile_sdk/lc2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
