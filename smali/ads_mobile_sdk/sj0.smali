###### Class ads_mobile_sdk.sj0 (ads_mobile_sdk.sj0)
.class public final Lads_mobile_sdk/sj0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ok0;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/rr3;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/ok0;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ok0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sj0;->e:Lads_mobile_sdk/ok0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sj0;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/sj0;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/sj0;->f:I

    iget-object v0, p0, Lads_mobile_sdk/sj0;->e:Lads_mobile_sdk/ok0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
