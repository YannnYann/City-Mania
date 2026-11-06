###### Class ads_mobile_sdk.e40 (ads_mobile_sdk.e40)
.class public abstract Lads_mobile_sdk/e40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/CoroutineScope;)Lads_mobile_sdk/d40;
    .registers 2

    .line 1
    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 1
    const-string v0, "$scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

###### Class ads_mobile_sdk.e40$$ExternalSyntheticLambda0 (ads_mobile_sdk.e40$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/d40;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final get()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/e40$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Lads_mobile_sdk/e40;->b(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
