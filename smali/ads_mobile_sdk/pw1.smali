###### Class ads_mobile_sdk.pw1 (ads_mobile_sdk.pw1)
.class public final Lads_mobile_sdk/pw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/qn;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn;)V
    .registers 3

    .line 1
    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/pw1;->a:Lads_mobile_sdk/qn;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->H:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    .line 20
    iget-object p1, p0, Lads_mobile_sdk/pw1;->a:Lads_mobile_sdk/qn;

    .line 21
    iget-object p1, p1, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 22
    check-cast p1, Lads_mobile_sdk/rs1;

    .line 23
    iget v7, p1, Lads_mobile_sdk/rs1;->c:I

    .line 24
    new-instance p1, Lads_mobile_sdk/q01;

    .line 25
    new-instance v0, Lads_mobile_sdk/ow1;

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/ow1;-><init>(JJJI)V

    .line 26
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
