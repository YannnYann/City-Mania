###### Class com.google.android.gms.internal.measurement.zzna (com.google.android.gms.internal.measurement.zzna)
.class public final Lcom/google/android/gms/internal/measurement/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzrt;


# instance fields
.field private final zza:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzna;->zza:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzrs;)Ljava/lang/Object;
    .registers 9

    .line 1
    const-string v0, "openContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzst;->zzc(Lcom/google/android/gms/internal/measurement/zzrs;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzna;->zza:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_31

    const-string v1, "parseFrom(...)"

    const/16 v2, 0x1000

    if-eqz v0, :cond_40

    :try_start_11
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzsf;

    if-eqz v0, :cond_33

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzsf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzsf;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_29

    const/16 v2, 0x200

    goto :goto_33

    :cond_29
    const-wide/16 v5, 0x1000

    cmp-long v0, v3, v5

    if-gez v0, :cond_33

    long-to-int v2, v3

    goto :goto_33

    :catchall_31
    move-exception v0

    goto :goto_51

    .line 7
    :cond_33
    :goto_33
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzM(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/measurement/zzacv;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zznd;->zzb(Lcom/google/android/gms/internal/measurement/zzacv;Z)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4c

    .line 3
    :cond_40
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzM(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/measurement/zzacv;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zznd;->zzb(Lcom/google/android/gms/internal/measurement/zzacv;Z)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_11 .. :try_end_4c} :catchall_31

    :goto_4c
    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_51
    :try_start_51
    throw v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
