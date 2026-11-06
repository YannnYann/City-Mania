###### Class ads_mobile_sdk.rs3 (ads_mobile_sdk.rs3)
.class public final Lads_mobile_sdk/rs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CopyableThreadContextElement;


# static fields
.field public static final b:Lads_mobile_sdk/qs3;


# instance fields
.field public final a:Lads_mobile_sdk/fs3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/qs3;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/qs3;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lads_mobile_sdk/fs3;

    invoke-direct {v0}, Lads_mobile_sdk/fs3;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/rs3;->a:Lads_mobile_sdk/fs3;

    return-void
.end method


# virtual methods
.method public final copyForChild()Lkotlinx/coroutines/CopyableThreadContextElement;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/rs3;

    invoke-direct {v0}, Lads_mobile_sdk/rs3;-><init>()V

    return-object v0
.end method

.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3

    .line 12
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->fold(Lkotlinx/coroutines/CopyableThreadContextElement;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->get(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    return-object v0
.end method

.method public final mergeForChild(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext;
    .registers 3

    .line 2
    const-string v0, "overwritingElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lads_mobile_sdk/rs3;

    invoke-direct {p1}, Lads_mobile_sdk/rs3;-><init>()V

    return-object p1
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->minusKey(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->plus(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .registers 4

    .line 12
    check-cast p2, Lads_mobile_sdk/es3;

    .line 13
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/rs3;->a:Lads_mobile_sdk/fs3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p1, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    .line 59
    iget-object v0, p2, Lads_mobile_sdk/es3;->a:Lads_mobile_sdk/rr3;

    .line 60
    invoke-static {p1, v0}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    .line 61
    iget-object p2, p2, Lads_mobile_sdk/es3;->b:Lads_mobile_sdk/fs3;

    .line 62
    iput-object p2, p1, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    return-void
.end method

.method public final updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .registers 6

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/rs3;->a:Lads_mobile_sdk/fs3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 40
    new-instance v1, Lads_mobile_sdk/es3;

    iget-object v2, p1, Lads_mobile_sdk/fs3;->a:Lads_mobile_sdk/rr3;

    .line 41
    invoke-static {v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    .line 43
    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/es3;-><init>(Lads_mobile_sdk/rr3;Lads_mobile_sdk/fs3;)V

    .line 44
    iput-object p1, v0, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    return-object v1
.end method
