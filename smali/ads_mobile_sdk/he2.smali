###### Class ads_mobile_sdk.he2 (ads_mobile_sdk.he2)
.class public final Lads_mobile_sdk/he2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/je2;

.field public b:Landroid/view/View;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/je2;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/he2;->e:Lads_mobile_sdk/je2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/he2;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/he2;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/he2;->f:I

    iget-object p1, p0, Lads_mobile_sdk/he2;->e:Lads_mobile_sdk/je2;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lads_mobile_sdk/je2;->a(Lads_mobile_sdk/je2;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
