###### Class ads_mobile_sdk.tr2 (ads_mobile_sdk.tr2)
.class public final Lads_mobile_sdk/tr2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Closeable;

.field public d:Lads_mobile_sdk/uj2;

.field public e:Ljava/util/List;

.field public f:Lads_mobile_sdk/pt2;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lads_mobile_sdk/pt2;

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tr2;->h:Lads_mobile_sdk/pt2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tr2;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/tr2;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/tr2;->i:I

    iget-object p1, p0, Lads_mobile_sdk/tr2;->h:Lads_mobile_sdk/pt2;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/pt2;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
