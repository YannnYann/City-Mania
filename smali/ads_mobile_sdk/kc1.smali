###### Class ads_mobile_sdk.kc1 (ads_mobile_sdk.kc1)
.class public final Lads_mobile_sdk/kc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;

.field public final e:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/kc1;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/kc1;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/kc1;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/kc1;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/kc1;->e:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/kc1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/dx3;

    iget-object v0, p0, Lads_mobile_sdk/kc1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lads_mobile_sdk/kc1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lads_mobile_sdk/kc1;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/g83;

    iget-object v0, p0, Lads_mobile_sdk/kc1;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/ex0;

    .line 3
    const-string v0, "userAgentProviderImpl"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewInitializationScope"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    new-instance v1, Lads_mobile_sdk/ta1;

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ta1;-><init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;)V

    return-object v1
.end method
