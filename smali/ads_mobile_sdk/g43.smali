###### Class ads_mobile_sdk.g43 (ads_mobile_sdk.g43)
.class public final Lads_mobile_sdk/g43;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/gson/JsonObject;

.field public b:Lcom/google/gson/JsonObject;

.field public c:Lcom/google/gson/JsonObject;

.field public d:Ljava/lang/String;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/j43;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g43;->f:Lads_mobile_sdk/j43;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g43;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/g43;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/g43;->g:I

    iget-object p1, p0, Lads_mobile_sdk/g43;->f:Lads_mobile_sdk/j43;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/j43;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
