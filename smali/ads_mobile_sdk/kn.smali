###### Class ads_mobile_sdk.kn (ads_mobile_sdk.kn)
.class public final Lads_mobile_sdk/kn;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/pn;

.field public b:Lads_mobile_sdk/jm;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/pn;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/kn;->d:Lads_mobile_sdk/pn;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/kn;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/kn;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/kn;->e:I

    iget-object p1, p0, Lads_mobile_sdk/kn;->d:Lads_mobile_sdk/pn;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2, p0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lcom/google/gson/JsonObject;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
