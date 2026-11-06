###### Class com.unity3d.ads.core.configuration.MediationTraitsMetadataReader (com.unity3d.ads.core.configuration.MediationTraitsMetadataReader)
.class public final Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;
.super Lcom/unity3d/ads/core/configuration/MetadataReader;
.source "MediationTraitsMetadataReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/ads/core/configuration/MetadataReader<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediationTraitsMetadataReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n7#2,7:29\n7#2,7:37\n7#2,7:44\n1#3:36\n*S KotlinDebug\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n*L\n11#1:29,7\n15#1:37,7\n19#1:44,7\n*E\n"
.end annotation


# static fields
.field public static final BOLD_SDK_ENABLED:Ljava/lang/String; = "boldSdkEnabled"

.field public static final Companion:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;

.field public static final HTTP_CLIENT_FETCH_TIMEOUT_MS:Ljava/lang/String; = "httpClientFetchTimeoutMs"

.field public static final MEDIATION_TRAITS:Ljava/lang/String; = "mediation.traits.value"

.field public static final USE_HTTP_CLIENT:Ljava/lang/String; = "useHttpClient"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;->Companion:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .registers 3

    const-string v0, "jsonStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v0, "mediation.traits.value"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/configuration/MetadataReader;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBooleanTrait(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 10
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    if-nez v0, :cond_1d

    :cond_1c
    move-object v0, v1

    .line 11
    :cond_1d
    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_34
    return-object v1
.end method

.method public final getLongTrait(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 10
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    if-nez v0, :cond_1d

    :cond_1c
    move-object v0, v1

    .line 19
    :cond_1d
    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_34
    return-object v1
.end method

.method public final getStringTrait(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 10
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    if-nez v0, :cond_1d

    :cond_1c
    move-object v0, v1

    .line 15
    :cond_1d
    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    return-object v1
.end method

###### Class com.unity3d.ads.core.configuration.MediationTraitsMetadataReader.Companion (com.unity3d.ads.core.configuration.MediationTraitsMetadataReader$Companion)
.class public final Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;
.super Ljava/lang/Object;
.source "MediationTraitsMetadataReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;-><init>()V

    return-void
.end method
