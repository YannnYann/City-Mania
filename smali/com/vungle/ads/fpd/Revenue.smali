###### Class com.vungle.ads.fpd.Revenue (com.vungle.ads.fpd.Revenue)
.class public final Lcom/vungle/ads/fpd/Revenue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/Revenue$Companion;,
        Lcom/vungle/ads/fpd/Revenue$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/fpd/Revenue$Companion;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/fpd/Revenue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/Revenue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/Revenue;->Companion:Lcom/vungle/ads/fpd/Revenue$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_b

    iput-object v0, p0, Lcom/vungle/ads/fpd/Revenue;->a:Ljava/lang/Float;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/fpd/Revenue;->a:Ljava/lang/Float;

    :goto_d
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_14

    iput-object v0, p0, Lcom/vungle/ads/fpd/Revenue;->b:Ljava/lang/Float;

    goto :goto_16

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/fpd/Revenue;->b:Ljava/lang/Float;

    :goto_16
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1d

    iput-object v0, p0, Lcom/vungle/ads/fpd/Revenue;->c:Ljava/lang/Float;

    goto :goto_1f

    :cond_1d
    iput-object p4, p0, Lcom/vungle/ads/fpd/Revenue;->c:Ljava/lang/Float;

    :goto_1f
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_26

    iput-object v0, p0, Lcom/vungle/ads/fpd/Revenue;->d:Ljava/lang/Boolean;

    return-void

    :cond_26
    iput-object p5, p0, Lcom/vungle/ads/fpd/Revenue;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/fpd/Revenue;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1b

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/fpd/Revenue;->a:Ljava/lang/Float;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/Revenue;->a:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2e

    :cond_2a
    iget-object v1, p0, Lcom/vungle/ads/fpd/Revenue;->b:Ljava/lang/Float;

    if-eqz v1, :cond_35

    :goto_2e
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/Revenue;->b:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_41

    :cond_3d
    iget-object v1, p0, Lcom/vungle/ads/fpd/Revenue;->c:Ljava/lang/Float;

    if-eqz v1, :cond_48

    :goto_41
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/Revenue;->c:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_48
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_54

    :cond_50
    iget-object v1, p0, Lcom/vungle/ads/fpd/Revenue;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5b

    :goto_54
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object p0, p0, Lcom/vungle/ads/fpd/Revenue;->d:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method


# virtual methods
.method public final setEarningsByPlacement(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setIAARevenueUSD(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_12

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/fpd/Revenue;->a:Ljava/lang/Float;

    :cond_12
    return-object p0
.end method

.method public final setIAPRevenueUSD(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_12

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/fpd/Revenue;->b:Ljava/lang/Float;

    :cond_12
    return-object p0
.end method

.method public final setIsUserAPurchaser(Z)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/fpd/Revenue;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsUserASubscriber(Z)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysMeanSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysMedianSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysPlacementFillRate(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysTotalSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysUserLtvUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast30DaysUserPltvUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysMeanSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysMedianSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysPlacementFillRate(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysTotalSpendUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysUserLtvUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLast7DaysUserPltvUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setTopNAdomain(Ljava/util/List;)Lcom/vungle/ads/fpd/Revenue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/fpd/Revenue;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public final setTotalEarningsUsd(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setTotalRevenueUSD(F)Lcom/vungle/ads/fpd/Revenue;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_12

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/fpd/Revenue;->c:Ljava/lang/Float;

    :cond_12
    return-object p0
.end method

###### Class com.vungle.ads.fpd.Revenue.Companion (com.vungle.ads.fpd.Revenue$Companion)
.class public final Lcom/vungle/ads/fpd/Revenue$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/Revenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/fpd/Revenue$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vungle/ads/fpd/Revenue;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/Revenue$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Revenue$$serializer;

    return-object v0
.end method
