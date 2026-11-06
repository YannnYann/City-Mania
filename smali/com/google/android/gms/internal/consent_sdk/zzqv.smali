###### Class com.google.android.gms.internal.consent_sdk.zzqv (com.google.android.gms.internal.consent_sdk.zzqv)
.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzqv;
.super Ljava/lang/Enum;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zze:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzf:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzg:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzh:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzi:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field public static final enum zzj:Lcom/google/android/gms/internal/consent_sdk/zzqv;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/consent_sdk/zzqv;


# instance fields
.field private final zzl:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v1, "VOID"

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const-wide/16 v5, 0x0

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v6, "LONG"

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const/4 v5, 0x0

    .line 4
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v6, "FLOAT"

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const-wide/16 v6, 0x0

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v6, "DOUBLE"

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zze:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    .line 6
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "BOOLEAN"

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Boolean;

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const-string v8, "STRING"

    const/4 v9, 0x6

    .line 7
    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/String;

    const-string v12, ""

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v13, v7

    sput-object v13, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    .line 8
    sget-object v12, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    const-class v10, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    const-class v11, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v14, v7

    sput-object v14, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const/16 v9, 0x8

    const/4 v12, 0x0

    .line 9
    const-string v8, "ENUM"

    const-class v11, Ljava/lang/Integer;

    move-object v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    new-instance v9, Lcom/google/android/gms/internal/consent_sdk/zzqv;

    const/16 v17, 0x9

    const/16 v20, 0x0

    .line 10
    const-string v16, "MESSAGE"

    const-class v18, Ljava/lang/Object;

    const-class v19, Ljava/lang/Object;

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/consent_sdk/zzqv;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqv;

    move-object v4, v5

    move-object v5, v6

    move-object v8, v7

    move-object v6, v13

    move-object v7, v14

    filled-new-array/range {v0 .. v9}, [Lcom/google/android/gms/internal/consent_sdk/zzqv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzk:[Lcom/google/android/gms/internal/consent_sdk/zzqv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzl:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzqv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzk:[Lcom/google/android/gms/internal/consent_sdk/zzqv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzqv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzqv;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqv;->zzl:Ljava/lang/Class;

    return-object v0
.end method
