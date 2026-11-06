###### Class com.unity3d.ads.core.domain.billing.ProductDetailsResult (com.unity3d.ads.core.domain.billing.ProductDetailsResult)
.class public abstract Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.super Ljava/lang/Object;
.source "ProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;,
        Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;,
        Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.billing.ProductDetailsResult.Failure (com.unity3d.ads.core.domain.billing.ProductDetailsResult$Failure)
.class public final Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;
.super Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.source "ProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)V
    .registers 3

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->copy(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;
    .registers 3

    .line 0
    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;-><init>(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBillingResult()Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(billingResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;->billingResult:Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.billing.ProductDetailsResult.NotFound (com.unity3d.ads.core.domain.billing.ProductDetailsResult$NotFound)
.class public final Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;
.super Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.source "ProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotFound"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;->INSTANCE:Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.billing.ProductDetailsResult.Success (com.unity3d.ads.core.domain.billing.ProductDetailsResult$Success)
.class public final Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;
.super Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.source "ProductDetailsResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final productDetailsJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "productDetailsJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->copy(Ljava/lang/String;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;
    .registers 3

    .line 0
    const-string v0, "productDetailsJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getProductDetailsJson()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(productDetailsJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;->productDetailsJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
