###### Class ads_mobile_sdk.mn (ads_mobile_sdk.mn)
.class public final Lads_mobile_sdk/mn;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/pn;

.field public b:Lads_mobile_sdk/jm;

.field public c:Lcom/google/gson/JsonObject;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/pn;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mn;->f:Lads_mobile_sdk/pn;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mn;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/mn;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/mn;->g:I

    iget-object p1, p0, Lads_mobile_sdk/mn;->f:Lads_mobile_sdk/pn;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, p0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/jm;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
