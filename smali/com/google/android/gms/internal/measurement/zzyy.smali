###### Class com.google.android.gms.internal.measurement.zzyy (com.google.android.gms.internal.measurement.zzyy)
.class public final Lcom/google/android/gms/internal/measurement/zzyy;
.super Lcom/google/android/gms/internal/measurement/zzabm;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzabi;


# instance fields
.field protected final zza:[Ljava/lang/Object;

.field protected final zzb:Ljava/lang/StringBuilder;

.field private zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaaf;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabm;-><init>(Lcom/google/android/gms/internal/measurement/zzaaf;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzc:I

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zza:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzzd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzh()Lcom/google/android/gms/internal/measurement/zzaaf;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyy;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzh()Lcom/google/android/gms/internal/measurement/zzaaf;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzi()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(Lcom/google/android/gms/internal/measurement/zzaaf;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzl()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzi()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzj()I

    move-result v0

    if-le p0, v0, :cond_29

    const-string p0, " [ERROR: UNUSED LOG ARGUMENTS]"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    return-object p1

    .line 5
    :cond_2a
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzj()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private static zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "[INVALID: format="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value="

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final zzb(IILcom/google/android/gms/internal/measurement/zzabh;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzh()Lcom/google/android/gms/internal/measurement/zzabn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzi()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzc:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/measurement/zzabn;->zzd(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zza:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabh;->zze(Lcom/google/android/gms/internal/measurement/zzabi;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzc:I

    return-void
.end method

.method public final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyz;Lcom/google/android/gms/internal/measurement/zzza;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzyz;->zzc()Lcom/google/android/gms/internal/measurement/zzzb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6a

    if-eq v0, v4, :cond_5b

    if-eq v0, v2, :cond_3e

    if-eq v0, v1, :cond_29

    const/4 v5, 0x4

    if-ne v0, v5, :cond_27

    .line 3
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_25

    :cond_23
    :goto_23
    move v0, v4

    goto :goto_5d

    :cond_25
    move v0, v3

    goto :goto_5d

    :cond_27
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 4
    :cond_29
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_25

    goto :goto_23

    .line 5
    :cond_3e
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_43

    goto :goto_23

    .line 6
    :cond_43
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_4f

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_4f

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_25

    .line 7
    :cond_4f
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    goto :goto_5d

    .line 8
    :cond_5b
    instance-of v0, p1, Ljava/lang/Boolean;

    :goto_5d
    if-eqz v0, :cond_60

    goto :goto_6a

    .line 20
    :cond_60
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzyz;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_bd

    if-eq v5, v4, :cond_b3

    if-eq v5, v2, :cond_8e

    if-eq v5, v1, :cond_b3

    const/4 v1, 0x5

    if-eq v5, v1, :cond_7c

    goto :goto_cf

    :cond_7c
    const/16 v1, 0x80

    .line 14
    invoke-virtual {p3, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/zzza;->zzd(IZZ)Lcom/google/android/gms/internal/measurement/zzza;

    move-result-object v1

    .line 15
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/measurement/zzza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzc(Ljava/lang/StringBuilder;Ljava/lang/Number;Lcom/google/android/gms/internal/measurement/zzza;)V

    return-void

    .line 24
    :cond_8e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 10
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_9c

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 12
    :cond_9c
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    ushr-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_ab

    int-to-char p1, p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 14
    :cond_ab
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void

    .line 16
    :cond_b3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 18
    :cond_bd
    instance-of v1, p1, Ljava/util/Formattable;

    if-nez v1, :cond_107

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 21
    :cond_cf
    :goto_cf
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzyz;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zze()Z

    move-result v2

    if-nez v2, :cond_f9

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzyz;->zzb()C

    move-result p2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zzk()Z

    move-result v1

    if-eqz v1, :cond_e7

    const v1, 0xffdf

    and-int/2addr p2, v1

    :cond_e7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/measurement/zzza;->zzl(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    int-to-char p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f9
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzzh;->zza:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 24
    invoke-static {p2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 20
    :cond_107
    check-cast p1, Ljava/util/Formattable;

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzb(Ljava/util/Formattable;Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/measurement/zzza;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzabf;Lcom/google/android/gms/internal/measurement/zzza;)V
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_32

    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_32

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_d

    goto :goto_32

    .line 7
    :cond_d
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzabf;->zzb()C

    move-result p2

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "%t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1
    :cond_32
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/measurement/zzza;->zzl(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzza;->zzk()Z

    move-result p3

    if-eq v1, p3, :cond_46

    const/16 p3, 0x74

    goto :goto_48

    :cond_46
    const/16 p3, 0x54

    .line 5
    :goto_48
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzabf;->zzb()C

    move-result p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzh;->zza:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final zze()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    const-string v1, "[ERROR: MISSING LOG ARGUMENT]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final zzf()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final bridge synthetic zzg()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzh()Lcom/google/android/gms/internal/measurement/zzabn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzi()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzyy;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzabn;->zzd(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    return-object v4
.end method
