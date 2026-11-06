###### Class com.android.billingclient.api.BillingResult (com.android.billingclient.api.BillingResult)
.class public final Lcom/android/billingclient/api/BillingResult;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingResult$Builder;
    }
.end annotation


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    .line 0
    new-instance v0, Lcom/android/billingclient/api/BillingResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;-><init>(Lcom/android/billingclient/api/zzci;)V

    return-object v0
.end method

.method public static bridge synthetic zza(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/android/billingclient/api/BillingResult;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/billingclient/api/BillingResult;->zzb:I

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/android/billingclient/api/BillingResult;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    return-void
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getOnPurchasesUpdatedSubResponseCode()I
    .registers 2
    .annotation build Lcom/android/billingclient/api/zzk;
    .end annotation

    .line 0
    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zzb:I

    return v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzk(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Debug Message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.android.billingclient.api.BillingResult.Builder (com.android.billingclient.api.BillingResult$Builder)
.class public Lcom/android/billingclient/api/BillingResult$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzci;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingResult;-><init>()V

    iget v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zza:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zzc(Lcom/android/billingclient/api/BillingResult;I)V

    iget v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    .line 2
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zzb(Lcom/android/billingclient/api/BillingResult;I)V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zza(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2
    .annotation build Lcom/android/billingclient/api/zzk;
    .end annotation

    .line 0
    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    return-object p0
.end method

.method public setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zza:I

    return-object p0
.end method
