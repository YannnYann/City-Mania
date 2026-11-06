###### Class com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader (com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader)
.class public final Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;
.super Lcom/unity3d/ads/core/configuration/MetadataReader;
.source "MediationInitBlobMetadataReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/ads/core/configuration/MetadataReader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;

.field public static final MEDIATION_UADS_INIT_BLOB:Ljava/lang/String; = "mediation.uads_init_blob.value"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;->Companion:Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .registers 3

    const-string v0, "jsonStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "mediation.uads_init_blob.value"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/configuration/MetadataReader;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader.Companion (com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader$Companion)
.class public final Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;
.super Ljava/lang/Object;
.source "MediationInitBlobMetadataReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader$Companion;-><init>()V

    return-void
.end method
