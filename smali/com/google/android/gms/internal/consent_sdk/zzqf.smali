###### Class com.google.android.gms.internal.consent_sdk.zzqf (com.google.android.gms.internal.consent_sdk.zzqf)
.class final Lcom/google/android/gms/internal/consent_sdk/zzqf;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/consent_sdk/zzqf;


# instance fields
.field final zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

.field zzb:Z

.field zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzqf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqf;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzsd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzsd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsd;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)I
    .registers 4

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    if-ne p0, v0, :cond_b

    add-int/2addr p1, p1

    .line 3
    :cond_b
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)I
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzta;->zza:Lcom/google/android/gms/internal/consent_sdk/zzta;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_10a

    .line 36
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_16
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 8
    :pswitch_27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_37
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v1

    .line 11
    :pswitch_3f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v0

    .line 1
    :pswitch_47
    instance-of p0, p1, Lcom/google/android/gms/internal/consent_sdk/zzqo;

    if-eqz p0, :cond_57

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzqo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqo;->zza()I

    move-result p0

    int-to-long p0, p0

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 4
    :cond_57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 12
    :pswitch_63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    return p0

    .line 26
    :pswitch_6e
    instance-of p0, p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz p0, :cond_80

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    :goto_7e
    add-int/2addr p1, p0

    return p1

    .line 16
    :cond_80
    check-cast p1, [B

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    .line 17
    array-length p0, p1

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    goto :goto_7e

    .line 12
    :pswitch_8a
    instance-of p0, p1, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    if-eqz p0, :cond_99

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza()I

    move-result p0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    goto :goto_7e

    .line 26
    :cond_99
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzA(Lcom/google/android/gms/internal/consent_sdk/zzrq;)I

    move-result p0

    return p0

    .line 27
    :pswitch_a0
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result p0

    return p0

    .line 18
    :pswitch_a7
    instance-of p0, p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz p0, :cond_b8

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result p0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    goto :goto_7e

    .line 22
    :cond_b8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzB(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 28
    :pswitch_bf
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    const/4 p0, 0x1

    return p0

    .line 29
    :pswitch_c8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v0

    .line 30
    :pswitch_d0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v1

    .line 31
    :pswitch_d8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 33
    :pswitch_e4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 34
    :pswitch_ef
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 35
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzD(J)I

    move-result p0

    return p0

    .line 36
    :pswitch_fa
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v0

    .line 37
    :pswitch_102
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzf:I

    return v1

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_102
        :pswitch_fa
        :pswitch_ef
        :pswitch_e4
        :pswitch_d8
        :pswitch_d0
        :pswitch_c8
        :pswitch_bf
        :pswitch_a7
        :pswitch_a0
        :pswitch_8a
        :pswitch_6e
        :pswitch_63
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method

.method public static zzc(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)I
    .registers 7

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzsz;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zze()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_3e

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3d

    move p0, v3

    :goto_22
    if-ge v3, v2, :cond_30

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_30
    shl-int/lit8 p1, v1, 0x3

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_3d
    return v3

    :cond_3e
    move p0, v3

    :goto_3f
    if-ge v3, v2, :cond_4d

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza(Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_4d
    return p0

    .line 14
    :cond_4e
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza(Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zze()Lcom/google/android/gms/internal/consent_sdk/zzqf;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqf;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/consent_sdk/zzpv;Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    if-eq p1, v0, :cond_f0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zza()I

    move-result v0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzu(II)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzta;->zza:Lcom/google/android/gms/internal/consent_sdk/zzta;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_fe

    return-void

    .line 9
    :pswitch_15
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzy(J)V

    return-void

    .line 11
    :pswitch_25
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzw(I)V

    return-void

    .line 13
    :pswitch_34
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzm(J)V

    return-void

    .line 15
    :pswitch_3e
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzk(I)V

    return-void

    .line 4
    :pswitch_48
    instance-of p1, p3, Lcom/google/android/gms/internal/consent_sdk/zzqo;

    if-eqz p1, :cond_56

    .line 5
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzqo;

    invoke-interface {p3}, Lcom/google/android/gms/internal/consent_sdk/zzqo;->zza()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzo(I)V

    return-void

    .line 7
    :cond_56
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzo(I)V

    return-void

    .line 17
    :pswitch_60
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzw(I)V

    return-void

    .line 22
    :pswitch_6a
    instance-of p1, p3, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz p1, :cond_74

    .line 18
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    return-void

    .line 19
    :cond_74
    check-cast p3, [B

    .line 20
    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzL([BII)V

    return-void

    .line 23
    :pswitch_7c
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    return-void

    .line 24
    :pswitch_82
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 25
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzB(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    return-void

    .line 17
    :pswitch_88
    instance-of p1, p3, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz p1, :cond_92

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    return-void

    .line 22
    :cond_92
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzt(Ljava/lang/String;)V

    return-void

    .line 26
    :pswitch_98
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzJ(B)V

    return-void

    .line 28
    :pswitch_a2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzk(I)V

    return-void

    .line 29
    :pswitch_ac
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzm(J)V

    return-void

    .line 30
    :pswitch_b6
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzo(I)V

    return-void

    .line 31
    :pswitch_c0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzy(J)V

    return-void

    .line 32
    :pswitch_ca
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzy(J)V

    return-void

    .line 34
    :pswitch_d4
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzk(I)V

    return-void

    .line 36
    :pswitch_e2
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzm(J)V

    return-void

    .line 38
    :cond_f0
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    const/4 p1, 0x3

    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzu(II)V

    .line 40
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzB(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzu(II)V

    return-void

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a2
        :pswitch_98
        :pswitch_88
        :pswitch_82
        :pswitch_7c
        :pswitch_6a
        :pswitch_60
        :pswitch_48
        :pswitch_3e
        :pswitch_34
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method

.method private static zzk(Ljava/util/Map$Entry;)Z
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzc()Lcom/google/android/gms/internal/consent_sdk/zzta;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzta;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzta;

    if-ne v1, v2, :cond_39

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zze()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_20
    if-ge v2, v0, :cond_39

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzl(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 8
    :cond_30
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method private static zzl(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrr;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zzrr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzrr;->zzo()Z

    move-result p0

    return p0

    :cond_b
    instance-of p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzm(Ljava/util/Map$Entry;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzc()Lcom/google/android/gms/internal/consent_sdk/zzta;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzta;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzta;

    if-ne v2, v3, :cond_77

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zze()Z

    move-result v2

    if-nez v2, :cond_77

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzd()Z

    move-result v2

    if-nez v2, :cond_77

    instance-of v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_53

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zza()I

    move-result p0

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v3

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    :goto_50
    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    .line 14
    :cond_53
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v3

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p0

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzA(Lcom/google/android/gms/internal/consent_sdk/zzrq;)I

    move-result v1

    add-int/2addr p0, v1

    goto :goto_50

    .line 6
    :cond_77
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final zzn(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzsz;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zzb:[B

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzta;->zza:Lcom/google/android/gms/internal/consent_sdk/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzta;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_48

    .line 4
    :pswitch_19
    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-nez v0, :cond_21

    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    if-eqz v0, :cond_48

    :cond_21
    return-void

    :pswitch_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_2a

    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzqo;

    if-eqz v0, :cond_48

    :cond_2a
    return-void

    .line 6
    :pswitch_2b
    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-nez v0, :cond_33

    .line 5
    instance-of v0, p1, [B

    if-eqz v0, :cond_48

    :cond_33
    return-void

    .line 6
    :pswitch_34
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_45

    .line 7
    :pswitch_37
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_45

    .line 8
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_45

    .line 9
    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_45

    .line 10
    :pswitch_40
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_45

    .line 11
    :pswitch_43
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_45
    if-eqz v0, :cond_48

    return-void

    .line 3
    :cond_48
    :goto_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzta;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzc()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_25

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzse;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/consent_sdk/zzse;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzqe;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_47
    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzc:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzc:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzqf;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzqf;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzm(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzm(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1e

    :cond_30
    return v3
.end method

.method public final zzf()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzc:Z

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzqx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqx;-><init>(Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzb:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzc()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    if-eqz v4, :cond_1f

    .line 3
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzx()V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4
    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    if-eqz v3, :cond_2a

    .line 6
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzx()V

    goto :goto_2a

    .line 7
    :cond_44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzb:Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqe;->zze()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_27

    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_25

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzn(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_25
    move-object p2, v1

    goto :goto_32

    .line 2
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzn(Lcom/google/android/gms/internal/consent_sdk/zzqe;Ljava/lang/Object;)V

    .line 9
    :goto_32
    instance-of v0, p2, Lcom/google/android/gms/internal/consent_sdk/zzqz;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzc:Z

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzj()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_18

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzk(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_15

    return v2

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsi;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zzk(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_33
    const/4 v0, 0x1

    return v0
.end method
