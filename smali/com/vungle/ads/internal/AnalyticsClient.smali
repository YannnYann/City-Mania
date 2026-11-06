###### Class com.vungle.ads.internal.AnalyticsClient (com.vungle.ads.internal.AnalyticsClient)
.class public final Lcom/vungle/ads/internal/AnalyticsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

.field public static final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static final b:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static final c:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static final d:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static e:Lcom/vungle/ads/internal/network/VungleApiClient;

.field public static f:Lcom/vungle/ads/internal/executor/j;

.field public static g:Z

.field public static h:I

.field public static i:Z

.field public static final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-direct {v0}, Lcom/vungle/ads/internal/AnalyticsClient;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x2

    .line 35
    sput v0, Lcom/vungle/ads/internal/AnalyticsClient;->h:I

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/vungle/ads/internal/AnalyticsClient;->i:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;
    .registers 6

    .line 69
    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$SDKError;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 70
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "amazon"

    goto :goto_13

    :cond_11
    const-string v2, "android"

    :goto_13
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setOs(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setOsVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setMake(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 73
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setModel(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setReason(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setMessage(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAt(J)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    const-string p1, ""

    if-eqz p2, :cond_45

    .line 77
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    :cond_45
    move-object v0, p1

    :cond_46
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setPlacementReferenceId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_52

    .line 78
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    :cond_52
    move-object v0, p1

    :cond_53
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setCreativeId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_5f

    .line 79
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_60

    :cond_5f
    move-object v0, p1

    :cond_60
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setEventId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_6c

    .line 80
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6d

    :cond_6c
    move-object v0, p1

    :cond_6d
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAdSource(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_79

    .line 81
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    :cond_79
    move-object v0, p1

    :cond_7a
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setVmVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    .line 82
    invoke-static {p2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/util/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setMediationName(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    .line 83
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    invoke-static {}, Lcom/vungle/ads/internal/util/a;->a()Z

    move-result v0

    if-eqz v0, :cond_91

    const-wide/16 v0, 0x0

    goto :goto_93

    :cond_91
    const-wide/16 v0, 0x2

    :goto_93
    invoke-virtual {p0, v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAppState(J)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_a5

    .line 84
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->d()Lcom/vungle/ads/internal/h;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a6

    :cond_a5
    move-object v0, p1

    :cond_a6
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAdState(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_b2

    .line 85
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b3

    :cond_b2
    move-object v0, p1

    :cond_b3
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setExperiments(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_c1

    .line 86
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c0

    goto :goto_c1

    :cond_c0
    move-object p1, v0

    :cond_c1
    :goto_c1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAdapterAdFormat(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p0

    if-eqz p2, :cond_d4

    .line 88
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->f()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setIsAdoEnabled(Z)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    :cond_d4
    if-eqz p2, :cond_e3

    .line 89
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->b()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_e3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setIsAdPodding(Z)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    :cond_e3
    if-eqz p2, :cond_f2

    .line 90
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/t;->a()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_f2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setAdLoadType(J)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 91
    :cond_f2
    const-string p1, "newBuilder()\n           \u2026dType(it) }\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;
    .registers 7

    .line 93
    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setValue(J)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 96
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setMake(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 97
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setModel(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 98
    const-string p2, "Amazon"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "amazon"

    goto :goto_25

    :cond_23
    const-string p1, "android"

    :goto_25
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setOs(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 99
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setOsVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    const-string p1, ""

    if-eqz p3, :cond_3d

    .line 100
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->l()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3e

    :cond_3d
    move-object p2, p1

    :cond_3e
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setPlacementReferenceId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_4a

    .line 101
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->g()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4b

    :cond_4a
    move-object p2, p1

    :cond_4b
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setCreativeId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_57

    .line 102
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->h()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_58

    :cond_57
    move-object p2, p1

    :cond_58
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setEventId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-nez p4, :cond_5f

    move-object p4, p1

    .line 103
    :cond_5f
    invoke-virtual {p0, p4}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setMeta(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 104
    invoke-static {p3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/util/t;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setMediationName(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_73

    .line 105
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->c()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_74

    :cond_73
    move-object p2, p1

    :cond_74
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setAdSource(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_80

    .line 106
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->m()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_81

    :cond_80
    move-object p2, p1

    :cond_81
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setVmVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    .line 107
    sget-object p2, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    invoke-static {}, Lcom/vungle/ads/internal/util/a;->a()Z

    move-result p2

    if-eqz p2, :cond_90

    const-wide/16 v0, 0x0

    goto :goto_92

    :cond_90
    const-wide/16 v0, 0x2

    :goto_92
    invoke-virtual {p0, v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setAppState(J)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_a4

    .line 108
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->d()Lcom/vungle/ads/internal/h;

    move-result-object p2

    if-eqz p2, :cond_a4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a5

    :cond_a4
    move-object p2, p1

    :cond_a5
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setAdState(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_b1

    .line 109
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->i()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b2

    :cond_b1
    move-object p2, p1

    :cond_b2
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setExperiments(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_c0

    .line 110
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object p1, p2

    :cond_c0
    :goto_c0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setAdapterAdFormat(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object p0

    if-eqz p3, :cond_d3

    .line 112
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->f()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setIsAdoEnabled(Z)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    :cond_d3
    if-eqz p3, :cond_e2

    .line 113
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->b()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_e2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setIsAdPodding(Z)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    :cond_e2
    if-eqz p3, :cond_f1

    .line 114
    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/t;->a()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_f1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setAdLoadType(J)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 115
    :cond_f1
    const-string p1, "newBuilder()\n           \u2026dType(it) }\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/vungle/ads/internal/util/t;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 64
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/t;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_15

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    goto :goto_28

    :cond_15
    :goto_15
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/t;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_2b

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2b

    :goto_28
    const-string v1, "csb"

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object v1, v0

    :goto_2c
    if-nez v1, :cond_69

    if-eqz p0, :cond_3d

    .line 65
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/t;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    :goto_3e
    if-nez v1, :cond_69

    if-eqz p0, :cond_4f

    .line 66
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/t;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_50

    :cond_4f
    move-object v1, v0

    :goto_50
    if-nez v1, :cond_69

    if-eqz p0, :cond_61

    .line 67
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/t;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    move-object v0, p0

    :cond_61
    if-nez v0, :cond_68

    .line 68
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    return-object v0

    :cond_69
    return-object v1
.end method

.method public static final a()V
    .registers 1

    .line 63
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-direct {v0}, Lcom/vungle/ads/internal/AnalyticsClient;->report()V

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V
    .registers 12

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v6, v1

    goto :goto_8

    :cond_7
    move-object v6, p2

    :goto_8
    and-int/lit8 p2, p3, 0x4

    if-eqz p2, :cond_10

    .line 116
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->a()Ljava/lang/String;

    move-result-object v1

    :cond_10
    move-object v7, v1

    .line 117
    monitor-enter p0

    .line 118
    :try_start_12
    const-string p2, "singleValueMetric"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->b()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v3

    .line 472
    invoke-virtual {p1}, Lcom/vungle/ads/internal/j2;->c()J

    move-result-wide v4
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_28

    move-object v2, p0

    .line 473
    :try_start_20
    invoke-virtual/range {v2 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    monitor-exit v2

    return-void

    :catchall_25
    move-exception v0

    :goto_26
    move-object p0, v0

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object v2, p0

    goto :goto_26

    :goto_2b
    monitor-exit v2

    throw p0
.end method

.method public static a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V
    .registers 12

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v6, v1

    goto :goto_8

    :cond_7
    move-object v6, p2

    :goto_8
    and-int/lit8 p2, p3, 0x4

    if-eqz p2, :cond_10

    .line 477
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->a()Ljava/lang/String;

    move-result-object v1

    :cond_10
    move-object v7, v1

    .line 478
    monitor-enter p0

    .line 479
    :try_start_12
    const-string p2, "timeIntervalMetric"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->b()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v3

    .line 863
    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->c()J

    move-result-wide v4
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_28

    move-object v2, p0

    .line 864
    :try_start_20
    invoke-virtual/range {v2 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    monitor-exit v2

    return-void

    :catchall_25
    move-exception v0

    :goto_26
    move-object p0, v0

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object v2, p0

    goto :goto_26

    :goto_2b
    monitor-exit v2

    throw p0
.end method

.method public static a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V
    .registers 13

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_e

    move-object v4, p3

    goto :goto_f

    :cond_e
    move-object v4, p4

    :goto_f
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_17

    move-object v5, p3

    :goto_14
    move-object v0, p0

    move-object v1, p1

    goto :goto_19

    :cond_17
    move-object v5, p5

    goto :goto_14

    .line 92
    :goto_19
    invoke-virtual/range {v0 .. v5}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    const-string v0, "$executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V
    .registers 7

    const-string v0, "$reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    monitor-enter v0

    .line 2
    :try_start_d
    sget v1, Lcom/vungle/ads/internal/AnalyticsClient;->h:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_34

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    goto :goto_40

    .line 6
    :cond_13
    :try_start_13
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object p2

    .line 8
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 9
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "AnalyticsClient"

    new-instance v3, Lcom/vungle/ads/internal/y;

    invoke-direct {v3, p0, p1, p2}, Lcom/vungle/ads/internal/y;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;)V

    invoke-static {v2, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_40

    .line 11
    invoke-direct {v0}, Lcom/vungle/ads/internal/AnalyticsClient;->report()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_36
    .catchall {:try_start_13 .. :try_end_33} :catchall_34

    goto :goto_40

    :catchall_34
    move-exception p0

    goto :goto_42

    :catch_36
    move-exception p0

    .line 14
    :try_start_37
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "AnalyticsClient"

    const-string p2, "Cannot logError"

    invoke-static {p1, p2, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 15
    :cond_40
    :goto_40
    monitor-exit v0

    return-void

    .line 27
    :goto_42
    monitor-exit v0

    throw p0
.end method

.method public static final b(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 13

    const-string v0, "$metricType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    monitor-enter v1

    .line 29
    :try_start_8
    sget-boolean v0, Lcom/vungle/ads/internal/AnalyticsClient;->g:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_31

    if-nez v0, :cond_d

    goto :goto_3f

    .line 34
    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object v7

    .line 36
    sget-object p4, Lcom/vungle/ads/internal/AnalyticsClient;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 37
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "AnalyticsClient"

    new-instance v2, Lcom/vungle/ads/internal/z;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/vungle/ads/internal/z;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;)V

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
    invoke-virtual {p4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_3f

    .line 42
    invoke-direct {v1}, Lcom/vungle/ads/internal/AnalyticsClient;->report()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_34
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    goto :goto_3f

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_41

    :catch_34
    move-exception v0

    move-object p0, v0

    .line 45
    :try_start_36
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "AnalyticsClient"

    const-string p2, "Cannot logMetrics"

    invoke-static {p1, p2, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_31

    .line 46
    :cond_3f
    :goto_3f
    monitor-exit v1

    return-void

    .line 62
    :goto_41
    monitor-exit v1

    throw p0
.end method

.method private final declared-synchronized report()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget v0, Lcom/vungle/ads/internal/AnalyticsClient;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 2
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v1, "Sending "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnalyticsClient"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_49

    .line 12
    :cond_3a
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->e:Lcom/vungle/ads/internal/network/VungleApiClient;

    if-eqz v0, :cond_49

    new-instance v2, Lcom/vungle/ads/internal/w;

    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/w;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vungle/ads/internal/w;)V

    goto :goto_49

    :catchall_47
    move-exception v0

    goto :goto_8f

    .line 13
    :cond_49
    :goto_49
    sget-boolean v0, Lcom/vungle/ads/internal/AnalyticsClient;->g:Z

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_8d

    .line 14
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 15
    const-string v1, "Sending "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " metrics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnalyticsClient"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    goto :goto_8d

    .line 24
    :cond_81
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->e:Lcom/vungle/ads/internal/network/VungleApiClient;

    if-eqz v0, :cond_8d

    new-instance v2, Lcom/vungle/ads/internal/x;

    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/x;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vungle/ads/internal/x;)V
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_47

    :cond_8d
    :goto_8d
    monitor-exit p0

    return-void

    :goto_8f
    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_47

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "singleValueMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->b()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v2

    .line 475
    invoke-virtual {p1}, Lcom/vungle/ads/internal/j2;->c()J

    move-result-wide v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 476
    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    :goto_17
    move-object p1, v0

    goto :goto_1c

    :catchall_19
    move-exception v0

    move-object v1, p0

    goto :goto_17

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw p1
.end method

.method public final declared-synchronized a(Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "timeIntervalMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->b()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v2

    .line 866
    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->c()J

    move-result-wide v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 867
    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    :goto_17
    move-object p1, v0

    goto :goto_1c

    :catchall_19
    move-exception v0

    move-object v1, p0

    goto :goto_17

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw p1
.end method

.method public final declared-synchronized a(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/j;IZ)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "vungleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lcom/vungle/ads/internal/s;->a(I)I

    move-result v0

    sput v0, Lcom/vungle/ads/internal/AnalyticsClient;->h:I

    .line 4
    sput-boolean p4, Lcom/vungle/ads/internal/AnalyticsClient;->g:Z

    const/4 p4, 0x3

    .line 7
    invoke-static {p4}, Lcom/vungle/ads/internal/t;->a(I)I

    move-result p4

    const/4 v0, 0x1

    if-ne p3, p4, :cond_25

    .line 8
    sget-boolean p3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0}, Lcom/vungle/ads/internal/util/u;->a(Z)V

    goto :goto_3e

    :catchall_21
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9f

    :cond_25
    const/4 p4, 0x2

    .line 11
    invoke-static {p4}, Lcom/vungle/ads/internal/t;->a(I)I

    move-result p4

    const/4 v1, 0x0

    if-ne p3, p4, :cond_33

    .line 12
    sget-boolean p3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v1}, Lcom/vungle/ads/internal/util/u;->a(Z)V

    goto :goto_3e

    .line 15
    :cond_33
    invoke-static {v0}, Lcom/vungle/ads/internal/t;->a(I)I

    move-result p4

    if-ne p3, p4, :cond_3e

    .line 16
    sget-boolean p3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v1}, Lcom/vungle/ads/internal/util/u;->a(Z)V

    .line 25
    :cond_3e
    :goto_3e
    sput-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->e:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 27
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 28
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "AnalyticsClient"

    const-string p2, "AnalyticsClient already initialized"

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_21

    monitor-exit p0

    return-void

    .line 32
    :cond_53
    :try_start_53
    sput-object p2, Lcom/vungle/ads/internal/AnalyticsClient;->f:Lcom/vungle/ads/internal/executor/j;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_21

    .line 35
    :try_start_55
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6e

    .line 36
    sget-object p3, Lcom/vungle/ads/internal/AnalyticsClient;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_63
    .catchall {:try_start_55 .. :try_end_62} :catchall_21

    goto :goto_6e

    :catch_63
    move-exception v0

    move-object p1, v0

    .line 39
    :try_start_65
    sget-boolean p3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p3, "AnalyticsClient"

    const-string p4, "Failed to add pendingErrors to errors queue."

    invoke-static {p3, p4, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_21

    .line 42
    :cond_6e
    :goto_6e
    :try_start_6e
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_87

    .line 43
    sget-object p3, Lcom/vungle/ads/internal/AnalyticsClient;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7b} :catch_7c
    .catchall {:try_start_6e .. :try_end_7b} :catchall_21

    goto :goto_87

    :catch_7c
    move-exception v0

    move-object p1, v0

    .line 46
    :try_start_7e
    sget-boolean p3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p3, "AnalyticsClient"

    const-string p4, "Failed to add pendingMetrics to metrics queue."

    invoke-static {p3, p4, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_87
    :goto_87
    sget-boolean p1, Lcom/vungle/ads/internal/AnalyticsClient;->i:Z

    if-eqz p1, :cond_9d

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/executor/j;)V

    .line 60
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    .line 61
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_9d
    .catchall {:try_start_7e .. :try_end_9d} :catchall_21

    :cond_9d
    monitor-exit p0

    return-void

    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_21

    throw p1
.end method

.method public final declared-synchronized a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "oneShotTimeIntervalMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->f()Z

    move-result v0

    if-nez v0, :cond_33

    .line 869
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_30

    .line 870
    :try_start_d
    const-string v0, "timeIntervalMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p1}, Lcom/vungle/ads/internal/e1;->b()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v2

    .line 1254
    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->c()J

    move-result-wide v3
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_2b

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 1255
    :try_start_1d
    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    :try_start_20
    monitor-exit p0

    .line 1256
    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->g()V

    goto :goto_34

    :catchall_25
    move-exception v0

    :goto_26
    move-object p1, v0

    goto :goto_36

    :catchall_28
    move-exception v0

    :goto_29
    move-object p1, v0

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object v1, p0

    goto :goto_29

    :goto_2e
    monitor-exit p0

    throw p1
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_25

    :catchall_30
    move-exception v0

    move-object v1, p0

    goto :goto_26

    :cond_33
    move-object v1, p0

    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_25

    throw p1
.end method

.method public final declared-synchronized c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1a

    .line 1
    :try_start_b
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->f:Lcom/vungle/ads/internal/executor/j;

    if-nez v0, :cond_1e

    .line 2
    invoke-static {p1, p2, p3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_1c
    .catchall {:try_start_b .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_51

    :catch_1c
    move-exception v0

    goto :goto_27

    .line 7
    :cond_1e
    :try_start_1e
    new-instance v1, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_1c
    .catchall {:try_start_1e .. :try_end_26} :catchall_1a

    goto :goto_4f

    .line 11
    :goto_27
    :try_start_27
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot logError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsClient"

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_1a

    :goto_4f
    monitor-exit p0

    return-void

    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_1a

    throw p1
.end method

.method public final declared-synchronized c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 12
    :try_start_6
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->f:Lcom/vungle/ads/internal/executor/j;

    if-nez v0, :cond_1e

    .line 14
    invoke-static {p1, p2, p3, p4, p5}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_18
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_5e

    :catch_18
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    goto :goto_2c

    .line 19
    :cond_1e
    :try_start_1e
    new-instance v1, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_18
    .catchall {:try_start_1e .. :try_end_20} :catchall_15

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    :try_start_24
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2b
    .catchall {:try_start_24 .. :try_end_2a} :catchall_15

    goto :goto_5c

    :catch_2b
    move-exception v0

    .line 28
    :goto_2c
    :try_start_2c
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot logMetric "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    const-string p2, "AnalyticsClient"

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_15

    :goto_5c
    monitor-exit p0

    return-void

    :goto_5e
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_15

    throw p1
.end method

###### Class com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda0 (com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/vungle/ads/internal/util/t;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    iput-wide p2, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$2:Lcom/vungle/ads/internal/util/t;

    iput-object p5, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    iget-wide v1, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$2:Lcom/vungle/ads/internal/util/t;

    iget-object v4, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->b(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda1 (com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/vungle/ads/internal/util/t;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iput-object p2, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$2:Lcom/vungle/ads/internal/util/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iget-object v1, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda1;->f$2:Lcom/vungle/ads/internal/util/t;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->b(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    return-void
.end method

###### Class com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda2 (com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/executor/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/executor/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/executor/j;)V

    return-void
.end method

###### Class com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda3 (com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/vungle/ads/internal/AnalyticsClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lcom/vungle/ads/internal/AnalyticsClient;->a()V

    return-void
.end method
