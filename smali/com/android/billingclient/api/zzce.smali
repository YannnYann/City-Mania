###### Class com.android.billingclient.api.zzce (com.android.billingclient.api.zzce)
.class public final Lcom/android/billingclient/api/zzce;
.super Lcom/android/billingclient/api/BillingClientImpl;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field public final zza:Landroid/content/Context;

.field public volatile zzb:I

.field public volatile zzc:Lcom/google/android/gms/internal/play_billing/zzau;

.field public volatile zzd:Lcom/android/billingclient/api/zzcc;

.field public volatile zze:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/billingclient/api/zzce;->zzb:I

    iput-object v2, v0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p8

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    iput-object p3, p0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p8

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    iput-object p3, p0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v7, p7

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/billingclient/api/zzce;->zzb:I

    iput-object v3, v0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    return-void
.end method

.method public static final zzaC(I)Z
    .registers 1

    .line 0
    if-lez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzal(Lcom/android/billingclient/api/zzce;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzam(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

.method public static synthetic zzan(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public static synthetic zzao(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public static synthetic zzap(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public static bridge synthetic zzaq(Lcom/android/billingclient/api/zzce;Lcom/google/android/gms/internal/play_billing/zzau;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    return-void
.end method

.method public static bridge synthetic zzar(Lcom/android/billingclient/api/zzce;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    return-void
.end method

.method public static bridge synthetic zzas(Lcom/android/billingclient/api/zzce;I)Z
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/billingclient/api/zzce;->zzaC(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic zzau(Lcom/android/billingclient/api/zzce;II)Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzce;->zzaD(II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzav(Lcom/android/billingclient/api/zzce;ILcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_29

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    const/4 v2, 0x5

    if-eq p1, v2, :cond_23

    const/4 v2, 0x6

    if-eq p1, v2, :cond_20

    const-string p1, "QUERY_PRODUCT_DETAILS_ASYNC"

    goto :goto_2e

    :catch_1e
    move-exception p1

    goto :goto_39

    .line 3
    :cond_20
    const-string p1, "START_CONNECTION"

    goto :goto_2e

    :cond_23
    const-string p1, "IS_FEATURE_SUPPORTED"

    goto :goto_2e

    :cond_26
    const-string p1, "CONSUME_ASYNC"

    goto :goto_2e

    :cond_29
    const-string p1, "ACKNOWLEDGE_PURCHASE"

    goto :goto_2e

    :cond_2c
    const-string p1, "LAUNCH_BILLING_FLOW"

    .line 1
    :goto_2e
    new-instance v2, Lcom/android/billingclient/api/zzcb;

    .line 2
    invoke-direct {v2, p2}, Lcom/android/billingclient/api/zzcb;-><init>(Lcom/google/android/gms/internal/play_billing/zzp;)V

    .line 3
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzau;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzaw;)V

    goto :goto_51

    :cond_37
    const/4 p1, 0x0

    .line 4
    throw p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_1e

    :goto_39
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzaQ:Lcom/google/android/gms/internal/play_billing/zzie;

    const/16 v1, 0x1c

    .line 5
    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzF:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    const-string p0, "BillingClientTesting"

    const-string v0, "An error occurred while retrieving billing override."

    .line 6
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzp;->zzb(Ljava/lang/Object;)Z

    .line 3
    :goto_51
    const-string p0, "billingOverrideService.getBillingOverride"

    return-object p0
.end method

.method public static bridge synthetic zzaw(Lcom/android/billingclient/api/zzce;Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    .registers 4

    .line 0
    const/16 p2, 0x1c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static bridge synthetic zzax(Lcom/android/billingclient/api/zzce;I)V
    .registers 2

    .line 0
    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzce;->zzaG(I)V

    return-void
.end method


# virtual methods
.method public final acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 5

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/billingclient/api/zzbw;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzbw;-><init>(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    new-instance v1, Lcom/android/billingclient/api/zzbx;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbx;-><init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzce;->zzaH(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbt;

    invoke-direct {v0, p2, p1}, Lcom/android/billingclient/api/zzbt;-><init>(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    new-instance v1, Lcom/android/billingclient/api/zzbu;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbu;-><init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzce;->zzaH(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final endConnection()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzce;->zzaA()V

    .line 2
    invoke-super {p0}, Lcom/android/billingclient/api/BillingClientImpl;->endConnection()V

    return-void
.end method

.method public final launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .registers 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzby;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/zzby;-><init>(Lcom/android/billingclient/api/zzce;)V

    new-instance v1, Lcom/android/billingclient/api/zzbz;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbz;-><init>(Lcom/android/billingclient/api/zzce;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzce;->zzaE(I)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/zzce;->zzay(Lcom/google/android/gms/internal/play_billing/zzcz;)I

    move-result p2

    invoke-static {p2}, Lcom/android/billingclient/api/zzce;->zzaC(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzce;->zzaD(II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_21
    :try_start_21
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/BillingResult;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_28

    return-object p2

    :catch_28
    move-exception p2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzaY:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 7
    sget-object v1, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    const-string p1, "BillingClientTesting"

    const-string v0, "An internal error occurred."

    .line 8
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbr;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzbr;-><init>(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    new-instance v1, Lcom/android/billingclient/api/zzbs;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbs;-><init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzce;->zzaH(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzce;->zzaB()V

    .line 2
    invoke-super {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public final declared-synchronized zzaA()V
    .registers 5

    monitor-enter p0

    const/16 v0, 0x1b

    .line 1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzce;->zzaG(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_43

    const/4 v0, 0x3

    :try_start_7
    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    if-eqz v1, :cond_2a

    const-string v1, "BillingClientTesting"

    const-string v3, "Unbinding from Billing Override Service."

    .line 2
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Lcom/android/billingclient/api/zzcc;

    .line 4
    invoke-direct {v1, p0, v2}, Lcom/android/billingclient/api/zzcc;-><init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/zzcd;)V

    iput-object v1, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;

    goto :goto_2a

    :catchall_26
    move-exception v1

    goto :goto_45

    :catch_28
    move-exception v1

    goto :goto_38

    :cond_2a
    :goto_2a
    iput-object v2, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_37} :catch_28
    .catchall {:try_start_7 .. :try_end_37} :catchall_26

    goto :goto_3f

    :goto_38
    :try_start_38
    const-string v2, "BillingClientTesting"

    const-string v3, "There was an exception while ending Billing Override Service connection!"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_26

    .line 5
    :cond_3f
    :goto_3f
    :try_start_3f
    iput v0, p0, Lcom/android/billingclient/api/zzce;->zzb:I
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_43

    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    goto :goto_48

    .line 6
    :goto_45
    :try_start_45
    iput v0, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    .line 7
    throw v1

    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_43

    throw v0
.end method

.method public final declared-synchronized zzaB()V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzce;->zzat()Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_18

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/zzce;->zzaG(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    goto/16 :goto_d3

    :cond_18
    :try_start_18
    iget v0, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    const-string v0, "BillingClientTesting"

    const-string v1, "Client is already in the process of connecting to Billing Override Service."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    iget v0, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_40

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service connection is disconnected."

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzL:Lcom/google/android/gms/internal/play_billing/zzie;

    const/4 v3, -0x1

    .line 6
    invoke-static {v3, v0}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_15

    monitor-exit p0

    return-void

    :cond_40
    :try_start_40
    iput v2, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Starting Billing Override Service setup."

    .line 8
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/zzcc;

    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, p0, v3}, Lcom/android/billingclient/api/zzcc;-><init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/zzcd;)V

    iput-object v0, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    .line 10
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    .line 11
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/billingclient/api/zzce;->zza:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    if-eqz v4, :cond_bc

    .line 13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bc

    .line 14
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 15
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_be

    .line 16
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 17
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, "com.google.android.apps.play.billingtestcompanion"

    .line 18
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b2

    if-eqz v4, :cond_b2

    new-instance v7, Landroid/content/ComponentName;

    .line 20
    invoke-direct {v7, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .line 21
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;

    .line 23
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_a8

    const-string v0, "BillingClientTesting"

    const-string v1, "Billing Override Service was bonded successfully."

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_40 .. :try_end_a6} :catchall_15

    monitor-exit p0

    return-void

    :cond_a8
    :try_start_a8
    const-string v0, "BillingClientTesting"

    const-string v2, "Connection to Billing Override Service is blocked."

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzM:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 25
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 28
    :cond_b2
    const-string v0, "BillingClientTesting"

    const-string v2, "The device doesn\'t have valid Play Billing Lab."

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzM:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 19
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_bc
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzO:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 25
    :cond_be
    :goto_be
    iput v5, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service unavailable on device."

    .line 26
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service unavailable on device."

    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v0}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    :try_end_d1
    .catchall {:try_start_a8 .. :try_end_d1} :catchall_15

    monitor-exit p0

    return-void

    :goto_d3
    :try_start_d3
    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_15

    throw v0
.end method

.method public final zzaD(II)Lcom/android/billingclient/api/BillingResult;
    .registers 4

    .line 1
    const-string v0, "Billing override value was set by a license tester."

    invoke-static {p2, v0}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzaO:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    return-object p2
.end method

.method public final zzaE(I)Lcom/google/android/gms/internal/play_billing/zzcz;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzce;->zzat()Z

    move-result v0

    if-nez v0, :cond_25

    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service is not ready."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzaP:Lcom/google/android/gms/internal/play_billing/zzie;

    const/4 v0, -0x1

    const-string v1, "Billing Override Service connection is disconnected."

    .line 3
    invoke-static {v0, v1}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v1, 0x1c

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p1

    return-object p1

    :cond_25
    new-instance v0, Lcom/android/billingclient/api/zzbv;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzbv;-><init>(Lcom/android/billingclient/api/zzce;I)V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzu;->zza(Lcom/google/android/gms/internal/play_billing/zzr;)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p1

    return-object p1
.end method

.method public final zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 1
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p1

    const-string p2, "ApiFailure should not be null"

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj()Lcom/android/billingclient/api/zzch;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    return-void
.end method

.method public final zzaG(I)V
    .registers 3

    .line 1
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p1

    const-string v0, "ApiSuccess should not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj()Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/zzch;->zzf(Lcom/google/android/gms/internal/play_billing/zzib;)V

    return-void
.end method

.method public final zzaH(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzce;->zzaE(I)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzce;->zzaz()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const-wide/16 v3, 0x6f54

    .line 3
    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzb(Lcom/google/android/gms/internal/play_billing/zzcz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object v0

    new-instance v1, Lcom/android/billingclient/api/zzca;

    .line 4
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/billingclient/api/zzca;-><init>(Lcom/android/billingclient/api/zzce;ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzF()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Lcom/google/android/gms/internal/play_billing/zzcz;Lcom/google/android/gms/internal/play_billing/zzcs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final declared-synchronized zzat()Z
    .registers 3

    .line 0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/billingclient/api/zzce;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zzc:Lcom/google/android/gms/internal/play_billing/zzau;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zzd:Lcom/android/billingclient/api/zzcc;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    if-eqz v0, :cond_13

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_11
    move-exception v0

    goto :goto_16

    :cond_13
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_11

    throw v0
.end method

.method public final zzay(Lcom/google/android/gms/internal/play_billing/zzcz;)I
    .registers 8

    .line 1
    const-string v0, "BillingClientTesting"

    const/4 v1, 0x0

    const/16 v2, 0x1c

    :try_start_5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6f54

    invoke-interface {p1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception p1

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_30

    .line 2
    :goto_18
    instance-of v3, p1, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_23

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_23
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaQ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzF:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    const-string v2, "An error occurred while retrieving billing override."

    .line 5
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 1
    :goto_30
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaX:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 6
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzF:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/billingclient/api/zzce;->zzaF(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    const-string v2, "Asynchronous call to Billing Override Service timed out."

    .line 7
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final declared-synchronized zzaz()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/billingclient/api/zzce;->zze:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method

###### Class com.android.billingclient.api.zzbr (com.android.billingclient.api.zzbr)
.class public final synthetic Lcom/android/billingclient/api/zzbr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbr;->zza:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 1
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/billingclient/api/zzbr;->zza:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-interface {v1, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbs (com.android.billingclient.api.zzbs)
.class public final synthetic Lcom/android/billingclient/api/zzbs;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;

.field public final synthetic zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbs;->zza:Lcom/android/billingclient/api/zzce;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbs;->zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbs;->zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbs;->zza:Lcom/android/billingclient/api/zzce;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbs;->zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzbs;->zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzce;->zzao(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbt (com.android.billingclient.api.zzbt)
.class public final synthetic Lcom/android/billingclient/api/zzbt;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic zzb:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/ConsumeResponseListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbt;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/ConsumeResponseListener;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbt;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 1
    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbu (com.android.billingclient.api.zzbu)
.class public final synthetic Lcom/android/billingclient/api/zzbu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;

.field public final synthetic zzb:Lcom/android/billingclient/api/ConsumeParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/ConsumeResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/zzce;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbu;->zzc:Lcom/android/billingclient/api/ConsumeResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/zzce;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzbu;->zzc:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzce;->zzan(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbv (com.android.billingclient.api.zzbv)
.class public final synthetic Lcom/android/billingclient/api/zzbv;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzr;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbv;->zza:Lcom/android/billingclient/api/zzce;

    iput p2, p0, Lcom/android/billingclient/api/zzbv;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->zza:Lcom/android/billingclient/api/zzce;

    iget v1, p0, Lcom/android/billingclient/api/zzbv;->zzb:I

    invoke-static {v0, v1, p1}, Lcom/android/billingclient/api/zzce;->zzav(Lcom/android/billingclient/api/zzce;ILcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.android.billingclient.api.zzbw (com.android.billingclient.api.zzbw)
.class public final synthetic Lcom/android/billingclient/api/zzbw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbw;->zza:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbw;->zza:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbx (com.android.billingclient.api.zzbx)
.class public final synthetic Lcom/android/billingclient/api/zzbx;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;

.field public final synthetic zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzce;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbx;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbx;->zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzce;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbx;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzbx;->zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzce;->zzam(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzby (com.android.billingclient.api.zzby)
.class public final synthetic Lcom/android/billingclient/api/zzby;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzby;->zza:Lcom/android/billingclient/api/zzce;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzby;->zza:Lcom/android/billingclient/api/zzce;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/zzce;->zzap(Lcom/android/billingclient/api/zzce;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

###### Class com.android.billingclient.api.zzbz (com.android.billingclient.api.zzbz)
.class public final synthetic Lcom/android/billingclient/api/zzbz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzce;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzce;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/zzce;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbz;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbz;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/zzce;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbz;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/billingclient/api/zzbz;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzce;->zzal(Lcom/android/billingclient/api/zzce;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0
.end method
