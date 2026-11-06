###### Class ads_mobile_sdk.g40 (ads_mobile_sdk.g40)
.class public final synthetic Lads_mobile_sdk/g40;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final a:Lads_mobile_sdk/g40;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/g40;

    invoke-direct {v0}, Lads_mobile_sdk/g40;-><init>()V

    sput-object v0, Lads_mobile_sdk/g40;->a:Lads_mobile_sdk/g40;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 1
    const-string v4, "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lads_mobile_sdk/i40;

    const-string v3, "lockWithoutOwner"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 201
    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    check-cast p2, Lkotlin/coroutines/Continuation;

    const/4 v0, 0x0

    .line 202
    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_10

    return-object p1

    :cond_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
