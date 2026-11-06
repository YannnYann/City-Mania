###### Class com.google.android.gms.internal.consent_sdk.zzdy (com.google.android.gms.internal.consent_sdk.zzdy)
.class final Lcom/google/android/gms/internal/consent_sdk/zzdy;
.super Lcom/google/android/gms/internal/consent_sdk/zzdv;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdy;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdj;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzc:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzb:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzc:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public final zzb()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzc:I

    return v0
.end method

.method public final zzc()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdy;->zzb:[Ljava/lang/Object;

    return-object v0
.end method
