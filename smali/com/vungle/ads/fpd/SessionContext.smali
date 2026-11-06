###### Class com.vungle.ads.fpd.SessionContext (com.vungle.ads.fpd.SessionContext)
.class public final Lcom/vungle/ads/fpd/SessionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/SessionContext$Companion;,
        Lcom/vungle/ads/fpd/SessionContext$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/fpd/SessionContext$Companion;


# instance fields
.field public a:Ljava/lang/Float;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/fpd/SessionContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/SessionContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/SessionContext;->Companion:Lcom/vungle/ads/fpd/SessionContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->a:Ljava/lang/Float;

    return-void

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/fpd/SessionContext;->a:Ljava/lang/Float;

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/fpd/SessionContext;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 5

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
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->a:Ljava/lang/Float;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    iget-object p0, p0, Lcom/vungle/ads/fpd/SessionContext;->a:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public final setFriends(Ljava/util/List;)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/fpd/SessionContext;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public final setHealthPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setInGamePurchasesUSD(F)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setLevelPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_11

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->a:Ljava/lang/Float;

    :cond_11
    return-object p0
.end method

.method public final setPage(Ljava/lang/String;)Lcom/vungle/ads/fpd/SessionContext;
    .registers 3

    .line 0
    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setSessionDuration(I)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setSessionStartTime(I)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setSignupDate(I)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setTimeSpent(I)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setUserID(Ljava/lang/String;)Lcom/vungle/ads/fpd/SessionContext;
    .registers 3

    .line 0
    const-string v0, "userID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setUserLevelPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

.method public final setUserScorePercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    .line 0
    return-object p0
.end method

###### Class com.vungle.ads.fpd.SessionContext.Companion (com.vungle.ads.fpd.SessionContext$Companion)
.class public final Lcom/vungle/ads/fpd/SessionContext$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/SessionContext;
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
    invoke-direct {p0}, Lcom/vungle/ads/fpd/SessionContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vungle/ads/fpd/SessionContext;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/SessionContext$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/SessionContext$$serializer;

    return-object v0
.end method
