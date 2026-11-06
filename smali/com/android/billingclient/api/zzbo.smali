###### Class com.android.billingclient.api.zzbo (com.android.billingclient.api.zzbo)
.class public final Lcom/android/billingclient/api/zzbo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:Ljava/util/List;

.field public final zzc:I

.field public final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/zzbo;->zzc:I

    iput-object p2, p0, Lcom/android/billingclient/api/zzbo;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbo;->zza:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/zzbo;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/android/billingclient/api/zzbo;->zzc:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbo;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbo;->zza:Ljava/util/List;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbo;->zzb:Ljava/util/List;

    return-object v0
.end method
