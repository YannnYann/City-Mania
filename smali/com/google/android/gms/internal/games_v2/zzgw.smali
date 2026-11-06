###### Class com.google.android.gms.internal.games_v2.zzgw (com.google.android.gms.internal.games_v2.zzgw)
.class final Lcom/google/android/gms/internal/games_v2/zzgw;
.super Lcom/google/android/gms/internal/games_v2/zzgq;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/games_v2/zzgq;

.field static final zzb:Lcom/google/android/gms/internal/games_v2/zzhe;


# instance fields
.field final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgw;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/games_v2/zzgw;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgw;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzgo;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgo;-><init>(Lcom/google/android/gms/internal/games_v2/zzgq;I)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzgw;->zzb:Lcom/google/android/gms/internal/games_v2/zzhe;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzd:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzd:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgd;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzd:I

    return v0
.end method

.method public final zzb()[Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:[Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzd:I

    return v0
.end method

.method public final zze([Ljava/lang/Object;I)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzd:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method
