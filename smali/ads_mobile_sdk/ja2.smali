###### Class ads_mobile_sdk.ja2 (ads_mobile_sdk.ja2)
.class public final Lads_mobile_sdk/ja2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ka2;

.field public b:Lads_mobile_sdk/zt;

.field public c:Ljava/lang/String;

.field public d:Lads_mobile_sdk/e81;

.field public e:Ljava/lang/String;

.field public f:Lads_mobile_sdk/e81;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lads_mobile_sdk/ka2;

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ka2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ja2;->h:Lads_mobile_sdk/ka2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ja2;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ja2;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ja2;->i:I

    iget-object p1, p0, Lads_mobile_sdk/ja2;->h:Lads_mobile_sdk/ka2;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/ka2;->a(Lads_mobile_sdk/zt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
