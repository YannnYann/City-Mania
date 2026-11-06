###### Class ads_mobile_sdk.a71 (ads_mobile_sdk.a71)
.class public final Lads_mobile_sdk/a71;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/Map;

.field public c:Lads_mobile_sdk/e81;

.field public d:Ljava/lang/String;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/o71;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a71;->f:Lads_mobile_sdk/o71;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a71;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/a71;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/a71;->g:I

    iget-object p1, p0, Lads_mobile_sdk/a71;->f:Lads_mobile_sdk/o71;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, p0}, Lads_mobile_sdk/o71;->a(Lads_mobile_sdk/f81;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
