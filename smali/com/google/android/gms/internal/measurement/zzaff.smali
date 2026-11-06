###### Class com.google.android.gms.internal.measurement.zzaff (com.google.android.gms.internal.measurement.zzaff)
.class final Lcom/google/android/gms/internal/measurement/zzaff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzafp<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zzafc;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/measurement/zzafz;

.field private final zzn:Lcom/google/android/gms/internal/measurement/zzadg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzagg;->zzp()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;Z[IIILcom/google/android/gms/internal/measurement/zzafh;Lcom/google/android/gms/internal/measurement/zzaeo;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;Lcom/google/android/gms/internal/measurement/zzaex;)V
    .registers 15

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_17

    instance-of p2, p5, Lcom/google/android/gms/internal/measurement/zzadr;

    if-eqz p2, :cond_17

    const/4 p1, 0x1

    :cond_17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzn:Lcom/google/android/gms/internal/measurement/zzadg;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzg:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method

.method private final zzA(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzB(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzC(I)I
    .registers 1

    .line 0
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzD(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static zzE(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzch()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private static zzF(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzG(Ljava/lang/Object;J)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzH(Ljava/lang/Object;J)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private final zzK(Ljava/lang/Object;I)Z
    .registers 10

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_ec

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzR()Z

    move-result p1

    return p1

    .line 3
    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2f

    return v6

    :cond_2f
    return v5

    .line 4
    :pswitch_30
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_39

    return v6

    :cond_39
    return v5

    .line 5
    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_41

    return v6

    :cond_41
    return v5

    .line 6
    :pswitch_42
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4b

    return v6

    :cond_4b
    return v5

    .line 7
    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v6

    :cond_53
    return v5

    .line 8
    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v6

    :cond_5b
    return v5

    .line 9
    :pswitch_5c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_63

    return v6

    :cond_63
    return v5

    .line 10
    :pswitch_64
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    return v6

    :cond_71
    return v5

    .line 11
    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_79

    return v6

    :cond_79
    return v5

    .line 12
    :pswitch_7a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8c

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    return v6

    :cond_8b
    return v5

    :cond_8c
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz p2, :cond_9a

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    return v6

    :cond_99
    return v5

    .line 16
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzR()Z

    move-result p1

    return p1

    .line 17
    :pswitch_9f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_a4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ab

    return v6

    :cond_ab
    return v5

    .line 19
    :pswitch_ac
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b5

    return v6

    :cond_b5
    return v5

    .line 20
    :pswitch_b6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bd

    return v6

    :cond_bd
    return v5

    .line 21
    :pswitch_be
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c7

    return v6

    :cond_c7
    return v5

    .line 22
    :pswitch_c8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d1

    return v6

    :cond_d1
    return v5

    .line 23
    :pswitch_d2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_dd

    return v6

    :cond_dd
    return v5

    .line 24
    :pswitch_de
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_eb

    return v6

    :cond_eb
    return v5

    :cond_ec
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    return v6

    :cond_f8
    return v5

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d2
        :pswitch_c8
        :pswitch_be
        :pswitch_b6
        :pswitch_ac
        :pswitch_a4
        :pswitch_9f
        :pswitch_7a
        :pswitch_72
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_42
        :pswitch_3a
        :pswitch_30
        :pswitch_28
    .end packed-switch
.end method

.method private final zzL(Ljava/lang/Object;I)V
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzB(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p1

    .line 3
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private final zzO(Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzP(I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zze:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzf:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzQ(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private final zzQ(II)I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_7
    if-gt p2, v1, :cond_1c

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_14

    return v4

    :cond_14
    if-ge p1, v5, :cond_19

    add-int/lit8 v1, v3, -0x1

    goto :goto_7

    :cond_19
    add-int/lit8 p2, v3, 0x1

    goto :goto_7

    :cond_1c
    return v2
.end method

.method private zzR()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static final zzS([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagm;->zza:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_b6

    .line 21
    :pswitch_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_11
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p0

    .line 5
    :pswitch_22
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p0

    .line 19
    :pswitch_33
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzg([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    return p0

    .line 7
    :pswitch_38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafl;->zza()Lcom/google/android/gms/internal/measurement/zzafl;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzafl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzh(Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    return p0

    .line 2
    :pswitch_45
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzf([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    return p0

    .line 20
    :pswitch_4a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_58

    const/4 p1, 0x1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    .line 21
    :goto_59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_60
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_6d
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p2

    .line 11
    :pswitch_7a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p0

    .line 9
    :pswitch_87
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_94
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_a5
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_94
        :pswitch_87
        :pswitch_87
        :pswitch_7a
        :pswitch_6d
        :pswitch_60
        :pswitch_4a
        :pswitch_45
        :pswitch_9
        :pswitch_38
        :pswitch_33
        :pswitch_7a
        :pswitch_7a
        :pswitch_60
        :pswitch_6d
        :pswitch_22
        :pswitch_11
    .end packed-switch
.end method

.method private static final zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzago;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzago;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzago;->zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V

    return-void
.end method

.method public static zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zza()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zzb()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_10
    return-object v0
.end method

.method public static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzaez;Lcom/google/android/gms/internal/measurement/zzafh;Lcom/google/android/gms/internal/measurement/zzaeo;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;Lcom/google/android/gms/internal/measurement/zzaex;)Lcom/google/android/gms/internal/measurement/zzaff;
    .registers 38

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzafn;

    if-eqz v1, :cond_3fc

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafn;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_25

    const/4 v4, 0x1

    :goto_1b
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_26

    move v4, v7

    goto :goto_1b

    :cond_25
    const/4 v7, 0x1

    :cond_26
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_45

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_32
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_42

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_32

    :cond_42
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_45
    if-nez v7, :cond_56

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzaff;->zza:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v17, v13

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_15d

    :cond_56
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_75

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_62
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_72

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_62

    :cond_72
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_75
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_94

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_81
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_91

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_81

    :cond_91
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_94
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b3

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_a0
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_b0

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_a0

    :cond_b0
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_b3
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_d2

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_bf
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_cf

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_bf

    :cond_cf
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_d2
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f1

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_de
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_ee

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_de

    :cond_ee
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f1
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_110

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_fd
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_fd

    :cond_10d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_110
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_123

    :goto_118
    add-int/lit8 v13, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_122

    move v14, v13

    goto :goto_118

    :cond_122
    move v14, v13

    :cond_123
    add-int/lit8 v13, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_144

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_12f
    add-int/lit8 v16, v13, 0x1

    .line 22
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_140

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v16

    goto :goto_12f

    :cond_140
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v16

    :cond_144
    add-int v15, v14, v12

    add-int/2addr v15, v4

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v15, [I

    move-object/from16 v17, v7

    move v7, v4

    move v4, v13

    move v13, v10

    move/from16 v10, v16

    move-object/from16 v16, v17

    move/from16 v17, v12

    move v12, v9

    move/from16 v9, v17

    move/from16 v17, v14

    .line 6
    :goto_15d
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafn;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafn;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v22, v17

    move/from16 v21, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_17d
    if-ge v4, v2, :cond_3e2

    add-int/lit8 v23, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a5

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_18d
    add-int/lit8 v24, v8, 0x1

    .line 29
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_19f

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_18d

    :cond_19f
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_1a7

    :cond_1a5
    move/from16 v8, v23

    :goto_1a7
    add-int/lit8 v23, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_1cd

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_1b5
    add-int/lit8 v25, v6, 0x1

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_1c7

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_1b5

    :cond_1c7
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_1cf

    :cond_1cd
    move/from16 v6, v23

    :goto_1cf
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_1d9

    add-int/lit8 v5, v19, 0x1

    .line 32
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_1d9
    and-int/lit16 v5, v8, 0xff

    move-object/from16 v25, v0

    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    const/16 v0, 0x33

    if-lt v5, v0, :cond_2a0

    add-int/lit8 v0, v6, 0x1

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v6, v0, :cond_219

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v29, v27

    move/from16 v27, v6

    move/from16 v6, v29

    const/16 v29, 0xd

    :goto_1fc
    add-int/lit8 v30, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v0, :cond_212

    and-int/lit16 v0, v6, 0x1fff

    shl-int v0, v0, v29

    or-int v27, v27, v0

    add-int/lit8 v29, v29, 0xd

    move/from16 v6, v30

    const v0, 0xd800

    goto :goto_1fc

    :cond_212
    shl-int v0, v6, v29

    or-int v6, v27, v0

    move/from16 v0, v30

    goto :goto_21b

    :cond_219
    move/from16 v0, v27

    :goto_21b
    move/from16 v27, v0

    add-int/lit8 v0, v5, -0x33

    move/from16 v29, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_229

    const/16 v2, 0x11

    if-ne v0, v2, :cond_22b

    :cond_229
    const/4 v2, 0x1

    goto :goto_24b

    :cond_22b
    const/16 v2, 0xc

    if-ne v0, v2, :cond_248

    .line 36
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzafn;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23b

    if-eqz v26, :cond_239

    goto :goto_23b

    :cond_239
    const/4 v0, 0x0

    goto :goto_258

    :cond_23b
    :goto_23b
    add-int/lit8 v0, v10, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 37
    aget-object v10, v15, v10

    aput-object v10, v9, v24

    :goto_247
    move v10, v0

    :cond_248
    move/from16 v0, v26

    goto :goto_258

    :goto_24b
    add-int/lit8 v0, v10, 0x1

    .line 34
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 35
    aget-object v2, v15, v10

    aput-object v2, v9, v28

    goto :goto_247

    :goto_258
    add-int/2addr v6, v6

    .line 38
    aget-object v2, v15, v6

    move/from16 v26, v0

    .line 39
    instance-of v0, v2, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_267

    .line 40
    check-cast v2, Ljava/lang/reflect/Field;

    :goto_263
    move/from16 v28, v6

    move v0, v7

    goto :goto_276

    .line 41
    :cond_267
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    aput-object v2, v15, v6

    add-int/lit8 v0, v21, 0x1

    .line 43
    aput v20, v16, v21

    move/from16 v21, v0

    goto :goto_263

    .line 44
    :goto_276
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    add-int/lit8 v6, v28, 0x1

    .line 45
    aget-object v7, v15, v6

    move/from16 v30, v0

    .line 46
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_288

    .line 47
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_290

    .line 48
    :cond_288
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/zzaff;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 49
    aput-object v7, v15, v6

    .line 50
    :goto_290
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    move-object v7, v1

    move v6, v2

    const/4 v2, 0x0

    const v23, 0xd800

    :goto_29b
    move v1, v0

    move/from16 v0, v26

    goto/16 :goto_3a6

    :cond_2a0
    move/from16 v29, v2

    move/from16 v30, v7

    add-int/lit8 v0, v10, 0x1

    .line 51
    aget-object v2, v15, v10

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2b6

    const/16 v7, 0x11

    if-ne v5, v7, :cond_2bb

    :cond_2b6
    move/from16 v27, v0

    const/4 v0, 0x1

    goto/16 :goto_32e

    :cond_2bb
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_320

    const/16 v7, 0x31

    if-ne v5, v7, :cond_2ca

    add-int/lit8 v10, v10, 0x2

    move/from16 v27, v0

    const/4 v0, 0x1

    goto/16 :goto_325

    :cond_2ca
    const/16 v7, 0xc

    if-eq v5, v7, :cond_303

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_303

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_2d7

    goto :goto_303

    :cond_2d7
    const/16 v7, 0x32

    if-ne v5, v7, :cond_2ff

    add-int/lit8 v7, v10, 0x2

    add-int/lit8 v27, v22, 0x1

    .line 56
    aput v20, v16, v22

    div-int/lit8 v22, v20, 0x3

    .line 57
    aget-object v0, v15, v0

    add-int v22, v22, v22

    aput-object v0, v9, v22

    if-eqz v26, :cond_2f8

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v10, 0x3

    .line 58
    aget-object v7, v15, v7

    aput-object v7, v9, v22

    move v10, v0

    move-object v7, v1

    move/from16 v22, v27

    goto :goto_33b

    :cond_2f8
    move v10, v7

    move/from16 v22, v27

    const/16 v26, 0x0

    :goto_2fd
    move-object v7, v1

    goto :goto_33b

    :cond_2ff
    move/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_338

    .line 54
    :cond_303
    :goto_303
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzafn;->zzc()I

    move-result v7

    move/from16 v27, v0

    const/4 v0, 0x1

    if-eq v7, v0, :cond_315

    if-eqz v26, :cond_30f

    goto :goto_315

    :cond_30f
    move-object v7, v1

    move/from16 v10, v27

    const/16 v26, 0x0

    goto :goto_33b

    :cond_315
    :goto_315
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 55
    aget-object v24, v15, v27

    aput-object v24, v9, v7

    goto :goto_2fd

    :cond_320
    move/from16 v27, v0

    const/4 v0, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 66
    :goto_325
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 53
    aget-object v24, v15, v27

    aput-object v24, v9, v7

    goto :goto_2fd

    .line 51
    :goto_32e
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v7

    :goto_338
    move-object v7, v1

    move/from16 v10, v27

    .line 59
    :goto_33b
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v2, v0

    and-int/lit16 v0, v8, 0x1000

    const v1, 0xfffff

    if-eqz v0, :cond_39d

    const/16 v0, 0x11

    if-gt v5, v0, :cond_39d

    add-int/lit8 v0, v6, 0x1

    .line 60
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_371

    and-int/lit16 v1, v1, 0x1fff

    const/16 v23, 0xd

    :goto_35a
    add-int/lit8 v27, v0, 0x1

    .line 61
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_36c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v23

    or-int/2addr v1, v0

    add-int/lit8 v23, v23, 0xd

    move/from16 v0, v27

    goto :goto_35a

    :cond_36c
    shl-int v0, v0, v23

    or-int/2addr v1, v0

    move/from16 v0, v27

    :cond_371
    add-int v23, v30, v30

    div-int/lit8 v27, v1, 0x20

    add-int v23, v23, v27

    .line 62
    aget-object v6, v15, v23

    move/from16 v28, v0

    .line 63
    instance-of v0, v6, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_384

    .line 64
    check-cast v6, Ljava/lang/reflect/Field;

    :goto_381
    move/from16 v23, v1

    goto :goto_38d

    .line 65
    :cond_384
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 66
    aput-object v6, v15, v23

    goto :goto_381

    .line 67
    :goto_38d
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v1, v23, 0x20

    move v6, v2

    move/from16 v27, v28

    const v23, 0xd800

    move v2, v1

    goto/16 :goto_29b

    :cond_39d
    const v23, 0xd800

    move/from16 v27, v6

    move/from16 v0, v26

    move v6, v2

    const/4 v2, 0x0

    :goto_3a6
    add-int/lit8 v26, v20, 0x1

    .line 68
    aput v4, v11, v20

    add-int/lit8 v4, v20, 0x2

    move/from16 v28, v0

    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_3b5

    const/high16 v0, 0x20000000

    goto :goto_3b6

    :cond_3b5
    const/4 v0, 0x0

    :goto_3b6
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_3bd

    const/high16 v8, 0x10000000

    goto :goto_3be

    :cond_3bd
    const/4 v8, 0x0

    :goto_3be
    if-eqz v28, :cond_3c3

    const/high16 v28, -0x80000000

    goto :goto_3c5

    :cond_3c3
    const/16 v28, 0x0

    :goto_3c5
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v8

    or-int v0, v0, v28

    or-int/2addr v0, v5

    or-int/2addr v0, v6

    .line 69
    aput v0, v11, v26

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v2, 0x14

    or-int/2addr v0, v1

    .line 70
    aput v0, v11, v4

    move-object v1, v7

    move/from16 v5, v23

    move-object/from16 v0, v25

    move/from16 v4, v27

    move/from16 v2, v29

    move/from16 v7, v30

    goto/16 :goto_17d

    :cond_3e2
    move-object/from16 v25, v0

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaff;

    .line 71
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzafn;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/measurement/zzaff;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;Z[IIILcom/google/android/gms/internal/measurement/zzafh;Lcom/google/android/gms/internal/measurement/zzaeo;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;Lcom/google/android/gms/internal/measurement/zzaex;)V

    return-object v9

    .line 72
    :cond_3fc
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafw;

    const/4 v0, 0x0

    .line 73
    throw v0
.end method

.method private static zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_36

    .line 10
    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_36
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_3a
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_4f
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_53
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 3
    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3a

    .line 11
    :cond_30
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_3a
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_3e
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_53
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzafp;

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafl;->zza()Lcom/google/android/gms/internal/measurement/zzafl;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzafl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzr(I)Ljava/lang/Object;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadz;

    return-object p1
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 7
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private final zzu(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzv(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 6
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzafp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    aget v0, v0, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 4
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v1

    if-nez v1, :cond_1b

    :goto_1a
    return-object p3

    .line 5
    :cond_1b
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzaev;->zze()Lcom/google/android/gms/internal/measurement/zzaeu;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2f

    if-nez p3, :cond_51

    .line 11
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/measurement/zzafz;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    :cond_51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaev;->zzc(Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    .line 14
    new-array v4, v3, [B

    .line 15
    sget v5, Lcom/google/android/gms/internal/measurement/zzada;->zzb:I

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzacx;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/measurement/zzacx;-><init>([BII)V

    .line 17
    :try_start_69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, p2, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaev;->zzb(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_74} :catch_7f

    .line 18
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzaco;->zza(Lcom/google/android/gms/internal/measurement/zzada;[B)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzafz;->zzd(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzacr;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :catch_7f
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 20
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_86
    return-object p3
.end method

.method private static zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafp;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzD(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_13

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_13
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzi:Z

    if-eqz p2, :cond_1f

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2
    :cond_1f
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzq()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzg:Lcom/google/android/gms/internal/measurement/zzafc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzck()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    array-length v2, v2

    const v3, 0xfffff

    if-ge v1, v2, :cond_1c4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_1c

    const/16 v5, 0x45

    if-ge v4, v5, :cond_1c

    goto/16 :goto_1bf

    :cond_1c
    and-int/2addr v2, v3

    int-to-long v2, v2

    packed-switch v4, :pswitch_data_218

    goto/16 :goto_1bf

    .line 2
    :pswitch_23
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzN(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    goto/16 :goto_1bf

    .line 5
    :pswitch_39
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_52

    .line 7
    :pswitch_46
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_52
    if-nez v2, :cond_1bf

    goto/16 :goto_1c3

    .line 9
    :pswitch_56
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 10
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    goto/16 :goto_1bf

    .line 12
    :pswitch_6c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 13
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    goto/16 :goto_1bf

    .line 14
    :pswitch_80
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 15
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 16
    :pswitch_92
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 17
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    goto/16 :goto_1bf

    .line 18
    :pswitch_a6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 19
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 20
    :pswitch_b8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 21
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 22
    :pswitch_ca
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 23
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 24
    :pswitch_dc
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 25
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    goto/16 :goto_1bf

    .line 27
    :pswitch_f2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 28
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    goto/16 :goto_1bf

    .line 30
    :pswitch_108
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 31
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    goto/16 :goto_1bf

    .line 33
    :pswitch_11e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 34
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 35
    :pswitch_130
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 36
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto/16 :goto_1bf

    .line 37
    :pswitch_142
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 38
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    goto :goto_1bf

    .line 39
    :pswitch_155
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 40
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto :goto_1bf

    .line 41
    :pswitch_166
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 42
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    goto :goto_1bf

    .line 43
    :pswitch_179
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 44
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    goto :goto_1bf

    .line 45
    :pswitch_18c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 46
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 47
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v4, v2, :cond_1c3

    goto :goto_1bf

    .line 48
    :pswitch_1a5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 49
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 50
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c3

    :cond_1bf
    :goto_1bf
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_1c3
    :goto_1c3
    return v0

    .line 47
    :cond_1c4
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    :goto_1c6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    array-length v4, v2

    if-ge v1, v4, :cond_1f3

    .line 51
    aget v2, v2, v1

    .line 52
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzN(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_1d4

    return v0

    .line 53
    :cond_1d4
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1db

    goto :goto_1f0

    .line 54
    :cond_1db
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v4, v2

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 56
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzafq;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f0

    return v0

    :cond_1f0
    :goto_1f0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c6

    .line 57
    :cond_1f3
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    .line 58
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_204

    return v0

    :cond_204
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v0, :cond_215

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    .line 61
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzadk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_215
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_1a5
        :pswitch_18c
        :pswitch_179
        :pswitch_166
        :pswitch_155
        :pswitch_142
        :pswitch_130
        :pswitch_11e
        :pswitch_108
        :pswitch_f2
        :pswitch_dc
        :pswitch_ca
        :pswitch_b8
        :pswitch_a6
        :pswitch_92
        :pswitch_80
        :pswitch_6c
        :pswitch_56
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_39
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_f9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_1b

    const/16 v6, 0x45

    if-lt v5, v6, :cond_f5

    :cond_1b
    and-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_13a

    goto/16 :goto_f5

    :pswitch_26
    mul-int/lit8 v2, v2, 0x35

    .line 2
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_30
    add-int/2addr v2, v3

    goto/16 :goto_f5

    :pswitch_33
    mul-int/lit8 v2, v2, 0x35

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_30

    :pswitch_3e
    mul-int/lit8 v2, v2, 0x35

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_4a
    :goto_4a
    add-int/2addr v2, v6

    goto/16 :goto_f5

    :pswitch_4d
    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    :goto_55
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_30

    :pswitch_5a
    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_30

    :pswitch_61
    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto :goto_55

    :pswitch_6a
    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_30

    :pswitch_71
    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_30

    :pswitch_78
    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_30

    :pswitch_7f
    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_30

    :pswitch_8a
    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_4a

    :pswitch_97
    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_30

    :pswitch_a4
    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaed;->zza(Z)I

    move-result v3

    goto :goto_30

    :pswitch_af
    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_30

    :pswitch_b7
    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto :goto_55

    :pswitch_c0
    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_30

    :pswitch_c8
    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto :goto_55

    :pswitch_d1
    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto/16 :goto_55

    :pswitch_db
    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_30

    :pswitch_e7
    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 24
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto/16 :goto_55

    :cond_f5
    :goto_f5
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    .line 22
    :cond_f9
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    :goto_fb
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    array-length v5, v3

    if-ge v1, v5, :cond_11c

    .line 25
    aget v3, v3, v1

    .line 26
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_119

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_119
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    :cond_11c
    mul-int/lit8 v2, v2, 0x35

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v0, :cond_139

    mul-int/lit8 v2, v2, 0x35

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzadk;->zza:Lcom/google/android/gms/internal/measurement/zzafv;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzafv;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_139
    return v2

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_db
        :pswitch_d1
        :pswitch_c8
        :pswitch_c0
        :pswitch_b7
        :pswitch_af
        :pswitch_a4
        :pswitch_97
        :pswitch_8a
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_61
        :pswitch_5a
        :pswitch_4d
        :pswitch_3e
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_26
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzF(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1b6

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v2

    .line 4
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_1c6

    goto/16 :goto_1b2

    .line 13
    :pswitch_20
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 14
    :pswitch_25
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 15
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_1b2

    .line 17
    :pswitch_37
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 18
    :pswitch_3c
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 19
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_1b2

    .line 21
    :pswitch_4e
    sget v1, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 22
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaex;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b2

    .line 5
    :pswitch_61
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaef;

    .line 6
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_87

    if-lez v6, :cond_87

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v7

    if-nez v7, :cond_84

    add-int/2addr v6, v5

    .line 10
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v1

    .line 11
    :cond_84
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_87
    if-gtz v5, :cond_8a

    goto :goto_8b

    :cond_8a
    move-object v2, v1

    .line 12
    :goto_8b
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b2

    .line 25
    :pswitch_90
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 26
    :pswitch_95
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 27
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 29
    :pswitch_a7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 30
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 32
    :pswitch_b9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 33
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 35
    :pswitch_cb
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 36
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 38
    :pswitch_dd
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 39
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 41
    :pswitch_ef
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 42
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 44
    :pswitch_101
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 45
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 47
    :pswitch_113
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 48
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 49
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 51
    :pswitch_12a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 52
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzh(Ljava/lang/Object;JZ)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 54
    :pswitch_13c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 55
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 57
    :pswitch_14d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 58
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 60
    :pswitch_15e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 61
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 63
    :pswitch_16f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 64
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 66
    :pswitch_180
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 67
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zze(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 69
    :pswitch_191
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 70
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzj(Ljava/lang/Object;JF)V

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 72
    :pswitch_1a2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 73
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzl(Ljava/lang/Object;JD)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    :cond_1b2
    :goto_1b2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_7

    :cond_1b6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzE(Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v0, :cond_1c4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzn:Lcom/google/android/gms/internal/measurement/zzadg;

    .line 76
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzafq;->zzD(Lcom/google/android/gms/internal/measurement/zzadg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c4
    return-void

    nop

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_191
        :pswitch_180
        :pswitch_16f
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_113
        :pswitch_101
        :pswitch_ef
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_95
        :pswitch_90
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_4e
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x1

    .line 1
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const v9, 0xfffff

    move v2, v8

    move v4, v2

    move v10, v4

    move v3, v9

    :goto_f
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    array-length v11, v5

    if-ge v2, v11, :cond_784

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v12

    .line 2
    aget v13, v5, v2

    add-int/lit8 v14, v2, 0x2

    .line 3
    aget v5, v5, v14

    and-int v14, v5, v9

    const/16 v15, 0x11

    if-gt v12, v15, :cond_3a

    if-eq v14, v3, :cond_35

    if-ne v14, v9, :cond_2e

    move v4, v8

    goto :goto_34

    :cond_2e
    int-to-long v3, v14

    .line 4
    invoke-virtual {v7, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_34
    move v3, v14

    :cond_35
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v6, v5

    goto :goto_3b

    :cond_3a
    move v5, v8

    :goto_3b
    and-int/2addr v11, v9

    .line 5
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzadl;->zzJ:Lcom/google/android/gms/internal/measurement/zzadl;

    .line 6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzadl;->zza()I

    move-result v14

    if-lt v12, v14, :cond_49

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzadl;->zzW:Lcom/google/android/gms/internal/measurement/zzadl;

    .line 5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzadl;->zza()I

    :cond_49
    int-to-long v14, v11

    const/16 v11, 0x3f

    packed-switch v12, :pswitch_data_7e4

    goto :goto_65

    .line 7
    :pswitch_50
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 8
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v11

    .line 10
    invoke-static {v13, v5, v11}, Lcom/google/android/gms/internal/measurement/zzafq;->zzA(ILcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    :goto_64
    add-int/2addr v10, v5

    :cond_65
    :goto_65
    move/from16 v17, v6

    goto/16 :goto_77c

    .line 11
    :pswitch_69
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 12
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    add-long v14, v12, v12

    shr-long v11, v12, v11

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    xor-long/2addr v11, v14

    .line 14
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v11

    :goto_82
    add-int/2addr v5, v11

    goto :goto_64

    .line 15
    :pswitch_84
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 16
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v11

    add-int v12, v11, v11

    shr-int/lit8 v11, v11, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    xor-int/2addr v11, v12

    .line 18
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_82

    .line 19
    :pswitch_9e
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    :goto_aa
    add-int/lit8 v5, v5, 0x8

    goto :goto_64

    .line 21
    :pswitch_ad
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    :goto_b9
    add-int/lit8 v5, v5, 0x4

    goto :goto_64

    .line 23
    :pswitch_bc
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 24
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v11

    int-to-long v11, v11

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 26
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v11

    goto :goto_82

    .line 27
    :pswitch_d2
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 28
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v11

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 30
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_82

    .line 31
    :pswitch_e7
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 32
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v11

    .line 35
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v12

    :goto_101
    add-int/2addr v12, v11

    add-int/2addr v5, v12

    goto/16 :goto_64

    .line 36
    :pswitch_105
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 37
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v11

    invoke-static {v13, v5, v11}, Lcom/google/android/gms/internal/measurement/zzafq;->zzz(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    goto/16 :goto_64

    .line 39
    :pswitch_119
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 40
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v12, :cond_138

    .line 41
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v11

    .line 44
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v12

    goto :goto_101

    .line 45
    :cond_138
    check-cast v11, Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 47
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzagl;->zzb(Ljava/lang/String;)I

    move-result v11

    .line 48
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v12

    goto :goto_101

    .line 49
    :pswitch_147
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 50
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    add-int/2addr v5, v6

    goto/16 :goto_64

    .line 51
    :pswitch_156
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 52
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto/16 :goto_b9

    .line 53
    :pswitch_164
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 54
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto/16 :goto_aa

    .line 55
    :pswitch_172
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 56
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v11

    int-to-long v11, v11

    .line 57
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 58
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v11

    goto/16 :goto_82

    .line 59
    :pswitch_189
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 60
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 62
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v11

    goto/16 :goto_82

    .line 63
    :pswitch_19f
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 64
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 65
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    .line 66
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v11

    goto/16 :goto_82

    .line 67
    :pswitch_1b5
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 68
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto/16 :goto_b9

    .line 69
    :pswitch_1c3
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_65

    shl-int/lit8 v5, v13, 0x3

    .line 70
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto/16 :goto_aa

    .line 71
    :pswitch_1d1
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object v11

    .line 72
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 73
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzaev;

    .line 74
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1e5

    move v12, v8

    goto :goto_208

    .line 75
    :cond_1e5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzaew;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v12, v8

    :goto_1ee
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_208

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v13, v15, v14}, Lcom/google/android/gms/internal/measurement/zzaev;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v12, v14

    goto :goto_1ee

    :cond_208
    :goto_208
    add-int/2addr v10, v12

    goto/16 :goto_65

    .line 77
    :pswitch_20b
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v11

    .line 79
    sget v12, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_221

    move v15, v8

    :cond_21e
    move/from16 v17, v6

    goto :goto_239

    :cond_221
    move v14, v8

    move v15, v14

    :goto_223
    if-ge v14, v12, :cond_21e

    .line 81
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-static {v13, v6, v11}, Lcom/google/android/gms/internal/measurement/zzafq;->zzA(ILcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v6

    add-int/2addr v15, v6

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    goto :goto_223

    :goto_239
    add-int/2addr v10, v15

    goto/16 :goto_77c

    :pswitch_23c
    move/from16 v17, v6

    .line 82
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzq(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 84
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    :goto_254
    add-int/2addr v6, v11

    add-int/2addr v6, v5

    :cond_256
    :goto_256
    add-int/2addr v10, v6

    goto/16 :goto_77c

    :pswitch_259
    move/from16 v17, v6

    .line 86
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzu(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 88
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_254

    :pswitch_272
    move/from16 v17, v6

    .line 90
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 91
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 92
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_254

    :pswitch_28b
    move/from16 v17, v6

    .line 94
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 96
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_254

    :pswitch_2a4
    move/from16 v17, v6

    .line 98
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzr(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 100
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_254

    :pswitch_2bd
    move/from16 v17, v6

    .line 102
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 103
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 104
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_2d7
    move/from16 v17, v6

    .line 106
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 107
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 108
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 109
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_2f3
    move/from16 v17, v6

    .line 111
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 113
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 114
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_30d
    move/from16 v17, v6

    .line 115
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 117
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 118
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_327
    move/from16 v17, v6

    .line 119
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 120
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 121
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 122
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_341
    move/from16 v17, v6

    .line 123
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 124
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzp(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 125
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 126
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_35b
    move/from16 v17, v6

    .line 127
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 128
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzo(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 129
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 130
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_375
    move/from16 v17, v6

    .line 131
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 132
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 133
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 134
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_38f
    move/from16 v17, v6

    .line 135
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 136
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_77c

    shl-int/lit8 v6, v13, 0x3

    .line 137
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    .line 138
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_254

    :pswitch_3a9
    move/from16 v17, v6

    .line 139
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 140
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 141
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3bb

    :goto_3b9
    move v5, v8

    goto :goto_3c7

    :cond_3bb
    shl-int/lit8 v11, v13, 0x3

    .line 142
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzq(Ljava/util/List;)I

    move-result v5

    .line 143
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    :goto_3c5
    mul-int/2addr v6, v11

    add-int/2addr v5, v6

    :goto_3c7
    add-int/2addr v10, v5

    goto/16 :goto_77c

    :pswitch_3ca
    move/from16 v17, v6

    .line 144
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 145
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3db

    goto :goto_3b9

    :cond_3db
    shl-int/lit8 v11, v13, 0x3

    .line 147
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzu(Ljava/util/List;)I

    move-result v5

    .line 148
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_3c5

    :pswitch_3e6
    move/from16 v17, v6

    .line 149
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto :goto_3c7

    :pswitch_3f3
    move/from16 v17, v6

    .line 151
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 152
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto :goto_3c7

    :pswitch_400
    move/from16 v17, v6

    .line 153
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 154
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_411

    goto :goto_3b9

    :cond_411
    shl-int/lit8 v11, v13, 0x3

    .line 156
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzr(Ljava/util/List;)I

    move-result v5

    .line 157
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_3c5

    :pswitch_41c
    move/from16 v17, v6

    .line 158
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 159
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 160
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_42d

    goto :goto_3b9

    :cond_42d
    shl-int/lit8 v11, v13, 0x3

    .line 161
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzt(Ljava/util/List;)I

    move-result v5

    .line 162
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto :goto_3c5

    :pswitch_438
    move/from16 v17, v6

    .line 163
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 164
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 165
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_44b

    move v6, v8

    goto/16 :goto_256

    :cond_44b
    shl-int/lit8 v11, v13, 0x3

    .line 166
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    mul-int/2addr v6, v11

    move v11, v8

    .line 167
    :goto_453
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_256

    .line 168
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 169
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v12

    .line 170
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v6, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_453

    :pswitch_46c
    move/from16 v17, v6

    .line 171
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v6

    .line 172
    sget v11, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 173
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_482

    move v12, v8

    goto :goto_4af

    :cond_482
    shl-int/lit8 v12, v13, 0x3

    .line 174
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v8

    :goto_48a
    if-ge v13, v11, :cond_4af

    .line 175
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Lcom/google/android/gms/internal/measurement/zzaem;

    if-eqz v15, :cond_4a1

    .line 176
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaem;

    .line 177
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzaem;->zzb()I

    move-result v14

    .line 178
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v15

    :goto_49e
    add-int/2addr v15, v14

    add-int/2addr v12, v15

    goto :goto_4ac

    .line 179
    :cond_4a1
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzacb;

    .line 180
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->zzcf(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v14

    .line 181
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v15

    goto :goto_49e

    :goto_4ac
    add-int/lit8 v13, v13, 0x1

    goto :goto_48a

    :cond_4af
    :goto_4af
    add-int/2addr v10, v12

    goto/16 :goto_77c

    :pswitch_4b2
    move/from16 v17, v6

    .line 182
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 183
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4c4

    :goto_4c2
    move v11, v8

    goto :goto_51d

    :cond_4c4
    shl-int/lit8 v11, v13, 0x3

    .line 184
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    mul-int/2addr v11, v6

    instance-of v12, v5, Lcom/google/android/gms/internal/measurement/zzaen;

    if-eqz v12, :cond_4f7

    .line 192
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaen;

    move v12, v8

    :goto_4d2
    if-ge v12, v6, :cond_51d

    .line 193
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzaen;->zzc()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v14, :cond_4e9

    .line 194
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 195
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v13

    .line 196
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v14

    :goto_4e6
    add-int/2addr v14, v13

    add-int/2addr v11, v14

    goto :goto_4f4

    .line 197
    :cond_4e9
    check-cast v13, Ljava/lang/String;

    .line 198
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzagl;->zzb(Ljava/lang/String;)I

    move-result v13

    .line 199
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v14

    goto :goto_4e6

    :goto_4f4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d2

    :cond_4f7
    move v12, v8

    :goto_4f8
    if-ge v12, v6, :cond_51d

    .line 185
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v14, :cond_50f

    .line 186
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 187
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v13

    .line 188
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v14

    :goto_50c
    add-int/2addr v14, v13

    add-int/2addr v11, v14

    goto :goto_51a

    .line 189
    :cond_50f
    check-cast v13, Ljava/lang/String;

    .line 190
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzagl;->zzb(Ljava/lang/String;)I

    move-result v13

    .line 191
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v14

    goto :goto_50c

    :goto_51a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4f8

    :cond_51d
    :goto_51d
    add-int/2addr v10, v11

    goto/16 :goto_77c

    :pswitch_520
    move/from16 v17, v6

    .line 200
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 201
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_532

    goto/16 :goto_3b9

    :cond_532
    shl-int/lit8 v6, v13, 0x3

    .line 203
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    goto/16 :goto_3c7

    :pswitch_53d
    move/from16 v17, v6

    .line 204
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 205
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_54b
    move/from16 v17, v6

    .line 206
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 207
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_559
    move/from16 v17, v6

    .line 208
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 209
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_56b

    goto/16 :goto_3b9

    :cond_56b
    shl-int/lit8 v11, v13, 0x3

    .line 211
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzs(Ljava/util/List;)I

    move-result v5

    .line 212
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_3c5

    :pswitch_577
    move/from16 v17, v6

    .line 213
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 214
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 215
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_589

    goto/16 :goto_3b9

    :cond_589
    shl-int/lit8 v11, v13, 0x3

    .line 216
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzp(Ljava/util/List;)I

    move-result v5

    .line 217
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v11

    goto/16 :goto_3c5

    :pswitch_595
    move/from16 v17, v6

    .line 218
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 219
    sget v6, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    .line 220
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5a7

    goto/16 :goto_4c2

    :cond_5a7
    shl-int/lit8 v6, v13, 0x3

    .line 221
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->zzo(Ljava/util/List;)I

    move-result v11

    .line 222
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 223
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v11, v5

    goto/16 :goto_51d

    :pswitch_5b9
    move/from16 v17, v6

    .line 224
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 225
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_5c7
    move/from16 v17, v6

    .line 226
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 227
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/measurement/zzafq;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_5d5
    move/from16 v17, v6

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_77c

    .line 229
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 230
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v6

    .line 231
    invoke-static {v13, v5, v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzA(ILcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_5ed
    move/from16 v17, v6

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 233
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    add-long v12, v5, v5

    shr-long/2addr v5, v11

    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    xor-long/2addr v5, v12

    .line 235
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    :goto_607
    add-int/2addr v0, v5

    :goto_608
    add-int/2addr v10, v0

    :cond_609
    move-object/from16 v0, p0

    goto/16 :goto_77c

    :pswitch_60d
    move/from16 v17, v6

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 237
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v6, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    xor-int/2addr v5, v6

    .line 239
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto :goto_607

    :pswitch_629
    move/from16 v17, v6

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 241
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    :goto_637
    add-int/lit8 v0, v0, 0x8

    goto :goto_608

    :pswitch_63a
    move/from16 v17, v6

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    :goto_648
    add-int/lit8 v0, v0, 0x4

    goto :goto_608

    :pswitch_64b
    move/from16 v17, v6

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 245
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 247
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto :goto_607

    :pswitch_663
    move/from16 v17, v6

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 249
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 250
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 251
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    goto :goto_607

    :pswitch_67a
    move/from16 v17, v6

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 253
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 255
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v5

    .line 256
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    :goto_696
    add-int/2addr v6, v5

    add-int/2addr v0, v6

    goto/16 :goto_608

    :pswitch_69a
    move/from16 v17, v6

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_77c

    .line 258
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 259
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v6

    invoke-static {v13, v5, v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzz(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    goto/16 :goto_3c7

    :pswitch_6b0
    move/from16 v17, v6

    .line 260
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 261
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v6, :cond_6d1

    .line 262
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 264
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v5

    .line 265
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    goto :goto_696

    .line 266
    :cond_6d1
    check-cast v5, Ljava/lang/String;

    .line 267
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 268
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzagl;->zzb(Ljava/lang/String;)I

    move-result v5

    .line 269
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    goto :goto_696

    :pswitch_6e0
    move/from16 v17, v6

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 271
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_608

    :pswitch_6f2
    move/from16 v17, v6

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    goto/16 :goto_648

    :pswitch_702
    move/from16 v17, v6

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 275
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    goto/16 :goto_637

    :pswitch_712
    move/from16 v17, v6

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 277
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    .line 278
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 279
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_607

    :pswitch_72b
    move/from16 v17, v6

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 281
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 283
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_607

    :pswitch_743
    move/from16 v17, v6

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 285
    invoke-virtual {v7, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 286
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    .line 287
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_607

    :pswitch_75b
    move/from16 v17, v6

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_609

    shl-int/lit8 v0, v13, 0x3

    .line 289
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    goto/16 :goto_648

    :pswitch_76b
    move/from16 v17, v6

    .line 290
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_77c

    shl-int/lit8 v1, v13, 0x3

    .line 291
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v10, v1

    :cond_77c
    :goto_77c
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    move/from16 v6, v17

    goto/16 :goto_f

    :cond_784
    move/from16 v17, v6

    .line 292
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaga;->zzi()I

    move-result v1

    add-int/2addr v10, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v1, :cond_7e2

    .line 295
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadk;->zza:Lcom/google/android/gms/internal/measurement/zzafv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzafv;->zzc()I

    move-result v2

    move v3, v8

    :goto_7a2
    if-ge v8, v2, :cond_7bd

    .line 296
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/measurement/zzafv;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafs;

    .line 297
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzafs;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzadj;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzadk;->zzj(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_7a2

    .line 298
    :cond_7bd
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzafv;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzadj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/zzadk;->zzj(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_7c5

    :cond_7e1
    add-int/2addr v10, v3

    :cond_7e2
    return v10

    nop

    :pswitch_data_7e4
    .packed-switch 0x0
        :pswitch_76b
        :pswitch_75b
        :pswitch_743
        :pswitch_72b
        :pswitch_712
        :pswitch_702
        :pswitch_6f2
        :pswitch_6e0
        :pswitch_6b0
        :pswitch_69a
        :pswitch_67a
        :pswitch_663
        :pswitch_64b
        :pswitch_63a
        :pswitch_629
        :pswitch_60d
        :pswitch_5ed
        :pswitch_5d5
        :pswitch_5c7
        :pswitch_5b9
        :pswitch_595
        :pswitch_577
        :pswitch_559
        :pswitch_54b
        :pswitch_53d
        :pswitch_520
        :pswitch_4b2
        :pswitch_46c
        :pswitch_438
        :pswitch_41c
        :pswitch_400
        :pswitch_3f3
        :pswitch_3e6
        :pswitch_3ca
        :pswitch_3a9
        :pswitch_38f
        :pswitch_375
        :pswitch_35b
        :pswitch_341
        :pswitch_327
        :pswitch_30d
        :pswitch_2f3
        :pswitch_2d7
        :pswitch_2bd
        :pswitch_2a4
        :pswitch_28b
        :pswitch_272
        :pswitch_259
        :pswitch_23c
        :pswitch_20b
        :pswitch_1d1
        :pswitch_1c3
        :pswitch_1b5
        :pswitch_19f
        :pswitch_189
        :pswitch_172
        :pswitch_164
        :pswitch_156
        :pswitch_147
        :pswitch_119
        :pswitch_105
        :pswitch_e7
        :pswitch_d2
        :pswitch_bc
        :pswitch_ad
        :pswitch_9e
        :pswitch_84
        :pswitch_69
        :pswitch_50
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzago;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const/4 v7, 0x1

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v2, :cond_24

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzadk;->zza:Lcom/google/android/gms/internal/measurement/zzafv;

    .line 2
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadk;->zzc()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v9, v2

    goto :goto_25

    :cond_24
    const/4 v9, 0x0

    :goto_25
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    const v12, 0xfffff

    move v3, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2f
    array-length v5, v10

    if-ge v2, v5, :cond_4cf

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v14

    .line 6
    aget v15, v10, v2

    const/16 v16, 0x0

    const/16 v8, 0x11

    if-gt v14, v8, :cond_5f

    add-int/lit8 v8, v2, 0x2

    .line 7
    aget v8, v10, v8

    and-int v13, v8, v12

    if-eq v13, v3, :cond_55

    if-ne v13, v12, :cond_4e

    const/4 v4, 0x0

    goto :goto_54

    :cond_4e
    int-to-long v3, v13

    .line 8
    invoke-virtual {v11, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_54
    move v3, v13

    :cond_55
    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v7, v8

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    goto :goto_61

    :cond_5f
    move v8, v5

    const/4 v5, 0x0

    :goto_61
    if-nez v9, :cond_4c8

    and-int/2addr v8, v12

    int-to-long v12, v8

    packed-switch v14, :pswitch_data_4e4

    :cond_68
    :goto_68
    const/4 v14, 0x0

    goto/16 :goto_4bf

    .line 117
    :pswitch_6b
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 118
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    .line 119
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto :goto_68

    .line 120
    :pswitch_7d
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 121
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzq(IJ)V

    goto :goto_68

    .line 122
    :pswitch_8b
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 123
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzp(II)V

    goto :goto_68

    .line 124
    :pswitch_99
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 125
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzd(IJ)V

    goto :goto_68

    .line 126
    :pswitch_a7
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 127
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzb(II)V

    goto :goto_68

    .line 128
    :pswitch_b5
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 129
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzg(II)V

    goto :goto_68

    .line 130
    :pswitch_c3
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 131
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzo(II)V

    goto :goto_68

    .line 132
    :pswitch_d1
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 133
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto :goto_68

    .line 134
    :pswitch_e1
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 135
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 136
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_68

    .line 137
    :pswitch_f4
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 138
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzago;)V

    goto/16 :goto_68

    .line 139
    :pswitch_103
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 140
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 141
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzl(IZ)V

    goto/16 :goto_68

    .line 142
    :pswitch_118
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 143
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzk(II)V

    goto/16 :goto_68

    .line 144
    :pswitch_127
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 145
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzj(IJ)V

    goto/16 :goto_68

    .line 146
    :pswitch_136
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 147
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzG(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzi(II)V

    goto/16 :goto_68

    .line 148
    :pswitch_145
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 149
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzh(IJ)V

    goto/16 :goto_68

    .line 150
    :pswitch_154
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 151
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzaff;->zzH(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzc(IJ)V

    goto/16 :goto_68

    .line 152
    :pswitch_163
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 153
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 154
    invoke-interface {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zze(IF)V

    goto/16 :goto_68

    .line 155
    :pswitch_178
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 156
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 157
    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzf(ID)V

    goto/16 :goto_68

    .line 158
    :pswitch_18d
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 159
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object v8

    .line 160
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzaev;->zze()Lcom/google/android/gms/internal/measurement/zzaeu;

    move-result-object v8

    .line 161
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 162
    invoke-interface {v6, v15, v8, v5}, Lcom/google/android/gms/internal/measurement/zzago;->zzM(ILcom/google/android/gms/internal/measurement/zzaeu;Ljava/util/Map;)V

    goto/16 :goto_68

    .line 110
    :pswitch_1a4
    aget v5, v10, v2

    .line 111
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 112
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v12

    .line 113
    sget v13, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    if-eqz v8, :cond_68

    .line 114
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_68

    const/4 v13, 0x0

    .line 115
    :goto_1bb
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_68

    .line 116
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v6

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzadb;

    invoke-virtual {v15, v5, v14, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    add-int/2addr v13, v7

    goto :goto_1bb

    .line 107
    :pswitch_1cd
    aget v5, v10, v2

    .line 108
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 104
    :pswitch_1da
    aget v5, v10, v2

    .line 105
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 106
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 101
    :pswitch_1e7
    aget v5, v10, v2

    .line 102
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 103
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 98
    :pswitch_1f4
    aget v5, v10, v2

    .line 99
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 100
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 95
    :pswitch_201
    aget v5, v10, v2

    .line 96
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 97
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 92
    :pswitch_20e
    aget v5, v10, v2

    .line 93
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 94
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 89
    :pswitch_21b
    aget v5, v10, v2

    .line 90
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 91
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 86
    :pswitch_228
    aget v5, v10, v2

    .line 87
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 88
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 83
    :pswitch_235
    aget v5, v10, v2

    .line 84
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 85
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 80
    :pswitch_242
    aget v5, v10, v2

    .line 81
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 77
    :pswitch_24f
    aget v5, v10, v2

    .line 78
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 74
    :pswitch_25c
    aget v5, v10, v2

    .line 75
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 76
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 71
    :pswitch_269
    aget v5, v10, v2

    .line 72
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 68
    :pswitch_276
    aget v5, v10, v2

    .line 69
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 70
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_68

    .line 65
    :pswitch_283
    aget v5, v10, v2

    .line 66
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v14, 0x0

    .line 67
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_291
    const/4 v14, 0x0

    .line 62
    aget v5, v10, v2

    .line 63
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 64
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_29f
    const/4 v14, 0x0

    .line 59
    aget v5, v10, v2

    .line 60
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 61
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_2ad
    const/4 v14, 0x0

    .line 56
    aget v5, v10, v2

    .line 57
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 58
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_2bb
    const/4 v14, 0x0

    .line 53
    aget v5, v10, v2

    .line 54
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 55
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_2c9
    const/4 v14, 0x0

    .line 50
    aget v5, v10, v2

    .line 51
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 52
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    .line 45
    :pswitch_2d7
    aget v5, v10, v2

    .line 46
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 47
    sget v12, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    if-eqz v8, :cond_68

    .line 48
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_68

    .line 49
    invoke-interface {v6, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzG(ILjava/util/List;)V

    goto/16 :goto_68

    .line 38
    :pswitch_2ee
    aget v5, v10, v2

    .line 39
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 40
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v12

    .line 41
    sget v13, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    if-eqz v8, :cond_68

    .line 42
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_68

    const/4 v14, 0x0

    .line 43
    :goto_305
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_68

    .line 44
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v6

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzadb;

    invoke-virtual {v15, v5, v13, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    add-int/2addr v14, v7

    goto :goto_305

    .line 33
    :pswitch_317
    aget v5, v10, v2

    .line 34
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 35
    sget v12, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    if-eqz v8, :cond_68

    .line 36
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_68

    .line 37
    invoke-interface {v6, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzF(ILjava/util/List;)V

    goto/16 :goto_68

    .line 30
    :pswitch_32e
    aget v5, v10, v2

    .line 31
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v14, 0x0

    .line 32
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_33c
    const/4 v14, 0x0

    .line 27
    aget v5, v10, v2

    .line 28
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 29
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_34a
    const/4 v14, 0x0

    .line 24
    aget v5, v10, v2

    .line 25
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 26
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_358
    const/4 v14, 0x0

    .line 21
    aget v5, v10, v2

    .line 22
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 23
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_366
    const/4 v14, 0x0

    .line 18
    aget v5, v10, v2

    .line 19
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 20
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_374
    const/4 v14, 0x0

    .line 15
    aget v5, v10, v2

    .line 16
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 17
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_382
    const/4 v14, 0x0

    .line 12
    aget v5, v10, v2

    .line 13
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 14
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_390
    const/4 v14, 0x0

    .line 9
    aget v5, v10, v2

    .line 10
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 11
    invoke-static {v5, v8, v6, v14}, Lcom/google/android/gms/internal/measurement/zzafq;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzago;Z)V

    goto/16 :goto_4bf

    :pswitch_39e
    const/4 v14, 0x0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 164
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    .line 165
    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_4bf

    :pswitch_3b2
    const/4 v14, 0x0

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 167
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzq(IJ)V

    goto/16 :goto_4bf

    :pswitch_3c2
    const/4 v14, 0x0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 169
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzp(II)V

    goto/16 :goto_4bf

    :pswitch_3d2
    const/4 v14, 0x0

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 171
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzd(IJ)V

    goto/16 :goto_4bf

    :pswitch_3e2
    const/4 v14, 0x0

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 173
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzb(II)V

    goto/16 :goto_4bf

    :pswitch_3f2
    const/4 v14, 0x0

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 175
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzg(II)V

    goto/16 :goto_4bf

    :pswitch_402
    const/4 v14, 0x0

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 177
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzo(II)V

    goto/16 :goto_4bf

    :pswitch_412
    const/4 v14, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 179
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_4bf

    :pswitch_424
    const/4 v14, 0x0

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 181
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 182
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzago;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_4bf

    :pswitch_438
    const/4 v14, 0x0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 184
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzago;)V

    goto/16 :goto_4bf

    :pswitch_448
    const/4 v14, 0x0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 186
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzg(Ljava/lang/Object;J)Z

    move-result v0

    .line 187
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzl(IZ)V

    goto :goto_4bf

    :pswitch_457
    const/4 v14, 0x0

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 189
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzk(II)V

    goto :goto_4bf

    :pswitch_466
    const/4 v14, 0x0

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 191
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzj(IJ)V

    goto :goto_4bf

    :pswitch_475
    const/4 v14, 0x0

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 193
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zzi(II)V

    goto :goto_4bf

    :pswitch_484
    const/4 v14, 0x0

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 195
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzh(IJ)V

    goto :goto_4bf

    :pswitch_493
    const/4 v14, 0x0

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 197
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzc(IJ)V

    goto :goto_4bf

    :pswitch_4a2
    const/4 v14, 0x0

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 199
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzi(Ljava/lang/Object;J)F

    move-result v0

    .line 200
    invoke-interface {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzago;->zze(IF)V

    goto :goto_4bf

    :pswitch_4b1
    const/4 v14, 0x0

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4bf

    .line 202
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzagg;->zzk(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 203
    invoke-interface {v6, v15, v12, v13}, Lcom/google/android/gms/internal/measurement/zzago;->zzf(ID)V

    :cond_4bf
    :goto_4bf
    add-int/lit8 v2, v2, 0x3

    const v12, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_2f

    .line 209
    :cond_4c8
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzads;

    .line 210
    throw v16

    :cond_4cf
    const/16 v16, 0x0

    if-nez v9, :cond_4dc

    .line 204
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    .line 206
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzaga;->zzg(Lcom/google/android/gms/internal/measurement/zzago;)V

    return-void

    .line 207
    :cond_4dc
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzads;

    .line 208
    throw v16

    nop

    :pswitch_data_4e4
    .packed-switch 0x0
        :pswitch_4b1
        :pswitch_4a2
        :pswitch_493
        :pswitch_484
        :pswitch_475
        :pswitch_466
        :pswitch_457
        :pswitch_448
        :pswitch_438
        :pswitch_424
        :pswitch_412
        :pswitch_402
        :pswitch_3f2
        :pswitch_3e2
        :pswitch_3d2
        :pswitch_3c2
        :pswitch_3b2
        :pswitch_39e
        :pswitch_390
        :pswitch_382
        :pswitch_374
        :pswitch_366
        :pswitch_358
        :pswitch_34a
        :pswitch_33c
        :pswitch_32e
        :pswitch_317
        :pswitch_2ee
        :pswitch_2d7
        :pswitch_2c9
        :pswitch_2bb
        :pswitch_2ad
        :pswitch_29f
        :pswitch_291
        :pswitch_283
        :pswitch_276
        :pswitch_269
        :pswitch_25c
        :pswitch_24f
        :pswitch_242
        :pswitch_235
        :pswitch_228
        :pswitch_21b
        :pswitch_20e
        :pswitch_201
        :pswitch_1f4
        :pswitch_1e7
        :pswitch_1da
        :pswitch_1cd
        :pswitch_1a4
        :pswitch_18d
        :pswitch_178
        :pswitch_163
        :pswitch_154
        :pswitch_145
        :pswitch_136
        :pswitch_127
        :pswitch_118
        :pswitch_103
        :pswitch_f4
        :pswitch_e1
        :pswitch_d1
        :pswitch_c3
        :pswitch_b5
        :pswitch_a7
        :pswitch_99
        :pswitch_8b
        :pswitch_7d
        :pswitch_6b
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafo;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzF(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    const/4 v0, 0x0

    move-object v6, v5

    move-object v5, v0

    .line 3
    :goto_b
    :try_start_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzb()I

    move-result v2

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzP(I)I

    move-result v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_5a2

    const/4 v7, 0x0

    if-gez v1, :cond_8f

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_36

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move-object v4, v5

    :goto_1e
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge p2, p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    .line 196
    aget v3, p3, p2

    move-object v5, v6

    move-object v6, p1

    move-object v1, p0

    move-object v2, p1

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_32
    move-object v1, p0

    move-object v2, p1

    goto/16 :goto_591

    :cond_36
    move-object v1, p0

    .line 200
    :try_start_37
    iget-boolean v3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-nez v3, :cond_3d

    move-object v2, v0

    goto :goto_43

    .line 197
    :cond_3d
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzg:Lcom/google/android/gms/internal/measurement/zzafc;

    .line 5
    invoke-virtual {p3, v3, v2}, Lcom/google/android/gms/internal/measurement/zzadf;->zzc(Lcom/google/android/gms/internal/measurement/zzafc;I)Lcom/google/android/gms/internal/measurement/zzadt;

    move-result-object v2
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_8a

    :goto_43
    if-nez v2, :cond_81

    if-nez v5, :cond_52

    .line 6
    :try_start_47
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/measurement/zzafz;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4d

    move-object v5, v2

    goto :goto_52

    :catchall_4d
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    goto/16 :goto_5a6

    .line 7
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {v6, v5, p2, v7}, Lcom/google/android/gms/internal/measurement/zzafz;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafo;I)Z

    move-result v2
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_79

    if-nez v2, :cond_75

    iget p2, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move-object v4, v5

    :goto_5b
    iget p3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge p2, p3, :cond_71

    iget-object p3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    .line 196
    aget v3, p3, p2

    move-object v5, v6

    move-object v6, p1

    move-object v2, p1

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v1

    move-object v3, v2

    move-object v6, v5

    add-int/lit8 p2, p2, 0x1

    move-object p1, v3

    goto :goto_5b

    :cond_71
    move-object v3, p1

    :goto_72
    move-object v2, v3

    goto/16 :goto_591

    :cond_75
    move-object v3, p1

    move-object p1, v1

    :cond_77
    :goto_77
    move-object p1, v3

    goto :goto_b

    :catchall_79
    move-exception v0

    move-object v3, p1

    move-object p1, v1

    goto :goto_88

    :goto_7d
    move-object v1, p1

    :goto_7e
    move-object v2, v3

    goto/16 :goto_5a6

    :cond_81
    move-object v3, p1

    move-object p1, v1

    .line 198
    :try_start_83
    move-object p2, v3

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    .line 199
    throw v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v0

    :goto_88
    move-object p2, v0

    goto :goto_7d

    :catchall_8a
    move-exception v0

    move-object v3, p1

    move-object p1, v1

    move-object p2, v0

    goto :goto_7e

    :cond_8f
    move-object v3, p1

    move-object p1, p0

    .line 8
    :try_start_91
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v4
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_59e

    :try_start_95
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v8
    :try_end_99
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_95 .. :try_end_99} :catch_c7
    .catchall {:try_start_95 .. :try_end_99} :catchall_2ac

    const v9, 0xfffff

    packed-switch v8, :pswitch_data_5c4

    if-nez v5, :cond_a6

    .line 192
    :try_start_a1
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzafz;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 193
    :cond_a6
    invoke-virtual {v6, v5, p2, v7}, Lcom/google/android/gms/internal/measurement/zzafz;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafo;I)Z

    move-result v1
    :try_end_aa
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_a1 .. :try_end_aa} :catch_c7
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_87

    if-nez v1, :cond_77

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move-object v4, v5

    :goto_af
    iget p3, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge p2, p3, :cond_c5

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    .line 196
    aget p3, p3, p2

    move-object v5, v6

    move-object v6, v3

    move-object v1, p1

    move-object v2, v3

    move v3, p3

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    move-object v6, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_af

    :cond_c5
    move-object v1, p1

    goto :goto_72

    :catch_c7
    move-object v2, v3

    goto/16 :goto_567

    .line 147
    :pswitch_ca
    :try_start_ca
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 148
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    .line 149
    invoke-interface {p2, v4, v8, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    .line 150
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/zzaff;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_da
    move-object v2, v3

    goto/16 :goto_2a1

    :pswitch_dd
    and-int/2addr v4, v9

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzw()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 145
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 146
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    :pswitch_ee
    and-int/2addr v4, v9

    .line 141
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzv()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 142
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    :pswitch_ff
    and-int/2addr v4, v9

    .line 138
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzu()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 139
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 140
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    :pswitch_110
    and-int/2addr v4, v9

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 136
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    .line 151
    :pswitch_121
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzs()I

    move-result v8

    .line 152
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v10

    if-eqz v10, :cond_138

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_132

    goto :goto_138

    .line 155
    :cond_132
    invoke-static {v3, v2, v8, v5, v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzG(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_77

    :cond_138
    :goto_138
    and-int/2addr v4, v9

    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    :pswitch_145
    and-int/2addr v4, v9

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzr()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 133
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 134
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto :goto_da

    :pswitch_156
    and-int/2addr v4, v9

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzq()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v8

    int-to-long v9, v4

    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 131
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    .line 156
    :pswitch_164
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 157
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    .line 158
    invoke-interface {p2, v4, v8, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    .line 159
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/zzaff;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_da

    .line 160
    :pswitch_176
    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafo;)V

    .line 161
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_17e
    and-int/2addr v4, v9

    .line 127
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzl()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    int-to-long v9, v4

    .line 128
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 129
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_190
    and-int/2addr v4, v9

    .line 124
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzk()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 125
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 126
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1a2
    and-int/2addr v4, v9

    .line 121
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzj()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 122
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 123
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1b4
    and-int/2addr v4, v9

    .line 118
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 119
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 120
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1c6
    and-int/2addr v4, v9

    .line 115
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzg()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 116
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 117
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1d8
    and-int/2addr v4, v9

    .line 112
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzh()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 113
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 114
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1ea
    and-int/2addr v4, v9

    .line 109
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzf()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    int-to-long v9, v4

    .line 110
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    :pswitch_1fc
    and-int/2addr v4, v9

    .line 106
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zze()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    int-to-long v9, v4

    .line 107
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzO(Ljava/lang/Object;II)V

    goto/16 :goto_da

    .line 162
    :pswitch_20e
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object v2

    .line 163
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v1

    and-int/2addr v1, v9

    int-to-long v8, v1

    .line 164
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22a

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v1

    .line 170
    invoke-static {v3, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_23f

    .line 165
    :cond_22a
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzaex;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v4

    .line 167
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzaex;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v3, v8, v9, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v4

    .line 171
    :cond_23f
    :goto_23f
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 172
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzaev;->zze()Lcom/google/android/gms/internal/measurement/zzaeu;

    move-result-object v2

    .line 173
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzP(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzaeu;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_da

    :pswitch_24c
    and-int v2, v4, v9

    .line 103
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    int-to-long v8, v2

    .line 104
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzH(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_da

    :pswitch_25c
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 69
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzO(Ljava/util/List;)V

    goto/16 :goto_da

    :pswitch_268
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 67
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzN(Ljava/util/List;)V

    goto/16 :goto_da

    :pswitch_274
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 65
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzM(Ljava/util/List;)V

    goto/16 :goto_da

    :pswitch_280
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 63
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzL(Ljava/util/List;)V
    :try_end_28a
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_ca .. :try_end_28a} :catch_c7
    .catchall {:try_start_ca .. :try_end_28a} :catchall_87

    goto/16 :goto_da

    :pswitch_28c
    and-int/2addr v4, v9

    int-to-long v8, v4

    .line 59
    :try_start_28e
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 60
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/measurement/zzafo;->zzK(Ljava/util/List;)V
    :try_end_295
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_28e .. :try_end_295} :catch_c7
    .catchall {:try_start_28e .. :try_end_295} :catchall_2ac

    move v8, v1

    move-object v1, v3

    move-object v3, v4

    .line 61
    :try_start_298
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzF(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2a0
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_298 .. :try_end_2a0} :catch_2a9
    .catchall {:try_start_298 .. :try_end_2a0} :catchall_2a4

    move-object v2, v1

    :goto_2a1
    move-object p1, v2

    goto/16 :goto_b

    :catchall_2a4
    move-exception v0

    move-object v2, v1

    :goto_2a6
    move-object p2, v0

    goto/16 :goto_572

    :catch_2a9
    move-object v2, v1

    goto/16 :goto_567

    :catchall_2ac
    move-exception v0

    move-object v2, v3

    goto :goto_2a6

    :pswitch_2af
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 57
    :try_start_2b3
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzJ(Ljava/util/List;)V

    goto :goto_2a1

    :catchall_2bb
    move-exception v0

    goto :goto_2a6

    :pswitch_2bd
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 55
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzE(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_2c9
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 53
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzD(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_2d5
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 51
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzC(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_2e1
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 49
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzB(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_2ed
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 47
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzz(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_2f9
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 45
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzA(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_305
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 43
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 44
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzy(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_311
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 41
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzx(Ljava/util/List;)V

    goto :goto_2a1

    :pswitch_31d
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 39
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzO(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_32a
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 37
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzN(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_337
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 35
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzM(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_344
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 33
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzL(Ljava/util/List;)V
    :try_end_34f
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_2b3 .. :try_end_34f} :catch_567
    .catchall {:try_start_2b3 .. :try_end_34f} :catchall_2bb

    goto/16 :goto_2a1

    :pswitch_351
    move v8, v1

    move-object v1, v3

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 29
    :try_start_356
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 30
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzK(Ljava/util/List;)V

    .line 31
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzF(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v5
    :try_end_365
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_356 .. :try_end_365} :catch_2a9
    .catchall {:try_start_356 .. :try_end_365} :catchall_2a4

    move-object v2, v1

    goto/16 :goto_2a1

    :pswitch_368
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 27
    :try_start_36c
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzJ(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_375
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 25
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzI(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_382
    move v8, v1

    move-object v2, v3

    .line 174
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 175
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 176
    invoke-interface {p2, v3, v1, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzG(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_2a1

    :pswitch_394
    move-object v2, v3

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzaff;->zzD(I)Z

    move-result v1

    if-eqz v1, :cond_3ab

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 101
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzacw;

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzacw;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_2a1

    :cond_3ab
    and-int v1, v4, v9

    int-to-long v3, v1

    .line 99
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzacw;

    .line 100
    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzacw;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_2a1

    :pswitch_3ba
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 23
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzE(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_3c7
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 21
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzD(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_3d4
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzC(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_3e1
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 17
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzB(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_3ee
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 15
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzz(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_3fb
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 13
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzA(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_408
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 11
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzy(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_415
    move-object v2, v3

    and-int v1, v4, v9

    int-to-long v3, v1

    .line 9
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaeo;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzafo;->zzx(Ljava/util/List;)V

    goto/16 :goto_2a1

    :pswitch_422
    move v8, v1

    move-object v2, v3

    .line 177
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 178
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v3

    .line 179
    invoke-interface {p2, v1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    .line 180
    invoke-direct {p0, v2, v8, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2a1

    :pswitch_436
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzw()J

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 98
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_447
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 95
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzv()I

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 96
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_458
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 93
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzu()J

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 94
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_469
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 91
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzt()I

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 92
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_47a
    move v8, v1

    move v1, v2

    move-object v2, v3

    .line 181
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzs()I

    move-result v3

    .line 182
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v10

    if-eqz v10, :cond_494

    invoke-interface {v10, v3}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_48e

    goto :goto_494

    .line 185
    :cond_48e
    invoke-static {v2, v1, v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzG(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2a1

    :cond_494
    :goto_494
    and-int v1, v4, v9

    int-to-long v9, v1

    .line 183
    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 184
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_49f
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 89
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzr()I

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 90
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_4b0
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 87
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzq()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzn(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_4c1
    move v8, v1

    move-object v2, v3

    .line 186
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 187
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v3

    .line 188
    invoke-interface {p2, v1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzafo;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    .line 189
    invoke-direct {p0, v2, v8, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2a1

    :pswitch_4d5
    move v8, v1

    move-object v2, v3

    .line 190
    invoke-direct {p0, v2, v4, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafo;)V

    .line 191
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_4df
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzl()Z

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzh(Ljava/lang/Object;JZ)V

    .line 86
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_4f0
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 83
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzk()I

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 84
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_501
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 81
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzj()J

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 82
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_512
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 79
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzi()I

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzd(Ljava/lang/Object;JI)V

    .line 80
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_523
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 77
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzg()J

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 78
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_534
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 75
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzh()J

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzf(Ljava/lang/Object;JJ)V

    .line 76
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_545
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zzf()F

    move-result v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->zzj(Ljava/lang/Object;JF)V

    .line 74
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_2a1

    :pswitch_556
    move v8, v1

    move-object v2, v3

    and-int v1, v4, v9

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafo;->zze()D

    move-result-wide v3

    int-to-long v9, v1

    invoke-static {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzl(Ljava/lang/Object;JD)V

    .line 72
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzL(Ljava/lang/Object;I)V
    :try_end_565
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_36c .. :try_end_565} :catch_567
    .catchall {:try_start_36c .. :try_end_565} :catchall_2bb

    goto/16 :goto_2a1

    :catch_567
    :goto_567
    if-nez v5, :cond_574

    .line 194
    :try_start_569
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzafz;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_56d
    .catchall {:try_start_569 .. :try_end_56d} :catchall_56f

    move-object v5, v1

    goto :goto_574

    :catchall_56f
    move-exception v0

    goto/16 :goto_2a6

    :goto_572
    move-object v1, p1

    goto :goto_5a6

    .line 195
    :cond_574
    :goto_574
    :try_start_574
    invoke-virtual {v6, v5, p2, v7}, Lcom/google/android/gms/internal/measurement/zzafz;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafo;I)Z

    move-result v1
    :try_end_578
    .catchall {:try_start_574 .. :try_end_578} :catchall_59a

    if-nez v1, :cond_597

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move-object v4, v5

    :goto_57d
    iget p3, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge p2, p3, :cond_590

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    .line 196
    aget v3, p3, p2

    move-object v5, v6

    move-object v6, v2

    move-object v1, p1

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_57d

    :cond_590
    move-object v1, p1

    :goto_591
    if-eqz v4, :cond_596

    .line 200
    invoke-virtual {v6, v2, v4}, Lcom/google/android/gms/internal/measurement/zzafz;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_596
    return-void

    :cond_597
    move-object v1, p1

    goto/16 :goto_2a1

    :catchall_59a
    move-exception v0

    move-object v1, p1

    :goto_59c
    move-object p2, v0

    goto :goto_5a6

    :catchall_59e
    move-exception v0

    move-object v1, p1

    move-object v2, v3

    goto :goto_59c

    :catchall_5a2
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    goto :goto_59c

    .line 191
    :goto_5a6
    iget p1, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move-object v4, v5

    :goto_5a9
    iget p3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge p1, p3, :cond_5bc

    iget-object p3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    .line 196
    aget v3, p3, p1

    move-object v5, v6

    move-object v6, v2

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move-object v6, v5

    goto :goto_5a9

    :cond_5bc
    move-object v5, v6

    if-eqz v4, :cond_5c2

    .line 200
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/measurement/zzafz;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    :cond_5c2
    throw p2

    nop

    :pswitch_data_5c4
    .packed-switch 0x0
        :pswitch_556
        :pswitch_545
        :pswitch_534
        :pswitch_523
        :pswitch_512
        :pswitch_501
        :pswitch_4f0
        :pswitch_4df
        :pswitch_4d5
        :pswitch_4c1
        :pswitch_4b0
        :pswitch_49f
        :pswitch_47a
        :pswitch_469
        :pswitch_458
        :pswitch_447
        :pswitch_436
        :pswitch_422
        :pswitch_415
        :pswitch_408
        :pswitch_3fb
        :pswitch_3ee
        :pswitch_3e1
        :pswitch_3d4
        :pswitch_3c7
        :pswitch_3ba
        :pswitch_394
        :pswitch_382
        :pswitch_375
        :pswitch_368
        :pswitch_351
        :pswitch_344
        :pswitch_337
        :pswitch_32a
        :pswitch_31d
        :pswitch_311
        :pswitch_305
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2d5
        :pswitch_2c9
        :pswitch_2bd
        :pswitch_2af
        :pswitch_28c
        :pswitch_280
        :pswitch_274
        :pswitch_268
        :pswitch_25c
        :pswitch_24c
        :pswitch_20e
        :pswitch_1fc
        :pswitch_1ea
        :pswitch_1d8
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_1a2
        :pswitch_190
        :pswitch_17e
        :pswitch_176
        :pswitch_164
        :pswitch_156
        :pswitch_145
        :pswitch_121
        :pswitch_110
        :pswitch_ff
        :pswitch_ee
        :pswitch_dd
        :pswitch_ca
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzF(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    const/4 v15, -0x1

    move/from16 v7, p3

    move v8, v15

    const/4 v9, 0x0

    const/4 v13, 0x0

    const v14, 0xfffff

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_1c
    const/16 v18, 0x0

    const/16 v19, 0x2

    const-string v11, "Failed to parse the message."

    if-ge v7, v4, :cond_f27

    const/16 v20, 0x3

    add-int/lit8 v12, v7, 0x1

    .line 2
    aget-byte v7, v3, v7

    if-gez v7, :cond_32

    .line 3
    invoke-static {v7, v3, v12, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzb(I[BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v12

    iget v7, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    :cond_32
    move/from16 v17, v7

    ushr-int/lit8 v7, v17, 0x3

    if-le v7, v8, :cond_49

    div-int/lit8 v9, v9, 0x3

    iget v8, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zze:I

    if-lt v7, v8, :cond_47

    iget v8, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzf:I

    if-gt v7, v8, :cond_47

    .line 4
    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzQ(II)I

    move-result v8

    goto :goto_4d

    :cond_47
    move v8, v15

    goto :goto_4d

    .line 5
    :cond_49
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzaff;->zzP(I)I

    move-result v8

    :goto_4d
    if-ne v8, v15, :cond_60

    move/from16 v10, p5

    move-object v8, v1

    move-object v1, v6

    move-object/from16 v21, v11

    move v4, v12

    move/from16 v12, v17

    const p3, 0xfffff

    const/4 v9, 0x0

    move v11, v7

    move-object v7, v2

    goto/16 :goto_ecc

    :cond_60
    and-int/lit8 v9, v17, 0x7

    .line 272
    iget-object v15, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    add-int/lit8 v21, v8, 0x1

    const v22, 0xfffff

    .line 6
    aget v5, v15, v21

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v3

    and-int v4, v5, v22

    move/from16 p3, v7

    int-to-long v6, v4

    const-wide/16 v23, 0x0

    const-string v4, ""

    move-wide/from16 v26, v6

    const-string v6, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    const/16 v7, 0x11

    if-gt v3, v7, :cond_42d

    add-int/lit8 v7, v8, 0x2

    .line 7
    aget v7, v15, v7

    ushr-int/lit8 v15, v7, 0x14

    shl-int v15, v16, v15

    and-int v7, v7, v22

    move/from16 v21, v12

    move/from16 v12, v22

    move/from16 v22, v15

    if-eq v7, v14, :cond_a2

    if-eq v14, v12, :cond_98

    int-to-long v14, v14

    .line 8
    invoke-virtual {v1, v2, v14, v15, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_98
    if-ne v7, v12, :cond_9c

    const/4 v13, 0x0

    goto :goto_a1

    :cond_9c
    int-to-long v13, v7

    .line 9
    invoke-virtual {v1, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    :goto_a1
    move v14, v7

    :cond_a2
    packed-switch v3, :pswitch_data_f7c

    move/from16 v3, v20

    if-ne v9, v3, :cond_db

    or-int v13, v13, v22

    move/from16 v20, v3

    .line 10
    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, p3, 0x3

    or-int/lit8 v4, v4, 0x4

    move v5, v4

    .line 11
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v4

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v15, v8

    move/from16 v22, v12

    move/from16 v6, v21

    move/from16 v12, p3

    move v8, v5

    move-object/from16 v5, p2

    .line 12
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/zzach;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move-object v7, v5

    move-object v8, v9

    .line 13
    invoke-direct {v0, v2, v15, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v3, v7

    move-object v6, v8

    move v8, v12

    move v9, v15

    const/4 v15, -0x1

    :goto_d6
    move v7, v4

    :goto_d7
    move/from16 v4, p4

    goto/16 :goto_1c

    :cond_db
    move v15, v8

    move v3, v12

    move-object/from16 v7, p2

    move-object/from16 v12, p6

    move-object v4, v1

    move-object v1, v2

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, p3

    move/from16 p3, v3

    goto/16 :goto_417

    :pswitch_f1
    move-object/from16 v7, p2

    move v15, v8

    move v3, v12

    move/from16 v4, v21

    move/from16 v12, p3

    move-object/from16 v8, p6

    if-nez v9, :cond_122

    or-int v13, v13, v22

    .line 14
    invoke-static {v7, v4, v8}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget-wide v4, v8, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 15
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v5

    move/from16 v22, v3

    move-wide/from16 v3, v26

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p4

    :goto_11a
    move-object v3, v7

    move-object v6, v8

    move v7, v9

    move v8, v12

    :goto_11e
    move v9, v15

    :goto_11f
    const/4 v15, -0x1

    goto/16 :goto_1c

    :cond_122
    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    move/from16 p3, v4

    move-object v4, v2

    move/from16 v2, p3

    move/from16 p3, v3

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v21, v17

    move/from16 v17, v12

    :goto_136
    move-object v12, v8

    goto/16 :goto_417

    :pswitch_139
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move v15, v8

    move v3, v12

    move/from16 v6, v17

    move/from16 v4, v21

    move-wide/from16 v28, v26

    move/from16 v12, p3

    move-object/from16 v8, p6

    if-nez v9, :cond_166

    or-int v13, v13, v22

    .line 17
    invoke-static {v7, v4, v8}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v8, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v5

    move v9, v4

    move-wide/from16 v3, v28

    .line 19
    invoke-virtual {v2, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p4

    move/from16 v17, v6

    goto :goto_11a

    :cond_166
    move/from16 p3, v4

    move-object v4, v2

    move/from16 v2, p3

    move/from16 p3, v3

    move/from16 v21, v6

    move/from16 v17, v12

    move/from16 v25, v13

    move/from16 v26, v14

    goto :goto_136

    :pswitch_176
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move v15, v8

    move/from16 v6, v17

    move/from16 v12, v21

    move-wide/from16 v3, v26

    move/from16 v17, p3

    move-object/from16 v8, p6

    if-nez v9, :cond_1c2

    .line 20
    invoke-static {v7, v12, v8}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 21
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v12

    const/high16 v18, -0x80000000

    and-int v5, v5, v18

    if-eqz v5, :cond_1bc

    if-eqz v12, :cond_1bc

    invoke-interface {v12, v11}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_1a1

    goto :goto_1bc

    .line 23
    :cond_1a1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v3

    int-to-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/internal/measurement/zzaga;->zzk(ILjava/lang/Object;)V

    :goto_1ad
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v3, v17

    move/from16 v17, v6

    move-object v6, v8

    move v8, v3

    move/from16 v4, p4

    move-object v3, v7

    move v7, v9

    goto/16 :goto_11e

    :cond_1bc
    :goto_1bc
    or-int v13, v13, v22

    .line 22
    invoke-virtual {v2, v1, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1ad

    :cond_1c2
    move-object v4, v2

    move/from16 v21, v6

    move v2, v12

    move/from16 v25, v13

    move/from16 v26, v14

    const p3, 0xfffff

    goto/16 :goto_136

    :pswitch_1cf
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move v15, v8

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v12, v21

    move-wide/from16 v3, v26

    move/from16 v17, p3

    move-object/from16 v8, p6

    if-ne v9, v5, :cond_1c2

    or-int v13, v13, v22

    .line 24
    invoke-static {v7, v12, v8}, Lcom/google/android/gms/internal/measurement/zzach;->zzg([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget-object v11, v8, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v2, v1, v3, v4, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1ad

    :pswitch_1ef
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v7, p2

    move v15, v8

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v12, v21

    move/from16 v17, p3

    move-object/from16 v8, p6

    if-ne v9, v5, :cond_23a

    or-int v13, v13, v22

    move-object v3, v1

    .line 26
    invoke-direct {v0, v3, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    .line 27
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move-object/from16 v19, v7

    move-object v7, v3

    move-object/from16 v3, v19

    move/from16 v19, v5

    move/from16 v21, v6

    move-object v6, v8

    move/from16 v5, p4

    move-object v8, v4

    move v4, v12

    const v12, 0xfffff

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move-object/from16 v31, v3

    move-object v3, v1

    move-object/from16 v1, v31

    .line 29
    invoke-direct {v0, v7, v15, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v3, v7

    move v7, v2

    move-object v2, v3

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v3, v1

    move-object v1, v8

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    goto/16 :goto_11f

    :cond_23a
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move/from16 v21, v6

    move v2, v12

    move-object/from16 p3, v7

    move-object v7, v1

    move-object/from16 v1, p3

    move-object/from16 v12, p6

    move-object v4, v8

    move/from16 v25, v13

    move/from16 v26, v14

    const p3, 0xfffff

    goto/16 :goto_417

    :pswitch_252
    move-object v7, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-object v8, v1

    move-object v13, v4

    move/from16 v21, v17

    move-wide/from16 v3, v26

    move-object/from16 v1, p2

    move/from16 v17, p3

    move/from16 p3, v12

    move/from16 v26, v14

    move/from16 v14, v19

    move-object/from16 v12, p6

    if-ne v9, v14, :cond_2b1

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzD(I)Z

    move-result v5

    if-eqz v5, :cond_27a

    or-int v5, v25, v22

    .line 30
    invoke-static {v1, v2, v12}, Lcom/google/android/gms/internal/measurement/zzach;->zzf([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move v13, v5

    goto :goto_295

    .line 31
    :cond_27a
    invoke-static {v1, v2, v12}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v5, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v5, :cond_2ab

    or-int v6, v25, v22

    if-nez v5, :cond_28a

    .line 274
    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    :goto_288
    move v13, v6

    goto :goto_295

    :cond_28a
    new-instance v9, Ljava/lang/String;

    .line 32
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v2, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v9, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    add-int/2addr v2, v5

    goto :goto_288

    .line 30
    :goto_295
    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    .line 33
    invoke-virtual {v8, v7, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_29a
    move-object v3, v7

    move v7, v2

    move-object v2, v3

    move/from16 v4, p4

    move-object v3, v1

    move-object v1, v8

    move-object v6, v12

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    move/from16 v14, v26

    goto/16 :goto_11f

    .line 31
    :cond_2ab
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 273
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 274
    throw v1

    :cond_2b1
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    :goto_2b4
    move-object v4, v8

    goto/16 :goto_417

    :pswitch_2b7
    move-object v7, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-wide/from16 v3, v26

    move-object v8, v1

    move/from16 v26, v14

    move/from16 v21, v17

    move-object/from16 v1, p2

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-nez v9, :cond_2b1

    or-int v13, v25, v22

    .line 34
    invoke-static {v1, v2, v12}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    cmp-long v5, v5, v23

    if-eqz v5, :cond_2dd

    move/from16 v5, v16

    goto :goto_2de

    :cond_2dd
    const/4 v5, 0x0

    .line 35
    :goto_2de
    invoke-static {v7, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzagg;->zzh(Ljava/lang/Object;JZ)V

    goto :goto_29a

    :pswitch_2e2
    move-object v7, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-wide/from16 v3, v26

    const/4 v5, 0x5

    move-object v8, v1

    move/from16 v26, v14

    move/from16 v21, v17

    move-object/from16 v1, p2

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-ne v9, v5, :cond_2b1

    add-int/lit8 v5, v2, 0x4

    or-int v13, v25, v22

    .line 36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v2

    invoke-virtual {v8, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    move-object v3, v1

    move-object v2, v7

    move-object v1, v8

    move-object v6, v12

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    move/from16 v14, v26

    const/4 v15, -0x1

    move v7, v5

    goto/16 :goto_1c

    :pswitch_316
    move-object v7, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v5, v16

    move/from16 v2, v21

    move-wide/from16 v3, v26

    move-object v8, v1

    move/from16 v26, v14

    move/from16 v21, v17

    move-object/from16 v1, p2

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-ne v9, v5, :cond_34e

    add-int/lit8 v9, v2, 0x8

    or-int v13, v25, v22

    .line 37
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v5

    move-object v2, v7

    move-object v7, v1

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move-object v3, v7

    move v7, v9

    :goto_341
    move-object v6, v12

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    move/from16 v14, v26

    :goto_349
    const/4 v15, -0x1

    const/16 v16, 0x1

    goto/16 :goto_1c

    :cond_34e
    move-object/from16 v31, v7

    move-object v7, v1

    move-object/from16 v1, v31

    goto/16 :goto_2b4

    :pswitch_355
    move-object/from16 v7, p2

    move-object v4, v1

    move-object v1, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-wide/from16 v5, v26

    move/from16 v26, v14

    move/from16 v21, v17

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-nez v9, :cond_417

    or-int v13, v25, v22

    .line 38
    invoke-static {v7, v2, v12}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 39
    invoke-virtual {v4, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v7

    move-object v6, v12

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    move/from16 v14, v26

    const/4 v15, -0x1

    const/16 v16, 0x1

    move v7, v2

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_d7

    :pswitch_388
    move-object/from16 v7, p2

    move-object v4, v1

    move-object v1, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-wide/from16 v5, v26

    move/from16 v26, v14

    move/from16 v21, v17

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-nez v9, :cond_417

    or-int v13, v25, v22

    .line 40
    invoke-static {v7, v2, v12}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v8

    move-wide/from16 v28, v5

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v3, v28

    .line 41
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move-object v3, v7

    move v7, v8

    goto :goto_341

    :pswitch_3b5
    move-object/from16 v7, p2

    move-object v4, v1

    move-object v1, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v2, v21

    move-wide/from16 v5, v26

    const/4 v3, 0x5

    move/from16 v26, v14

    move/from16 v21, v17

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-ne v9, v3, :cond_417

    add-int/lit8 v3, v2, 0x4

    or-int v13, v25, v22

    .line 42
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 43
    invoke-static {v1, v5, v6, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->zzj(Ljava/lang/Object;JF)V

    :goto_3dc
    move-object v2, v7

    move v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    move-object v6, v12

    move v9, v15

    move/from16 v8, v17

    move/from16 v17, v21

    move/from16 v14, v26

    const/4 v15, -0x1

    const/16 v16, 0x1

    goto/16 :goto_d7

    :pswitch_3ee
    move-object/from16 v7, p2

    move-object v4, v1

    move-object v1, v2

    move v15, v8

    move/from16 v25, v13

    move/from16 v3, v16

    move/from16 v2, v21

    move-wide/from16 v5, v26

    move/from16 v26, v14

    move/from16 v21, v17

    move/from16 v17, p3

    move/from16 p3, v12

    move-object/from16 v12, p6

    if-ne v9, v3, :cond_417

    add-int/lit8 v3, v2, 0x8

    or-int v13, v25, v22

    .line 44
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 45
    invoke-static {v1, v5, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->zzl(Ljava/lang/Object;JD)V

    goto :goto_3dc

    :cond_417
    :goto_417
    move/from16 v10, p5

    move-object v8, v4

    move-object v3, v7

    move v9, v15

    move/from16 v13, v25

    move/from16 v14, v26

    const/16 v20, 0x3

    move-object v7, v1

    move v4, v2

    move-object v1, v12

    move/from16 v12, v21

    move-object/from16 v21, v11

    move/from16 v11, v17

    goto/16 :goto_ecc

    :cond_42d
    move-object/from16 v7, p2

    move/from16 v28, v12

    move/from16 v21, v17

    move/from16 v17, p3

    move-object/from16 v12, p6

    move/from16 p3, v22

    move/from16 v22, v13

    move-object v13, v4

    move-object v4, v1

    move-object v1, v2

    move-wide/from16 v31, v26

    move/from16 v27, v14

    move-object/from16 v26, v15

    move-wide/from16 v14, v31

    const/16 v2, 0x1b

    if-ne v3, v2, :cond_4a6

    const/4 v2, 0x2

    if-ne v9, v2, :cond_493

    .line 46
    invoke-virtual {v4, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    .line 47
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v3

    if-nez v3, :cond_46a

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_462

    const/16 v3, 0xa

    goto :goto_463

    :cond_462
    add-int/2addr v3, v3

    .line 49
    :goto_463
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v2

    .line 50
    invoke-virtual {v4, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_46a
    move-object v6, v2

    .line 51
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    move/from16 v5, p4

    move-object v9, v4

    move-object v3, v7

    move-object v7, v12

    move/from16 v2, v21

    move/from16 v4, v28

    move-object/from16 v12, p1

    .line 52
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzn(Lcom/google/android/gms/internal/measurement/zzafp;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move v7, v2

    move v7, v1

    move-object v1, v9

    move v9, v8

    move/from16 v8, v17

    move/from16 v17, v2

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v2, v12

    move/from16 v13, v22

    move/from16 v14, v27

    goto/16 :goto_349

    :cond_493
    move-object v12, v1

    move-object v9, v4

    move-object/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v4, p6

    move-object v10, v11

    move/from16 v29, v17

    move/from16 v12, v21

    move/from16 v7, v28

    move v11, v8

    move-object v8, v9

    goto/16 :goto_c06

    :cond_4a6
    move-object v12, v1

    move-object v1, v4

    move/from16 v7, v21

    move/from16 v4, v28

    const/16 v2, 0x31

    move/from16 v21, v4

    const-string v4, "Protocol message had invalid UTF-8."

    const-string v10, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v3, v2, :cond_ae2

    move/from16 v28, v3

    int-to-long v2, v5

    .line 53
    invoke-virtual {v1, v12, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaef;

    .line 54
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v26

    if-nez v26, :cond_4d6

    .line 55
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v26

    move-wide/from16 v29, v2

    add-int v2, v26, v26

    .line 56
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v5

    .line 57
    invoke-virtual {v1, v12, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4d4
    move-object v14, v5

    goto :goto_4d9

    :cond_4d6
    move-wide/from16 v29, v2

    goto :goto_4d4

    :goto_4d9
    packed-switch v28, :pswitch_data_fa2

    const/4 v3, 0x3

    if-ne v9, v3, :cond_51c

    and-int/lit8 v2, v7, -0x8

    or-int/lit8 v5, v2, 0x4

    move-object v4, v1

    .line 58
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object v15, v4

    move/from16 v3, v21

    move/from16 v4, p4

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzi(Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    move v13, v3

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    .line 60
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4fb
    if-ge v9, v4, :cond_50f

    .line 61
    invoke-static {v2, v9, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v10, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v7, v10, :cond_50f

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzi(Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    .line 63
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4fb

    :cond_50f
    move v3, v4

    move v12, v7

    move v4, v9

    move-object/from16 v21, v11

    move v7, v13

    :goto_515
    move/from16 v29, v17

    move v11, v8

    :goto_518
    move-object/from16 v17, v15

    goto/16 :goto_ab6

    :cond_51c
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move v12, v7

    move/from16 v29, v17

    move/from16 v7, v21

    move-object/from16 v17, v1

    move-object/from16 v21, v11

    :cond_52b
    :goto_52b
    move v11, v8

    goto/16 :goto_ab5

    :pswitch_52e
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v15, v1

    move/from16 v13, v21

    const/4 v5, 0x2

    if-ne v9, v5, :cond_56d

    .line 64
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 65
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 66
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int/2addr v3, v1

    :goto_545
    if-ge v1, v3, :cond_55b

    .line 67
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move-object/from16 v21, v11

    iget-wide v11, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 68
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    move-object/from16 v12, p1

    move-object/from16 v11, v21

    goto :goto_545

    :cond_55b
    move-object/from16 v21, v11

    if-ne v1, v3, :cond_567

    :cond_55f
    :goto_55f
    move v3, v4

    move v12, v7

    move v11, v8

    move v7, v13

    move/from16 v29, v17

    move v4, v1

    goto :goto_518

    .line 318
    :cond_567
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 275
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 276
    throw v1

    :cond_56d
    move-object/from16 v21, v11

    if-nez v9, :cond_59a

    .line 69
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 70
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 71
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget-wide v9, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 72
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    :goto_582
    if-ge v1, v4, :cond_55f

    .line 73
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v7, v5, :cond_55f

    .line 74
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget-wide v9, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v9

    .line 75
    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    goto :goto_582

    :cond_59a
    move v3, v4

    move v12, v7

    move v11, v8

    move v7, v13

    :goto_59e
    move/from16 v29, v17

    :goto_5a0
    move-object/from16 v17, v15

    goto/16 :goto_ab5

    :pswitch_5a4
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v15, v1

    move/from16 v13, v21

    const/4 v5, 0x2

    move-object/from16 v21, v11

    if-ne v9, v5, :cond_5d6

    .line 76
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 77
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadv;

    .line 78
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int/2addr v3, v1

    :goto_5bd
    if-ge v1, v3, :cond_5cd

    .line 79
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 80
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    goto :goto_5bd

    :cond_5cd
    if-ne v1, v3, :cond_5d0

    goto :goto_55f

    .line 276
    :cond_5d0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 277
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 278
    throw v1

    :cond_5d6
    if-nez v9, :cond_59a

    .line 81
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 82
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadv;

    .line 83
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 84
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    :goto_5e9
    if-ge v1, v4, :cond_55f

    .line 85
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v7, v5, :cond_55f

    .line 86
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v3

    .line 87
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    goto :goto_5e9

    :pswitch_601
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v15, v1

    move/from16 v13, v21

    const/4 v5, 0x2

    move-object/from16 v21, v11

    if-ne v9, v5, :cond_61b

    .line 88
    invoke-static {v2, v13, v14, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzm([BILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move-object v5, v14

    move v14, v13

    move v13, v7

    move v9, v1

    move-object v11, v2

    move v12, v4

    move-object v7, v6

    goto :goto_62b

    :cond_61b
    if-nez v9, :cond_647

    move v1, v7

    move v3, v13

    move-object v5, v14

    .line 89
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzl(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v7

    move v13, v1

    move v14, v3

    move v1, v7

    move-object v11, v2

    move v12, v4

    move-object v7, v6

    move v9, v1

    .line 90
    :goto_62b
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    move-object/from16 v1, p1

    move/from16 v2, v17

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->zzF(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move/from16 v29, v2

    move-object v6, v7

    move v4, v9

    move-object v2, v11

    move v3, v12

    move v12, v13

    move v7, v14

    move-object/from16 v17, v15

    :goto_644
    move v11, v8

    goto/16 :goto_ab6

    :cond_647
    move v14, v13

    move v13, v7

    move v3, v4

    move v11, v8

    move v12, v13

    move v7, v14

    goto/16 :goto_59e

    :pswitch_64f
    move/from16 v12, p4

    move-object v15, v1

    move v13, v7

    move-object v5, v14

    move/from16 v14, v21

    const/4 v2, 0x2

    move-object/from16 v7, p6

    move-object/from16 v21, v11

    move-object/from16 v11, p2

    if-ne v9, v2, :cond_6c1

    .line 92
    invoke-static {v11, v14, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v2, :cond_6bb

    .line 93
    array-length v3, v11

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_6b5

    if-nez v2, :cond_673

    .line 94
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67b

    .line 95
    :cond_673
    invoke-static {v11, v1, v2}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_67a
    add-int/2addr v1, v2

    :goto_67b
    if-ge v1, v12, :cond_6ad

    .line 96
    invoke-static {v11, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v13, v3, :cond_6ad

    .line 97
    invoke-static {v11, v2, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v2, :cond_6a7

    .line 98
    array-length v3, v11

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_6a1

    if-nez v2, :cond_699

    .line 286
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    .line 99
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67b

    .line 100
    :cond_699
    invoke-static {v11, v1, v2}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67a

    .line 98
    :cond_6a1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 285
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 286
    throw v1

    .line 97
    :cond_6a7
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 283
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    :cond_6ad
    move v4, v1

    move-object v6, v7

    move-object v2, v11

    move v3, v12

    move v12, v13

    move v7, v14

    goto/16 :goto_515

    .line 93
    :cond_6b5
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 281
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    .line 92
    :cond_6bb
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 279
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 280
    throw v1

    :cond_6c1
    move-object v6, v7

    move-object v2, v11

    move v3, v12

    move v12, v13

    move v7, v14

    move/from16 v29, v17

    move v11, v8

    goto/16 :goto_5a0

    :pswitch_6cb
    move/from16 v12, p4

    move-object v15, v1

    move v13, v7

    move-object v5, v14

    move/from16 v14, v21

    const/4 v10, 0x2

    move-object/from16 v7, p6

    move-object/from16 v21, v11

    move-object/from16 v11, p2

    if-ne v9, v10, :cond_6c1

    .line 101
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    move-object v6, v5

    move-object v3, v11

    move v5, v12

    move v2, v13

    move v4, v14

    move/from16 v11, v17

    .line 102
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzn(Lcom/google/android/gms/internal/measurement/zzafp;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move/from16 v31, v4

    move v4, v1

    move v1, v2

    move-object v2, v3

    move/from16 v3, v31

    move v12, v1

    move-object v6, v7

    move/from16 v29, v11

    move-object/from16 v17, v15

    :goto_6f7
    move v7, v3

    move v3, v5

    goto/16 :goto_644

    :pswitch_6fb
    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v15, v1

    move v1, v7

    move/from16 v3, v21

    const/4 v10, 0x2

    move-object/from16 v7, p6

    move-object/from16 v21, v11

    move/from16 v11, v17

    if-ne v9, v10, :cond_7dd

    const-wide/32 v9, 0x20000000

    and-long v9, v29, v9

    cmp-long v9, v9, v23

    if-nez v9, :cond_766

    .line 103
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v9, :cond_760

    if-nez v9, :cond_725

    .line 104
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v15

    goto :goto_732

    .line 111
    :cond_725
    new-instance v10, Ljava/lang/String;

    move-object/from16 v17, v15

    .line 105
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v4, v9, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 106
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_731
    add-int/2addr v4, v9

    :goto_732
    if-ge v4, v5, :cond_75b

    .line 107
    invoke-static {v2, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v10, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v1, v10, :cond_75b

    .line 108
    invoke-static {v2, v9, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v9, :cond_755

    if-nez v9, :cond_74a

    .line 109
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_732

    :cond_74a
    new-instance v10, Ljava/lang/String;

    .line 110
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v4, v9, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 111
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_731

    .line 108
    :cond_755
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 289
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 290
    throw v1

    :cond_75b
    move v12, v1

    move-object v6, v7

    move/from16 v29, v11

    goto :goto_6f7

    .line 103
    :cond_760
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 287
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 288
    throw v1

    :cond_766
    move-object/from16 v17, v15

    .line 112
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v10, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v10, :cond_7d7

    if-nez v10, :cond_778

    .line 113
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v29, v11

    goto :goto_790

    :cond_778
    add-int v15, v9, v10

    .line 114
    invoke-static {v2, v9, v15}, Lcom/google/android/gms/internal/measurement/zzagl;->zza([BII)Z

    move-result v23

    if-eqz v23, :cond_7d1

    move/from16 v23, v15

    .line 294
    new-instance v15, Ljava/lang/String;

    move/from16 v29, v11

    .line 115
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 116
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_78e
    move/from16 v9, v23

    :goto_790
    if-ge v9, v5, :cond_7c9

    .line 117
    invoke-static {v2, v9, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v10

    iget v11, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v1, v11, :cond_7c9

    .line 118
    invoke-static {v2, v10, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v10, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v10, :cond_7c3

    if-nez v10, :cond_7a8

    .line 119
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_790

    :cond_7a8
    add-int v11, v9, v10

    .line 120
    invoke-static {v2, v9, v11}, Lcom/google/android/gms/internal/measurement/zzagl;->zza([BII)Z

    move-result v15

    if-eqz v15, :cond_7bd

    .line 298
    new-instance v15, Ljava/lang/String;

    move/from16 v23, v11

    .line 121
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 122
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78e

    .line 120
    :cond_7bd
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 297
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 298
    throw v1

    .line 118
    :cond_7c3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 295
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 296
    throw v1

    :cond_7c9
    move v12, v1

    move-object v6, v7

    move v11, v8

    move v4, v9

    :goto_7cd
    move v7, v3

    move v3, v5

    goto/16 :goto_ab6

    .line 114
    :cond_7d1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 293
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 294
    throw v1

    .line 112
    :cond_7d7
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 291
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 292
    throw v1

    :cond_7dd
    move/from16 v29, v11

    move-object/from16 v17, v15

    :cond_7e1
    move v12, v1

    move-object v6, v7

    move v11, v8

    move v7, v3

    move v3, v5

    goto/16 :goto_ab5

    :pswitch_7e8
    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v29, v17

    move/from16 v3, v21

    const/4 v4, 0x2

    move-object/from16 v17, v1

    move v1, v7

    move-object/from16 v21, v11

    move-object/from16 v7, p6

    if-ne v9, v4, :cond_824

    .line 123
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 124
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaci;

    .line 125
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int/2addr v6, v4

    :goto_805
    if-ge v4, v6, :cond_818

    .line 126
    invoke-static {v2, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v11, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    cmp-long v9, v11, v23

    if-eqz v9, :cond_813

    const/4 v9, 0x1

    goto :goto_814

    :cond_813
    const/4 v9, 0x0

    .line 127
    :goto_814
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzaci;->zzf(Z)V

    goto :goto_805

    :cond_818
    if-ne v4, v6, :cond_81e

    :cond_81a
    :goto_81a
    move v12, v1

    move-object v6, v7

    move v11, v8

    goto :goto_7cd

    .line 278
    :cond_81e
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 299
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 300
    throw v1

    :cond_824
    if-nez v9, :cond_7e1

    .line 128
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 129
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaci;

    .line 130
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v9, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    cmp-long v6, v9, v23

    if-eqz v6, :cond_836

    const/4 v6, 0x1

    goto :goto_837

    :cond_836
    const/4 v6, 0x0

    .line 131
    :goto_837
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzaci;->zzf(Z)V

    :goto_83a
    if-ge v4, v5, :cond_81a

    .line 132
    invoke-static {v2, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v6

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v1, v9, :cond_81a

    .line 133
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v9, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    cmp-long v6, v9, v23

    if-eqz v6, :cond_850

    const/4 v6, 0x1

    goto :goto_851

    :cond_850
    const/4 v6, 0x0

    .line 134
    :goto_851
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzaci;->zzf(Z)V

    goto :goto_83a

    :pswitch_855
    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v29, v17

    move/from16 v3, v21

    const/4 v4, 0x2

    move-object/from16 v17, v1

    move v1, v7

    move-object/from16 v21, v11

    move-object/from16 v7, p6

    if-ne v9, v4, :cond_89b

    .line 135
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 136
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadv;

    .line 137
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int v9, v4, v6

    .line 138
    array-length v11, v2

    if-gt v9, v11, :cond_895

    .line 139
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzadv;->size()I

    move-result v11

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v11, v6

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->zzi(I)V

    :goto_880
    if-ge v4, v9, :cond_88c

    .line 140
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    add-int/lit8 v4, v4, 0x4

    goto :goto_880

    :cond_88c
    if-ne v4, v9, :cond_88f

    goto :goto_81a

    .line 300
    :cond_88f
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 303
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 304
    throw v1

    .line 138
    :cond_895
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 301
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1

    :cond_89b
    const/4 v4, 0x5

    if-ne v9, v4, :cond_7e1

    add-int/lit8 v12, v3, 0x4

    .line 141
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 142
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadv;

    .line 143
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    :goto_8ab
    if-ge v12, v5, :cond_8bf

    .line 144
    invoke-static {v2, v12, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v1, v6, :cond_8bf

    .line 145
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzadv;->zzh(I)V

    add-int/lit8 v12, v4, 0x4

    goto :goto_8ab

    :cond_8bf
    move-object v6, v7

    move v11, v8

    move v4, v12

    move v12, v1

    goto/16 :goto_7cd

    :pswitch_8c5
    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v29, v17

    move/from16 v3, v21

    const/4 v4, 0x2

    move-object/from16 v17, v1

    move v1, v7

    move-object/from16 v21, v11

    move-object/from16 v7, p6

    if-ne v9, v4, :cond_90c

    .line 146
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 147
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 148
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int v9, v4, v6

    .line 149
    array-length v11, v2

    if-gt v9, v11, :cond_906

    .line 150
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzaeq;->size()I

    move-result v11

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v11, v6

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzh(I)V

    :goto_8f0
    if-ge v4, v9, :cond_8fc

    .line 151
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    add-int/lit8 v4, v4, 0x8

    goto :goto_8f0

    :cond_8fc
    if-ne v4, v9, :cond_900

    goto/16 :goto_81a

    .line 304
    :cond_900
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 307
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 308
    throw v1

    .line 149
    :cond_906
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 305
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 306
    throw v1

    :cond_90c
    const/4 v4, 0x1

    if-ne v9, v4, :cond_7e1

    add-int/lit8 v12, v3, 0x8

    .line 152
    sget v4, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 153
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 154
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    :goto_91c
    if-ge v12, v5, :cond_8bf

    .line 155
    invoke-static {v2, v12, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v1, v6, :cond_8bf

    .line 156
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    add-int/lit8 v12, v4, 0x8

    goto :goto_91c

    :pswitch_930
    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v29, v17

    move/from16 v3, v21

    move-object/from16 v17, v1

    move v1, v7

    move-object/from16 v21, v11

    const/4 v11, 0x2

    move-object/from16 v7, p6

    if-ne v9, v11, :cond_948

    .line 157
    invoke-static {v2, v3, v14, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzm([BILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    goto/16 :goto_81a

    :cond_948
    if-nez v9, :cond_957

    move v4, v5

    move-object v6, v7

    move-object v5, v14

    .line 158
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzl(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    move v12, v1

    move v7, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_644

    :cond_957
    move v12, v1

    move-object v6, v7

    move v7, v3

    move v3, v5

    goto/16 :goto_52b

    :pswitch_95d
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move v12, v7

    move-object v5, v14

    move/from16 v29, v17

    move/from16 v7, v21

    move-object/from16 v17, v1

    move-object/from16 v21, v11

    const/4 v11, 0x2

    if-ne v9, v11, :cond_997

    .line 159
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 160
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 161
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int/2addr v4, v1

    :goto_97c
    if-ge v1, v4, :cond_98c

    .line 162
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move v5, v1

    iget-wide v0, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 163
    invoke-virtual {v14, v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    move-object/from16 v0, p0

    move v1, v5

    goto :goto_97c

    :cond_98c
    if-ne v1, v4, :cond_991

    move v4, v1

    goto/16 :goto_644

    .line 308
    :cond_991
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 309
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 310
    throw v0

    :cond_997
    if-nez v9, :cond_52b

    .line 164
    sget v0, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 165
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaeq;

    .line 166
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget-wide v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 167
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    :goto_9a7
    if-ge v0, v3, :cond_9bb

    .line 168
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v12, v4, :cond_9bb

    .line 169
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget-wide v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 170
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->zzf(J)V

    goto :goto_9a7

    :cond_9bb
    :goto_9bb
    move v4, v0

    goto/16 :goto_644

    :pswitch_9be
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move v12, v7

    move-object v5, v14

    move/from16 v29, v17

    move/from16 v7, v21

    const/4 v4, 0x2

    move-object/from16 v17, v1

    move-object/from16 v21, v11

    if-ne v9, v4, :cond_a0a

    .line 171
    sget v0, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 172
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadm;

    .line 173
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int v4, v0, v1

    .line 174
    array-length v5, v2

    if-gt v4, v5, :cond_a04

    .line 175
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzadm;->size()I

    move-result v5

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v5, v1

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzadm;->zzh(I)V

    :goto_9eb
    if-ge v0, v4, :cond_9fb

    .line 176
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 177
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzadm;->zzf(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_9eb

    :cond_9fb
    if-ne v0, v4, :cond_9fe

    goto :goto_9bb

    .line 5
    :cond_9fe
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 313
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 314
    throw v0

    .line 174
    :cond_a04
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 311
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 312
    throw v0

    :cond_a0a
    const/4 v4, 0x5

    if-ne v9, v4, :cond_52b

    add-int/lit8 v0, v7, 0x4

    .line 178
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 179
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadm;

    .line 180
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 181
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzadm;->zzf(F)V

    :goto_a1f
    if-ge v0, v3, :cond_9bb

    .line 182
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v12, v4, :cond_9bb

    .line 183
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 184
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzadm;->zzf(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_a1f

    :pswitch_a37
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move v12, v7

    move-object v5, v14

    move/from16 v29, v17

    move/from16 v7, v21

    const/4 v4, 0x2

    move-object/from16 v17, v1

    move-object/from16 v21, v11

    if-ne v9, v4, :cond_a87

    .line 185
    sget v0, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 186
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadc;

    .line 187
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    add-int v4, v0, v1

    .line 188
    array-length v5, v2

    if-gt v4, v5, :cond_a81

    .line 189
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzadc;->size()I

    move-result v5

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzadc;->zzh(I)V

    :goto_a64
    if-ge v0, v4, :cond_a76

    .line 190
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v23

    move v11, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 191
    invoke-virtual {v14, v8, v9}, Lcom/google/android/gms/internal/measurement/zzadc;->zzf(D)V

    add-int/lit8 v0, v0, 0x8

    move v8, v11

    goto :goto_a64

    :cond_a76
    move v11, v8

    if-ne v0, v4, :cond_a7b

    :cond_a79
    move v4, v0

    goto :goto_ab6

    .line 334
    :cond_a7b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 317
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 318
    throw v0

    .line 188
    :cond_a81
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 315
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 316
    throw v0

    :cond_a87
    move v11, v8

    const/4 v4, 0x1

    if-ne v9, v4, :cond_ab5

    add-int/lit8 v0, v7, 0x8

    .line 192
    sget v1, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 193
    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzadc;

    .line 194
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 195
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzadc;->zzf(D)V

    :goto_a9d
    if-ge v0, v3, :cond_a79

    .line 196
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ne v12, v4, :cond_a79

    .line 197
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 198
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzadc;->zzf(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_a9d

    :cond_ab5
    :goto_ab5
    move v4, v7

    :goto_ab6
    move-object/from16 v0, p0

    if-eq v4, v7, :cond_acf

    move v7, v4

    move v9, v11

    move-object/from16 v1, v17

    move/from16 v13, v22

    move/from16 v14, v27

    move/from16 v8, v29

    const/4 v15, -0x1

    const/16 v16, 0x1

    move v4, v3

    move/from16 v17, v12

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_1c

    :cond_acf
    move-object/from16 v7, p1

    move/from16 v10, p5

    move-object v3, v2

    move-object v1, v6

    move v9, v11

    move-object/from16 v8, v17

    move/from16 v13, v22

    move/from16 v14, v27

    move/from16 v11, v29

    const/16 v20, 0x3

    goto/16 :goto_ecc

    :cond_ae2
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v28, v3

    move v12, v7

    move/from16 v29, v17

    move/from16 v7, v21

    move/from16 v3, p4

    move-object/from16 v21, v11

    move v11, v8

    move-object v8, v1

    const/16 v0, 0x32

    move/from16 v1, v28

    if-ne v1, v0, :cond_c16

    const/4 v0, 0x2

    if-ne v9, v0, :cond_bff

    move-object/from16 v0, p0

    .line 199
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v9, p1

    .line 200
    invoke-virtual {v8, v9, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 201
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzaex;->zza(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1d

    .line 202
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v5

    .line 203
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzaex;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v8, v9, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 205
    :cond_b1d
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaev;->zze()Lcom/google/android/gms/internal/measurement/zzaeu;

    move-result-object v13

    .line 206
    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 207
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-ltz v4, :cond_bf9

    sub-int v5, v3, v1

    if-gt v4, v5, :cond_bf9

    add-int v10, v1, v4

    .line 320
    iget-object v4, v13, Lcom/google/android/gms/internal/measurement/zzaeu;->zzb:Ljava/lang/Object;

    iget-object v15, v13, Lcom/google/android/gms/internal/measurement/zzaeu;->zzd:Ljava/lang/Object;

    move-object v5, v15

    :goto_b39
    if-ge v1, v10, :cond_bc2

    const/16 v16, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 208
    aget-byte v1, v2, v1

    if-gez v1, :cond_b49

    .line 209
    invoke-static {v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzb(I[BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    :cond_b49
    const/16 v20, 0x3

    ushr-int/lit8 v2, v1, 0x3

    move/from16 v17, v3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v23, v4

    move/from16 v4, v16

    if-eq v2, v4, :cond_b90

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b66

    move-object/from16 v3, p2

    move-object v2, v5

    move-object v4, v6

    move/from16 v5, v17

    move-object/from16 v9, v23

    :goto_b62
    move/from16 v6, p4

    goto/16 :goto_bb8

    .line 215
    :cond_b66
    iget-object v4, v13, Lcom/google/android/gms/internal/measurement/zzaeu;->zzc:Lcom/google/android/gms/internal/measurement/zzagm;

    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_b87

    .line 211
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v2, v17

    move-object/from16 v9, v23

    .line 212
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzS([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget-object v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    move v1, v2

    move-object v4, v9

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    goto :goto_b39

    :cond_b87
    move-object/from16 v9, v23

    :cond_b89
    move-object/from16 v3, p2

    move-object v2, v5

    move-object v4, v6

    move/from16 v5, v17

    goto :goto_b62

    :cond_b90
    move/from16 v2, v17

    move-object/from16 v9, v23

    iget-object v4, v13, Lcom/google/android/gms/internal/measurement/zzaeu;->zza:Lcom/google/android/gms/internal/measurement/zzagm;

    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_b89

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v9, v2

    move/from16 v2, v17

    .line 214
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzS([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move-object v4, v6

    move v6, v3

    move-object v3, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    move-object v5, v4

    move-object v4, v1

    move v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v5

    move-object v5, v9

    :goto_bb5
    move-object/from16 v9, p1

    goto :goto_b39

    .line 215
    :goto_bb8
    invoke-static {v1, v3, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzach;->zzp(I[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move-object v5, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_bb5

    :cond_bc2
    move-object v9, v4

    move-object v4, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v5

    if-ne v1, v10, :cond_bf1

    .line 216
    invoke-interface {v14, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v7, :cond_be0

    move v1, v6

    move-object v6, v4

    move v4, v1

    move-object/from16 v2, p1

    move-object v1, v8

    move v7, v10

    move v9, v11

    move/from16 v17, v12

    move/from16 v13, v22

    move/from16 v14, v27

    move/from16 v8, v29

    goto/16 :goto_349

    :cond_be0
    move-object/from16 v7, p1

    move-object v1, v4

    move v4, v10

    move v9, v11

    move/from16 v13, v22

    move/from16 v14, v27

    move/from16 v11, v29

    const/16 v20, 0x3

    :goto_bed
    move/from16 v10, p5

    goto/16 :goto_ecc

    .line 214
    :cond_bf1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    move-object/from16 v10, v21

    .line 321
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 322
    throw v1

    .line 207
    :cond_bf9
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 319
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 320
    throw v1

    :cond_bff
    move-object/from16 v0, p0

    move-object v4, v6

    move-object/from16 v10, v21

    move v6, v3

    move-object v3, v2

    :goto_c06
    move-object v1, v4

    move v4, v7

    move-object/from16 v21, v10

    move v9, v11

    move/from16 v13, v22

    move/from16 v14, v27

    move/from16 v11, v29

    const/16 v20, 0x3

    move-object/from16 v7, p1

    goto :goto_bed

    :cond_c16
    move-object/from16 v0, p0

    move v6, v3

    move-object/from16 v10, v21

    const/16 v19, 0x2

    move-object v3, v2

    move-object/from16 v2, p1

    add-int/lit8 v17, v11, 0x2

    .line 217
    aget v17, v26, v17

    move/from16 v28, v1

    and-int v1, v17, p3

    move/from16 v17, v5

    int-to-long v5, v1

    packed-switch v28, :pswitch_data_fe4

    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/16 v20, 0x3

    goto/16 :goto_eb0

    :pswitch_c3d
    const/4 v13, 0x3

    if-ne v9, v13, :cond_c6a

    and-int/lit8 v1, v12, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v9, v29

    .line 218
    invoke-direct {v0, v2, v9, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move-object/from16 v14, p1

    move/from16 v5, p4

    move v4, v7

    move-object/from16 v7, p6

    .line 220
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    .line 221
    invoke-direct {v0, v14, v9, v11, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move v1, v4

    move v4, v2

    move v2, v1

    move-object v1, v7

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v20, v13

    move-object v7, v14

    :goto_c67
    move v11, v9

    goto/16 :goto_eb1

    :cond_c6a
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v20, v13

    move/from16 v11, v29

    goto/16 :goto_eb0

    :pswitch_c79
    move-object v1, v2

    move v4, v7

    move/from16 v2, v29

    const/4 v13, 0x3

    move-object/from16 v7, p6

    if-nez v9, :cond_caa

    .line 222
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    move-wide/from16 v28, v14

    iget-wide v13, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 223
    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-wide/from16 v14, v28

    invoke-virtual {v8, v1, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    invoke-virtual {v8, v1, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c9a
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move-object/from16 v21, v10

    move/from16 v19, v11

    const/16 v20, 0x3

    move v11, v2

    move v2, v4

    :goto_ca7
    move v4, v9

    goto/16 :goto_eb1

    :cond_caa
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v20, v13

    :goto_cb5
    move v11, v2

    move v2, v4

    goto/16 :goto_eb0

    :pswitch_cb9
    move-object v1, v2

    move v4, v7

    move/from16 v2, v29

    move-object/from16 v7, p6

    if-nez v9, :cond_cd6

    .line 225
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v13, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 226
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v1, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    invoke-virtual {v8, v1, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c9a

    :cond_cd6
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    :goto_cdb
    move-object/from16 v21, v10

    move/from16 v19, v11

    const/16 v20, 0x3

    goto :goto_cb5

    :pswitch_ce2
    move-object v1, v2

    move v4, v7

    move/from16 v2, v29

    move-object/from16 v7, p6

    if-nez v9, :cond_cd6

    .line 228
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v13, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    move/from16 v17, v9

    .line 229
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzs(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v9

    if-eqz v9, :cond_d0c

    invoke-interface {v9, v13}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_cff

    goto :goto_d0c

    .line 232
    :cond_cff
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Lcom/google/android/gms/internal/measurement/zzaga;->zzk(ILjava/lang/Object;)V

    goto :goto_d16

    .line 230
    :cond_d0c
    :goto_d0c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v8, v1, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d16
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move-object/from16 v21, v10

    move/from16 v19, v11

    const/16 v20, 0x3

    move v11, v2

    move v2, v4

    move/from16 v4, v17

    goto/16 :goto_eb1

    :pswitch_d27
    move-object v1, v2

    move v4, v7

    move/from16 v2, v29

    const/4 v13, 0x2

    move-object/from16 v7, p6

    if-ne v9, v13, :cond_cd6

    .line 233
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->zzg([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzacg;->zzc:Ljava/lang/Object;

    .line 234
    invoke-virtual {v8, v1, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 235
    invoke-virtual {v8, v1, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c9a

    :pswitch_d3e
    move-object v1, v2

    move v4, v7

    move/from16 v2, v29

    const/4 v13, 0x2

    move-object/from16 v7, p6

    if-ne v9, v13, :cond_d6e

    move-object v9, v1

    .line 236
    invoke-direct {v0, v9, v2, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    move/from16 v17, v2

    .line 237
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move/from16 v5, p4

    move-object v6, v7

    move-object v7, v9

    move/from16 v9, v17

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move-object v5, v1

    move-object v1, v6

    .line 239
    invoke-direct {v0, v7, v9, v11, v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    move-object/from16 v21, v10

    move/from16 v19, v11

    const/16 v20, 0x3

    goto/16 :goto_c67

    :cond_d6e
    move-object/from16 v31, v7

    move-object v7, v1

    move-object/from16 v1, v31

    goto/16 :goto_cdb

    :pswitch_d75
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/4 v10, 0x2

    const/16 v20, 0x3

    if-ne v9, v10, :cond_eb0

    .line 240
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v9

    iget v10, v1, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    if-nez v10, :cond_d91

    .line 241
    invoke-virtual {v8, v7, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_db4

    :cond_d91
    add-int v13, v9, v10

    const/high16 v23, 0x20000000

    and-int v17, v17, v23

    if-eqz v17, :cond_da6

    .line 242
    invoke-static {v3, v9, v13}, Lcom/google/android/gms/internal/measurement/zzagl;->zza([BII)Z

    move-result v17

    if-eqz v17, :cond_da0

    goto :goto_da6

    :cond_da0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 323
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 324
    throw v1

    :cond_da6
    :goto_da6
    new-instance v4, Ljava/lang/String;

    move/from16 v17, v13

    .line 243
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v9, v10, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 244
    invoke-virtual {v8, v7, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v9, v17

    .line 245
    :goto_db4
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_ca7

    :pswitch_db9
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/16 v20, 0x3

    if-nez v9, :cond_eb0

    .line 246
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v9, v1, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    cmp-long v9, v9, v23

    if-eqz v9, :cond_dd4

    const/4 v9, 0x1

    goto :goto_dd5

    :cond_dd4
    const/4 v9, 0x0

    .line 247
    :goto_dd5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 248
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_eb1

    :pswitch_de1
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/4 v4, 0x5

    const/16 v20, 0x3

    if-ne v9, v4, :cond_eb0

    add-int/lit8 v4, v2, 0x4

    .line 249
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_eb1

    :pswitch_e03
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/4 v4, 0x1

    const/16 v20, 0x3

    if-ne v9, v4, :cond_eb0

    add-int/lit8 v4, v2, 0x8

    .line 251
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 252
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_eb1

    :pswitch_e25
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/16 v20, 0x3

    if-nez v9, :cond_eb0

    .line 253
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zza([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v9, v1, Lcom/google/android/gms/internal/measurement/zzacg;->zza:I

    .line 254
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 255
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_eb1

    :pswitch_e46
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/16 v20, 0x3

    if-nez v9, :cond_eb0

    .line 256
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzach;->zzc([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v9, v1, Lcom/google/android/gms/internal/measurement/zzacg;->zzb:J

    .line 257
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_eb1

    :pswitch_e66
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/4 v4, 0x5

    const/16 v20, 0x3

    if-ne v9, v4, :cond_eb0

    add-int/lit8 v4, v2, 0x4

    .line 259
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zzd([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 260
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_eb1

    :pswitch_e8b
    move v1, v7

    move-object v7, v2

    move v2, v1

    move-object/from16 v1, p6

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v11, v29

    const/4 v4, 0x1

    const/16 v20, 0x3

    if-ne v9, v4, :cond_eb0

    add-int/lit8 v4, v2, 0x8

    .line 262
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->zze([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 263
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v7, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v8, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_eb1

    :cond_eb0
    :goto_eb0
    move v4, v2

    :goto_eb1
    if-eq v4, v2, :cond_ec4

    move-object v6, v1

    move-object v2, v7

    move-object v1, v8

    move v8, v11

    move/from16 v17, v12

    move/from16 v9, v19

    move/from16 v13, v22

    move/from16 v14, v27

    const/4 v15, -0x1

    const/16 v16, 0x1

    goto/16 :goto_d6

    :cond_ec4
    move/from16 v10, p5

    move/from16 v9, v19

    move/from16 v13, v22

    move/from16 v14, v27

    :goto_ecc
    if-ne v12, v10, :cond_ed9

    if-eqz v10, :cond_ed9

    move/from16 v3, p3

    move-object v1, v7

    move v6, v12

    move/from16 v12, p4

    move v7, v4

    goto/16 :goto_f37

    .line 332
    :cond_ed9
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v2, :cond_f06

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzacg;->zzd:Lcom/google/android/gms/internal/measurement/zzadf;

    .line 265
    sget v5, Lcom/google/android/gms/internal/measurement/zzadf;->zzb:I

    .line 266
    sget v5, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzadf;->zza:Lcom/google/android/gms/internal/measurement/zzadf;

    if-eq v2, v5, :cond_f06

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzg:Lcom/google/android/gms/internal/measurement/zzafc;

    .line 267
    sget v6, Lcom/google/android/gms/internal/measurement/zzach;->zza:I

    .line 268
    invoke-virtual {v2, v5, v11}, Lcom/google/android/gms/internal/measurement/zzadf;->zzc(Lcom/google/android/gms/internal/measurement/zzafc;I)Lcom/google/android/gms/internal/measurement/zzadt;

    move-result-object v2

    if-nez v2, :cond_f02

    .line 269
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzaff;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object v6, v1

    move-object v2, v3

    move v3, v4

    move v1, v12

    move/from16 v4, p4

    .line 270
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzo(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    move/from16 v12, p4

    goto :goto_f17

    .line 333
    :cond_f02
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadr;

    .line 334
    throw v18

    :cond_f06
    move v3, v4

    move v1, v12

    .line 271
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzaff;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 272
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->zzo(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    move v12, v4

    :goto_f17
    move-object/from16 v6, p6

    move/from16 v17, v1

    move-object v2, v7

    move-object v1, v8

    move v8, v11

    move v4, v12

    const/4 v15, -0x1

    const/16 v16, 0x1

    move v7, v3

    move-object/from16 v3, p2

    goto/16 :goto_1c

    :cond_f27
    move/from16 v10, p5

    move-object v8, v1

    move-object v1, v2

    move v12, v4

    move-object/from16 v21, v11

    move/from16 v22, v13

    move/from16 v27, v14

    move/from16 v6, v17

    const v3, 0xfffff

    :goto_f37
    if-eq v14, v3, :cond_f3d

    int-to-long v2, v14

    .line 325
    invoke-virtual {v8, v1, v2, v3, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f3d
    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    move v8, v2

    move-object/from16 v3, v18

    :goto_f42
    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzl:I

    if-ge v8, v2, :cond_f5a

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    .line 326
    aget v2, v2, v8

    move-object/from16 v5, p1

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaga;

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_f42

    :cond_f5a
    if-eqz v3, :cond_f61

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    .line 328
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzafz;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f61
    if-nez v10, :cond_f6e

    if-ne v7, v12, :cond_f66

    goto :goto_f74

    :cond_f66
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    move-object/from16 v2, v21

    .line 329
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 330
    throw v1

    :cond_f6e
    move-object/from16 v2, v21

    if-gt v7, v12, :cond_f75

    if-ne v6, v10, :cond_f75

    :goto_f74
    return v7

    :cond_f75
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 331
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 332
    throw v1

    nop

    :pswitch_data_f7c
    .packed-switch 0x0
        :pswitch_3ee
        :pswitch_3b5
        :pswitch_388
        :pswitch_388
        :pswitch_355
        :pswitch_316
        :pswitch_2e2
        :pswitch_2b7
        :pswitch_252
        :pswitch_1ef
        :pswitch_1cf
        :pswitch_355
        :pswitch_176
        :pswitch_2e2
        :pswitch_316
        :pswitch_139
        :pswitch_f1
    .end packed-switch

    :pswitch_data_fa2
    .packed-switch 0x12
        :pswitch_a37
        :pswitch_9be
        :pswitch_95d
        :pswitch_95d
        :pswitch_930
        :pswitch_8c5
        :pswitch_855
        :pswitch_7e8
        :pswitch_6fb
        :pswitch_6cb
        :pswitch_64f
        :pswitch_930
        :pswitch_601
        :pswitch_855
        :pswitch_8c5
        :pswitch_5a4
        :pswitch_52e
        :pswitch_a37
        :pswitch_9be
        :pswitch_95d
        :pswitch_95d
        :pswitch_930
        :pswitch_8c5
        :pswitch_855
        :pswitch_7e8
        :pswitch_930
        :pswitch_601
        :pswitch_855
        :pswitch_8c5
        :pswitch_5a4
        :pswitch_52e
    .end packed-switch

    :pswitch_data_fe4
    .packed-switch 0x33
        :pswitch_e8b
        :pswitch_e66
        :pswitch_e46
        :pswitch_e46
        :pswitch_e25
        :pswitch_e03
        :pswitch_de1
        :pswitch_db9
        :pswitch_d75
        :pswitch_d3e
        :pswitch_d27
        :pswitch_e25
        :pswitch_ce2
        :pswitch_de1
        :pswitch_e03
        :pswitch_cb9
        :pswitch_c79
        :pswitch_c3d
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzacg;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_93

    :cond_8
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcp(I)V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzci()V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_85

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_6f

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_59

    const/16 v5, 0x44

    if-eq v2, v5, :cond_59

    packed-switch v2, :pswitch_data_94

    goto :goto_82

    .line 10
    :pswitch_3d
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_82

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzaew;->zzd()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_82

    .line 6
    :pswitch_4f
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaef;->zzb()V

    goto :goto_82

    .line 8
    :cond_59
    aget v2, v0, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafp;->zzk(Ljava/lang/Object;)V

    goto :goto_82

    .line 14
    :cond_6f
    :pswitch_6f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzK(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafp;->zzk(Ljava/lang/Object;)V

    :cond_82
    :goto_82
    add-int/lit8 v1, v1, 0x3

    goto :goto_1d

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzm:Lcom/google/android/gms/internal/measurement/zzafz;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzafz;->zzj(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzn:Lcom/google/android/gms/internal/measurement/zzadg;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzadg;->zza(Ljava/lang/Object;)V

    :cond_93
    :goto_93
    return-void

    :pswitch_data_94
    .packed-switch 0x11
        :pswitch_6f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_3d
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .registers 16

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    .line 1
    :goto_7
    iget v5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzk:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_fe

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzj:[I

    aget v9, v5, v2

    .line 2
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzA(I)I

    move-result v5

    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzaff;->zzc:[I

    add-int/lit8 v7, v9, 0x2

    .line 3
    aget v7, v13, v7

    and-int v8, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_2e

    if-eq v8, v1, :cond_2b

    int-to-long v3, v8

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzaff;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_2b
    move v11, v4

    move v10, v8

    goto :goto_30

    :cond_2e
    move v10, v3

    move v11, v4

    :goto_30
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    move-object v7, p0

    move-object v8, p1

    if-eqz v3, :cond_3e

    .line 5
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_3e

    return v0

    :cond_3e
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzaff;->zzC(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_e6

    const/16 v3, 0x11

    if-eq p1, v3, :cond_e6

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_be

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_ab

    const/16 v3, 0x44

    if-eq p1, v3, :cond_ab

    const/16 v3, 0x31

    if-eq p1, v3, :cond_be

    const/16 v3, 0x32

    if-eq p1, v3, :cond_60

    goto/16 :goto_f7

    :cond_60
    and-int p1, v5, v1

    int-to-long v3, p1

    .line 12
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 15
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzr(I)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzaev;->zze()Lcom/google/android/gms/internal/measurement/zzaeu;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzaeu;->zzc:Lcom/google/android/gms/internal/measurement/zzagm;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzagm;->zza()Lcom/google/android/gms/internal/measurement/zzagn;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzagn;->zzi:Lcom/google/android/gms/internal/measurement/zzagn;

    if-ne v3, v4, :cond_f7

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_a4

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafl;->zza()Lcom/google/android/gms/internal/measurement/zzafl;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzafl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v3

    .line 20
    :cond_a4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/measurement/zzafp;->zzl(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    return v0

    .line 21
    :cond_ab
    aget p1, v13, v9

    .line 22
    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzM(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 23
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafp;)Z

    move-result p1

    if-nez p1, :cond_f7

    return v0

    :cond_be
    and-int p1, v5, v1

    int-to-long v3, p1

    .line 6
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 8
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v3

    move v4, v0

    .line 9
    :goto_d2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f7

    .line 10
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/measurement/zzafp;->zzl(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e3

    return v0

    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    .line 24
    :cond_e6
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzaff;->zzJ(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 25
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->zzq(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzafp;)Z

    move-result p1

    if-nez p1, :cond_f7

    return v0

    :cond_f7
    :goto_f7
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_7

    :cond_fe
    move-object v7, p0

    move-object v8, p1

    iget-boolean p1, v7, Lcom/google/android/gms/internal/measurement/zzaff;->zzh:Z

    if-eqz p1, :cond_110

    .line 26
    move-object p1, v8

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadk;->zze()Z

    move-result p1

    if-nez p1, :cond_110

    return v0

    :cond_110
    return v6
.end method
