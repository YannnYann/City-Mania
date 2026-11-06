###### Class com.android.billingclient.api.GetBillingConfigParams (com.android.billingclient.api.GetBillingConfigParams)
.class public final Lcom/android/billingclient/api/GetBillingConfigParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/GetBillingConfigParams$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcp;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/billingclient/api/GetBillingConfigParams;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;
    .registers 2

    .line 0
    new-instance v0, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;-><init>(Lcom/android/billingclient/api/zzcp;)V

    return-object v0
.end method

###### Class com.android.billingclient.api.GetBillingConfigParams.Builder (com.android.billingclient.api.GetBillingConfigParams$Builder)
.class public final Lcom/android/billingclient/api/GetBillingConfigParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/GetBillingConfigParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcp;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/GetBillingConfigParams;
    .registers 3

    .line 0
    new-instance v0, Lcom/android/billingclient/api/GetBillingConfigParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/GetBillingConfigParams;-><init>(Lcom/android/billingclient/api/zzcp;)V

    return-object v0
.end method
