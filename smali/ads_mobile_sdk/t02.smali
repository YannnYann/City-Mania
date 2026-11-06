###### Class ads_mobile_sdk.t02 (ads_mobile_sdk.t02)
.class public final Lads_mobile_sdk/t02;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/g12;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g12;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/t02;->d:Lads_mobile_sdk/g12;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/t02;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/t02;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/t02;->e:I

    iget-object p1, p0, Lads_mobile_sdk/t02;->d:Lads_mobile_sdk/g12;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lads_mobile_sdk/g12;->a(Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
