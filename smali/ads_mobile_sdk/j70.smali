###### Class ads_mobile_sdk.j70 (ads_mobile_sdk.j70)
.class public final Lads_mobile_sdk/j70;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/k70;

.field public b:Lorg/chromium/net/CronetEngine$Builder;

.field public c:Ljava/lang/Long;

.field public d:Lorg/chromium/net/CronetEngine$Builder;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/k70;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/j70;->f:Lads_mobile_sdk/k70;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/j70;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/j70;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/j70;->g:I

    iget-object p1, p0, Lads_mobile_sdk/j70;->f:Lads_mobile_sdk/k70;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/k70;Lorg/chromium/net/CronetEngine$Builder;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
