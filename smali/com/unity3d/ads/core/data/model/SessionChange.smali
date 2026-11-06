###### Class com.unity3d.ads.core.data.model.SessionChange (com.unity3d.ads.core.data.model.SessionChange)
.class public abstract Lcom/unity3d/ads/core/data/model/SessionChange;
.super Ljava/lang/Object;
.source "SessionChange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;,
        Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/SessionChange;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.model.SessionChange.PrivacyFsmChange (com.unity3d.ads.core.data.model.SessionChange$PrivacyFsmChange)
.class public final Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;
.super Lcom/unity3d/ads/core/data/model/SessionChange;
.source "SessionChange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/SessionChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivacyFsmChange"
.end annotation


# instance fields
.field private final value:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/SessionChange;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->copy(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final copy(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;
    .registers 3

    .line 0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getValue()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyFsmChange(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$PrivacyFsmChange;->value:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.SessionChange.UserConsentChange (com.unity3d.ads.core.data.model.SessionChange$UserConsentChange)
.class public final Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;
.super Lcom/unity3d/ads/core/data/model/SessionChange;
.source "SessionChange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/SessionChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserConsentChange"
.end annotation


# instance fields
.field private final value:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/SessionChange;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->copy(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final copy(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;
    .registers 3

    .line 0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getValue()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserConsentChange(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/SessionChange$UserConsentChange;->value:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
