###### Class com.google.android.gms.internal.consent_sdk.zzcg (com.google.android.gms.internal.consent_sdk.zzcg)
.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzcg;
.super Ljava/lang/Enum;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zze:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzg:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzh:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v2, "ALWAYS_SHOW"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v3, "GEO_OVERRIDE_EEA"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v4, "GEO_OVERRIDE_REGULATED_US_STATE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v5, "GEO_OVERRIDE_OTHER"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zze:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v6, "GEO_OVERRIDE_NON_EEA"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v7, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v8, "GEO_OVERRIDE_USFL"

    const/4 v9, 0x7

    .line 8
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    filled-new-array/range {v0 .. v7}, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzcg;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzcg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    return-object v0
.end method
