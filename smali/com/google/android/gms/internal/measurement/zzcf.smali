###### Class com.google.android.gms.internal.measurement.zzcf (com.google.android.gms.internal.measurement.zzcf)
.class public final Lcom/google/android/gms/internal/measurement/zzcf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.2.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "JobSchedulerCompat"

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_6
    const-class v4, Landroid/app/job/JobScheduler;

    const-string v5, "scheduleAsPackage"

    const-class v6, Landroid/app/job/JobInfo;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v0, v7, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_23

    .line 2
    :catch_17
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object v0, v3

    .line 1
    :goto_23
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    :try_start_25
    const-class v0, Landroid/os/UserHandle;

    const-string v4, "myUserId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_3c

    .line 5
    :catch_31
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "No myUserId method available"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_3c
    :goto_3c
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1
    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_6f

    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 3
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6f

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p0, :cond_34

    :try_start_1f
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_34

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_2f} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception p0

    goto :goto_36

    :catch_32
    move-exception p0

    goto :goto_36

    :cond_34
    :goto_34
    move p0, p3

    goto :goto_45

    :goto_36
    const/4 v0, 0x6

    .line 6
    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "myUserId invocation illegal"

    .line 7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 5
    :goto_45
    const-string v0, "UploadAlarm"

    const-string v1, "com.google.android.gms"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6a

    .line 8
    :try_start_4d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_6e

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_61} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4d .. :try_end_61} :catch_62

    goto :goto_6e

    :catch_62
    move-exception p0

    goto :goto_65

    :catch_64
    move-exception p0

    .line 7
    :goto_65
    const-string p3, "error calling scheduleAsPackage"

    .line 10
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_6a
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    :cond_6e
    :goto_6e
    return p3

    .line 12
    :cond_6f
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method
