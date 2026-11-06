###### Class ads_mobile_sdk.ta1 (ads_mobile_sdk.ta1)
.class public final Lads_mobile_sdk/ta1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/dx3;

.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lads_mobile_sdk/g83;

.field public final synthetic e:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ta1;->a:Lads_mobile_sdk/dx3;

    iput-object p2, p0, Lads_mobile_sdk/ta1;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lads_mobile_sdk/ta1;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lads_mobile_sdk/ta1;->d:Lads_mobile_sdk/g83;

    iput-object p5, p0, Lads_mobile_sdk/ta1;->e:Lads_mobile_sdk/ex0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ta1;->a:Lads_mobile_sdk/dx3;

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/ta1;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v2, p0, Lads_mobile_sdk/ta1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iget-object v3, p0, Lads_mobile_sdk/ta1;->d:Lads_mobile_sdk/g83;

    .line 6
    iget-object v4, p0, Lads_mobile_sdk/ta1;->e:Lads_mobile_sdk/ex0;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v5, "backgroundScope"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "webViewInitializationScope"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "rootTraceCreator"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "flags"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object v1, v0, Lads_mobile_sdk/dx3;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 90
    iput-object v2, v0, Lads_mobile_sdk/dx3;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 91
    iput-object v3, v0, Lads_mobile_sdk/dx3;->f:Lads_mobile_sdk/g83;

    .line 92
    iput-object v4, v0, Lads_mobile_sdk/dx3;->g:Lads_mobile_sdk/ex0;

    .line 93
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
