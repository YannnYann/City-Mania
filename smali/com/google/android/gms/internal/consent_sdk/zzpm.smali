###### Class com.google.android.gms.internal.consent_sdk.zzpm (com.google.android.gms.internal.consent_sdk.zzpm)
.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzpm;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;


# instance fields
.field private zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzpk;

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpk;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    .line 2
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zza:I

    return-void
.end method

.method public static zzi(III)I
    .registers 5

    add-int/lit8 p0, p2, -0x2f

    const/16 p1, 0x2f

    or-int/2addr p0, p1

    if-ltz p0, :cond_8

    return p1

    .line 1
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    if-eqz v1, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zza:I

    iget v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zza:I

    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    if-eq v0, v1, :cond_24

    return v2

    .line 3
    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Z

    move-result p1

    return p1

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zza:I

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zze(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zza:I

    :cond_12
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzpf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_1f

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzsk;->zza(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_1f
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzpm;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzsk;->zza(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_30
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 4
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(I)B
.end method

.method public abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(III)I
.end method

.method public abstract zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzpm;
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/consent_sdk/zzpe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Z
.end method
