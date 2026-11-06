###### Class com.unity3d.ads.core.data.repository.AndroidMediationRepository (com.unity3d.ads.core.data.repository.AndroidMediationRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;
.super Ljava/lang/Object;
.source "AndroidMediationRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/MediationRepository;


# instance fields
.field private final mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

.field private final mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;


# direct methods
.method public static synthetic $r8$lambda$iAalYlCjntXkG1L-PC5WK2oCnls(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->_get_mediationProvider_$lambda$0(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;Lcom/unity3d/ads/core/domain/MediationProviderParser;)V
    .registers 4

    const-string v0, "mediationDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationProviderParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    .line 9
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    return-void
.end method

.method private static final _get_mediationProvider_$lambda$0(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/unity3d/ads/core/domain/MediationProviderParser;->invoke(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMediationProvider()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->mediationDataSource:Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.repository.AndroidMediationRepository$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.repository.AndroidMediationRepository$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;->$r8$lambda$iAalYlCjntXkG1L-PC5WK2oCnls(Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method
