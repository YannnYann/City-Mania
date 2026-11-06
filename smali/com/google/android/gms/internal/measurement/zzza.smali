###### Class com.google.android.gms.internal.measurement.zzza (com.google.android.gms.internal.measurement.zzza)
.class public final Lcom/google/android/gms/internal/measurement/zzza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:J

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzza;


# instance fields
.field private final zzc:I

.field private final zzd:I

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_4
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1e

    .line 1
    const-string v4, " #(+,-0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-long v5, v3

    int-to-long v7, v4

    const-wide/16 v9, 0x3

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    long-to-int v4, v7

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1e
    sput-wide v1, Lcom/google/android/gms/internal/measurement/zzza;->zza:J

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzza;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzza;->zzb:Lcom/google/android/gms/internal/measurement/zzza;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzza;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzza;->zzb:Lcom/google/android/gms/internal/measurement/zzza;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;IIZ)Lcom/google/android/gms/internal/measurement/zzza;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzabo;
        }
    .end annotation

    if-ne p1, p2, :cond_8

    if-eqz p3, :cond_5

    goto :goto_8

    .line 6
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzza;->zzb:Lcom/google/android/gms/internal/measurement/zzza;

    return-object p0

    :cond_8
    :goto_8
    const/4 v0, 0x1

    if-eq v0, p3, :cond_d

    const/4 p3, 0x0

    goto :goto_f

    :cond_d
    const/16 p3, 0x80

    :goto_f
    const/4 v1, -0x1

    if-ne p1, p2, :cond_18

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-direct {p0, p3, v1, v1}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    return-object p0

    :cond_18
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    const-string v5, "invalid flag"

    const/16 v6, 0x2e

    if-lt v3, v4, :cond_52

    const/16 v4, 0x30

    if-le v3, v4, :cond_2b

    goto :goto_52

    .line 5
    :cond_2b
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzza;->zzm(C)I

    move-result v4

    if-gez v4, :cond_42

    if-ne v3, v6, :cond_3d

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzza;

    .line 7
    invoke-static {p0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzza;->zzn(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v1, p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    return-object p1

    .line 8
    :cond_3d
    invoke-static {v5, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    :cond_42
    shl-int v1, v0, v4

    and-int v3, p3, v1

    if-nez v3, :cond_4b

    or-int/2addr p3, v1

    move p1, v2

    goto :goto_f

    .line 7
    :cond_4b
    const-string p2, "repeated flag"

    .line 9
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    :cond_52
    :goto_52
    const/16 v0, 0x39

    if-gt v3, v0, :cond_91

    add-int/lit8 v3, v3, -0x30

    :goto_58
    if-ne v2, p2, :cond_60

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-direct {p0, p3, v3, v1}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    return-object p0

    :cond_60
    add-int/lit8 v0, v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_72

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzza;

    .line 4
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzza;->zzn(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v3, p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    return-object p1

    :cond_72
    add-int/lit8 v4, v4, -0x30

    int-to-char v4, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8a

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    const v2, 0xf423f

    if-gt v3, v2, :cond_83

    move v2, v0

    goto :goto_58

    .line 8
    :cond_83
    const-string p3, "width too large"

    .line 6
    invoke-static {p3, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzabo;->zza(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    .line 4
    :cond_8a
    const-string p1, "invalid width character"

    .line 5
    invoke-static {p1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    .line 2
    :cond_91
    invoke-static {v5, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0
.end method

.method public static zzc(Ljava/lang/String;Z)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_6

    move p1, v0

    goto :goto_8

    :cond_6
    const/16 p1, 0x80

    .line 1
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzza;->zzm(C)I

    move-result v2

    if-ltz v2, :cond_1e

    shl-int v2, v1, v2

    or-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    const-string p1, "invalid flags: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    return p1
.end method

.method private static zzm(C)I
    .registers 5

    .line 0
    add-int/lit8 p0, p0, -0x20

    sget-wide v0, Lcom/google/android/gms/internal/measurement/zzza;->zza:J

    mul-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static zzn(Ljava/lang/String;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzabo;
        }
    .end annotation

    if-eq p1, p2, :cond_3a

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_5
    if-ge v1, p2, :cond_2b

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    int-to-char v3, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_24

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    const v3, 0xf423f

    if-gt v2, v3, :cond_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2
    :cond_1d
    const-string v0, "precision too large"

    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzabo;->zza(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    .line 1
    :cond_24
    const-string p1, "invalid precision character"

    .line 2
    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    :cond_2b
    if-nez v2, :cond_39

    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_32

    return v0

    .line 3
    :cond_32
    const-string v0, "invalid precision"

    .line 4
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzabo;->zza(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

    throw p0

    :cond_39
    return v2

    :cond_3a
    add-int/lit8 p1, p1, -0x1

    const-string p2, "missing precision"

    .line 5
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object p0

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzza;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzza;

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    if-ne v1, v3, :cond_1e

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    if-ne v1, v3, :cond_1e

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    if-ne p1, v1, :cond_1e

    return v0

    :cond_1e
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzd(IZZ)Lcom/google/android/gms/internal/measurement/zzza;
    .registers 4

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_19

    :cond_7
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_20

    const/4 p3, -0x1

    if-ne p2, p1, :cond_1a

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    if-ne p1, p3, :cond_1a

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    if-eq p1, p3, :cond_19

    goto :goto_1a

    :cond_19
    :goto_19
    return-object p0

    :cond_1a
    :goto_1a
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-direct {p1, p2, p3, p3}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    return-object p1

    :cond_20
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzza;->zzb:Lcom/google/android/gms/internal/measurement/zzza;

    return-object p1
.end method

.method public final zze()Z
    .registers 2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzza;->zzb:Lcom/google/android/gms/internal/measurement/zzza;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    return v0
.end method

.method public final zzg()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    return v0
.end method

.method public final zzh(IZ)Z
    .registers 8

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    not-int p1, p1

    and-int/2addr p1, v0

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    return v2

    :cond_10
    const/4 p1, -0x1

    if-nez p2, :cond_18

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    if-eq p2, p1, :cond_18

    return v2

    :cond_18
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    and-int/lit8 v3, v0, 0x9

    const/16 v4, 0x9

    if-ne v3, v4, :cond_21

    return v2

    :cond_21
    const/16 v3, 0x60

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_27

    return v2

    :cond_27
    if-eqz v0, :cond_2c

    if-ne p2, p1, :cond_2c

    return v2

    :cond_2c
    return v1
.end method

.method public final zzi(Lcom/google/android/gms/internal/measurement/zzyz;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyz;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyz;->zzc()Lcom/google/android/gms/internal/measurement/zzzb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzb;->zza()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->zzh(IZ)Z

    move-result p1

    return p1
.end method

.method public final zzj()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    return v0
.end method

.method public final zzk()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzc:I

    const/4 v1, 0x0

    :goto_9
    and-int/lit16 v2, v0, -0x81

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    if-gt v3, v2, :cond_1e

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    const-string v2, " #(+,-0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_26
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zze:I

    if-eq v0, v1, :cond_32

    const/16 v1, 0x2e

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_32
    return-object p1
.end method
