###### Class com.google.android.gms.internal.play_billing.zzgd (com.google.android.gms.internal.play_billing.zzgd)
.class final Lcom/google/android/gms/internal/play_billing/zzgd;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzgj;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzgj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgd;->zza:Lcom/google/android/gms/internal/play_billing/zzgj;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgc;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfd;->zza()Lcom/google/android/gms/internal/play_billing/zzfd;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/play_billing/zzgj;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgd;->zza:Lcom/google/android/gms/internal/play_billing/zzgj;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzgc;-><init>([Lcom/google/android/gms/internal/play_billing/zzgj;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzfo;->zzb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgd;->zzb:Lcom/google/android/gms/internal/play_billing/zzgj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;
    .registers 10

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzgx;->zza:I

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgd;->zzb:Lcom/google/android/gms/internal/play_billing/zzgj;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzgj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgi;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgi;->zzb()Z

    move-result v0

    if-nez v0, :cond_41

    .line 5
    sget v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgr;->zza()Lcom/google/android/gms/internal/play_billing/zzgq;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfz;->zza()Lcom/google/android/gms/internal/play_billing/zzfy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgx;->zzm()Lcom/google/android/gms/internal/play_billing/zzhh;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgi;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzex;->zza()Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    :goto_33
    move-object v6, v0

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_33

    .line 10
    :goto_37
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgh;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgi;Lcom/google/android/gms/internal/play_billing/zzgq;Lcom/google/android/gms/internal/play_billing/zzfy;Lcom/google/android/gms/internal/play_billing/zzhh;Lcom/google/android/gms/internal/play_billing/zzev;Lcom/google/android/gms/internal/play_billing/zzgg;)Lcom/google/android/gms/internal/play_billing/zzgo;

    move-result-object p1

    return-object p1

    .line 12
    :cond_41
    sget p1, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgx;->zzm()Lcom/google/android/gms/internal/play_billing/zzhh;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzex;->zza()Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc(Lcom/google/android/gms/internal/play_billing/zzhh;Lcom/google/android/gms/internal/play_billing/zzev;Lcom/google/android/gms/internal/play_billing/zzgl;)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    return-object p1
.end method
