###### Class io.bidmachine.NetworkConfig (io.bidmachine.NetworkConfig)
.class public abstract Lio/bidmachine/NetworkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONFIG_SKIP_INITIALIZATION:Ljava/lang/String; = "skip_initialization"


# instance fields
.field private baseMediationConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mergedAdsTypes:[Lio/bidmachine/AdsType;

.field private final networkConfigParams:Lio/bidmachine/NetworkConfigParams;

.field private final networkKey:Ljava/lang/String;

.field private final networkParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedAdsTypes:[Lio/bidmachine/AdsType;

.field private final typedMediationConfigs:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lio/bidmachine/NetworkConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/NetworkConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    .line 9
    new-instance v0, Lio/bidmachine/NetworkConfig$a;

    invoke-direct {v0, p0}, Lio/bidmachine/NetworkConfig$a;-><init>(Lio/bidmachine/NetworkConfig;)V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    .line 97
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->networkKey:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 100
    invoke-virtual {p0, p2}, Lio/bidmachine/NetworkConfig;->withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/SortedMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->useNetworkParamsAsMediationBase()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    :cond_10
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    if-eqz v1, :cond_17

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public createNetworkAdUnitList(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;Lio/bidmachine/NetworkAdapter;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            "Lio/bidmachine/NetworkAdapter;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/bidmachine/AdFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 4
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/AdFormat;->isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_f

    .line 7
    :cond_2e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_37

    goto :goto_f

    .line 11
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 12
    new-instance v5, Lio/bidmachine/NetworkAdUnit;

    .line 14
    invoke-direct {p0, v4}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v5, p4, v3, v4}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdFormat;Ljava/util/Map;)V

    .line 15
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_54
    return-object v0
.end method

.method public abstract createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_20

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_20

    .line 4
    :cond_11
    check-cast p1, Lio/bidmachine/NetworkConfig;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method public varargs forAdTypes([Lio/bidmachine/AdsType;)Lio/bidmachine/NetworkConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    return-object p0
.end method

.method public getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedAdsTypes(Lio/bidmachine/NetworkAdapter;)[Lio/bidmachine/AdsType;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    if-nez v0, :cond_2e

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getSupportedTypes()[Lio/bidmachine/AdsType;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    if-eqz v5, :cond_1e

    invoke-direct {p0, v5, v4}, Lio/bidmachine/NetworkConfig;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 8
    :cond_24
    new-array p1, v2, [Lio/bidmachine/AdsType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/AdsType;

    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    .line 10
    :cond_2e
    iget-object p1, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public internalSetSkipInitialization(Z)Lio/bidmachine/NetworkConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(Z)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "skip_initialization"

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/NetworkConfig;->setNetworkParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    return-object p0
.end method

.method public setBaseMediationParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNetworkParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public useNetworkParamsAsMediationBase()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public withBaseMediationConfig(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    return-object p0
.end method

.method public withMediationConfig(Lio/bidmachine/AdFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/AdFormat;->getRemoteName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->getRemoteName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;Lio/bidmachine/Orientation;)Lio/bidmachine/NetworkConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/Orientation;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    const-string p3, "The parameter \'orientation\' is no longer supported and has no effect."

    invoke-static {p3}, Lio/bidmachine/core/Logger;->w(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 1
    iget-object p2, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_8
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1c

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    return-object p0
.end method

###### Class io.bidmachine.NetworkConfig.a (io.bidmachine.NetworkConfig$a)
.class public Lio/bidmachine/NetworkConfig$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/NetworkConfigParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/NetworkConfig;


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkConfig;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Map;
    .registers 10

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-static {v3}, Lio/bidmachine/NetworkConfig;->access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_47

    const/4 v4, 0x0

    move-object v5, v0

    .line 5
    :goto_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_48

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_37

    .line 9
    iget-object v7, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-static {v7, v6}, Lio/bidmachine/NetworkConfig;->access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_38

    :cond_37
    move-object v6, v0

    :goto_38
    if-eqz v6, :cond_44

    if-nez v5, :cond_41

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_41
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_47
    move-object v5, v0

    :cond_48
    if-eqz v5, :cond_6

    if-nez v1, :cond_51

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    :cond_51
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_55
    return-object v1
.end method

.method public getFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 5
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_55

    .line 8
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    aget-object v4, p1, v3

    .line 10
    invoke-virtual {v4}, Lio/bidmachine/AdsFormat;->getRemoteName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 12
    :cond_1c
    invoke-virtual {p0, v1}, Lio/bidmachine/NetworkConfig$a;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_23

    return-object v0

    .line 16
    :cond_23
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsFormat;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_32

    .line 22
    :cond_4b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_55
    :goto_55
    return-object v0
.end method

.method public varargs obtainNetworkMediationConfigs([Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    if-eqz p1, :cond_f

    .line 1
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_f

    .line 4
    :cond_6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkConfig$a;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainNetworkParams()Ljava/util/Map;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-static {v1}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

###### Class io.bidmachine.NetworkConfig$$ExternalSyntheticLambda0 (io.bidmachine.NetworkConfig$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/NetworkConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
