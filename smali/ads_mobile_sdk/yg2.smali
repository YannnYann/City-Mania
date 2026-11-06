###### Class ads_mobile_sdk.yg2 (ads_mobile_sdk.yg2)
.class public final Lads_mobile_sdk/yg2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lads_mobile_sdk/r31;

.field public c:Z

.field public d:Z

.field public e:Z

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/ah2;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yg2;->g:Lads_mobile_sdk/ah2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yg2;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/yg2;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/yg2;->h:I

    iget-object v0, p0, Lads_mobile_sdk/yg2;->g:Lads_mobile_sdk/ah2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
