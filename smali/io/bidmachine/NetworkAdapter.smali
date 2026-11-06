###### Class io.bidmachine.NetworkAdapter (io.bidmachine.NetworkAdapter)
.class public abstract Lio/bidmachine/NetworkAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adapterMinDeviceApiVersion:I

.field private final adapterVersion:Ljava/lang/String;

.field private final compiledNetworkSdkVersion:Ljava/lang/String;

.field private final initializeCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/InternalNetworkInitializationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final key:Ljava/lang/String;

.field private networkSdkVersion:Ljava/lang/String;

.field private final supportedTypes:[Lio/bidmachine/AdsType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/NetworkAdapter;->compiledNetworkSdkVersion:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    .line 5
    iput p4, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    .line 6
    iput-object p5, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    return-object p0
.end method

.method public static isSkipInitialization(Lio/bidmachine/NetworkConfigParams;)Z
    .registers 2

    .line 1
    const-string v0, "skip_initialization"

    invoke-interface {p0, v0}, Lio/bidmachine/NetworkConfigParams;->getFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support static interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support native ads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support rewarded interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapterMinDeviceApiVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedTypes()[Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public final initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    if-ge v0, v1, :cond_1d

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "minSdkVersion is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Lio/bidmachine/InternalNetworkInitializationCallback;->onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1d
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6
    invoke-interface {p4, p0}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    return-void

    .line 9
    :cond_27
    invoke-static {p3}, Lio/bidmachine/NetworkAdapter;->isSkipInitialization(Lio/bidmachine/NetworkConfigParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->isNetworkInitializationStatusCheckSupported()Z

    move-result p1

    if-nez p1, :cond_42

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Network initialization status check is not supported, force initialization to true"

    invoke-static {p1, p2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    :cond_42
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Network initialization is skipped"

    invoke-static {p1, p2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p4, p0}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    return-void

    .line 19
    :cond_4f
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p4, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-nez p4, :cond_5e

    return-void

    .line 23
    :cond_5e
    new-instance p4, Lio/bidmachine/NetworkAdapter$a;

    invoke-direct {p4, p0}, Lio/bidmachine/NetworkAdapter$a;-><init>(Lio/bidmachine/NetworkAdapter;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/NetworkAdapter;->onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V

    return-void
.end method

.method public isAdsTypeSupported(Lio/bidmachine/AdsType;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method public final isInitialized(Landroid/content/Context;)Z
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v0, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result p1

    return p1
.end method

.method public final isInitialized(Lio/bidmachine/ContextProvider;)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 v0, 0x0

    .line 6
    :try_start_b
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdapter;->isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result p1

    .line 7
    iget-object v1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    return v0
.end method

.method public final isInitializing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract isNetworkInitializationStatusCheckSupported()Z
.end method

.method public abstract isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final obtainNetworkSdkVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 7
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    return-object v0

    .line 11
    :catchall_1a
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->compiledNetworkSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public abstract onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onWinAuction(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setLogging(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class io.bidmachine.NetworkAdapter.a (io.bidmachine.NetworkAdapter$a)
.class public Lio/bidmachine/NetworkAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/NetworkInitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/NetworkAdapter;


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/InternalNetworkInitializationCallback;

    .line 4
    iget-object v2, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-interface {v1, v2, p1}, Lio/bidmachine/InternalNetworkInitializationCallback;->onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V

    goto :goto_1d

    .line 6
    :cond_2f
    iget-object p1, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {p1}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onSuccess()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/InternalNetworkInitializationCallback;

    .line 4
    iget-object v2, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-interface {v1, v2}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    goto :goto_1e

    .line 6
    :cond_30
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
