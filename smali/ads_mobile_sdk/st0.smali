###### Class ads_mobile_sdk.st0 (ads_mobile_sdk.st0)
.class public final Lads_mobile_sdk/st0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zr1;


# static fields
.field public static final a:Lads_mobile_sdk/st0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/st0;

    invoke-direct {v0}, Lads_mobile_sdk/st0;-><init>()V

    sput-object v0, Lads_mobile_sdk/st0;->a:Lads_mobile_sdk/st0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lads_mobile_sdk/or1;)Ljava/lang/Object;
    .registers 5

    .line 2
    check-cast p1, Lads_mobile_sdk/a04;

    .line 3
    new-instance v0, Lads_mobile_sdk/rt0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/rt0;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v0, p2}, Lads_mobile_sdk/a04;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
