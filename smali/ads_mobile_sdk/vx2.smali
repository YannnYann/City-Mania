###### Class ads_mobile_sdk.vx2 (ads_mobile_sdk.vx2)
.class public final Lads_mobile_sdk/vx2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public h:Ljava/lang/Object;

.field public i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lads_mobile_sdk/yx2;

.field public m:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vx2;->l:Lads_mobile_sdk/yx2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vx2;->k:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/vx2;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/vx2;->m:I

    iget-object p1, p0, Lads_mobile_sdk/vx2;->l:Lads_mobile_sdk/yx2;

    invoke-static {p1, p0}, Lads_mobile_sdk/yx2;->a(Lads_mobile_sdk/yx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
