###### Class ads_mobile_sdk.ol2 (ads_mobile_sdk.ol2)
.class public final Lads_mobile_sdk/ol2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/im2;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Closeable;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/im2;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ol2;->f:Lads_mobile_sdk/im2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ol2;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ol2;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ol2;->g:I

    iget-object p1, p0, Lads_mobile_sdk/ol2;->f:Lads_mobile_sdk/im2;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/jk2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
