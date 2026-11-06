###### Class ads_mobile_sdk.yj0 (ads_mobile_sdk.yj0)
.class public final Lads_mobile_sdk/yj0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/io/Closeable;

.field public d:Landroid/app/Activity;

.field public e:Ljava/util/ArrayList;

.field public f:I

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/ok0;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yj0;->j:Lads_mobile_sdk/ok0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yj0;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/yj0;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/yj0;->k:I

    iget-object p1, p0, Lads_mobile_sdk/yj0;->j:Lads_mobile_sdk/ok0;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/ok0;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
