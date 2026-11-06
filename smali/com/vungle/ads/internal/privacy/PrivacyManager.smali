###### Class com.vungle.ads.internal.privacy.PrivacyManager (com.vungle.ads.internal.privacy.PrivacyManager)
.class public final Lcom/vungle/ads/internal/privacy/PrivacyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

.field public static final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/Long;

.field public static h:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

.field public static i:Lcom/vungle/ads/internal/persistence/FilePreferences;

.field public static j:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-direct {v0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 5

    .line 96
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d()Ljava/lang/Boolean;

    move-result-object v0

    .line 98
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    .line 100
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->p()Lcom/vungle/ads/internal/model/o2;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_24

    :cond_1c
    sget-object v4, Lcom/vungle/ads/internal/privacy/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    :goto_24
    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v3, :cond_34

    if-eq v0, v1, :cond_38

    if-ne v0, v2, :cond_2e

    goto :goto_37

    .line 104
    :cond_2e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_34
    return v1

    :cond_35
    if-nez v0, :cond_38

    :cond_37
    :goto_37
    return v2

    :cond_38
    return v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "consent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sput-object p0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d:Ljava/lang/String;

    .line 86
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e:Ljava/lang/String;

    .line 87
    sput-object p2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p2, 0x3e8

    int-to-long v2, p2

    div-long/2addr v0, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sput-object p2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->g:Ljava/lang/Long;

    .line 90
    sget-object p2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f:Ljava/lang/String;

    if-nez p2, :cond_24

    const-string p2, ""

    .line 91
    :cond_24
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v2, :cond_43

    const-string v3, "gdpr_status"

    invoke-virtual {v2, v3, p0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    const-string v2, "gdpr_source"

    invoke-virtual {p0, v2, p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    .line 92
    const-string p1, "gdpr_message_version"

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    .line 93
    const-string p1, "gdpr_timestamp"

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    :cond_43
    return-void
.end method

.method public static a(Z)V
    .registers 3

    .line 94
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v0, :cond_16

    const-string v1, "disable_ad_id"

    invoke-virtual {v0, p0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(ZLjava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    :cond_16
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "unknown"

    :cond_6
    return-object v0
.end method

.method public static c()Lcom/vungle/ads/internal/privacy/COPPA;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    return-object v0

    .line 3
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_ENABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    return-object v0

    .line 5
    :cond_1a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_DISABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    return-object v0

    .line 8
    :cond_29
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    return-object v0
.end method

.method public static d()Ljava/lang/Boolean;
    .registers 4

    .line 1
    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->j:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_15

    const/4 v3, -0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    :catchall_13
    move-exception v2

    goto :goto_1b

    :cond_15
    move-object v2, v1

    :goto_16
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    goto :goto_25

    :goto_1b
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_25
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_58

    :cond_2c
    :try_start_2c
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->j:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_48

    const-string v3, "-1"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v2, "getString(IABTCF_GDPR_APPLIES, \"-1\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_49

    :catchall_46
    move-exception v0

    goto :goto_4e

    :cond_48
    move-object v0, v1

    :goto_49
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_46

    goto :goto_58

    :goto_4e
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    :goto_58
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    move-object v2, v1

    :cond_5f
    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_64

    goto :goto_6e

    .line 5
    :cond_64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_79

    :cond_6e
    :goto_6e
    if-nez v2, :cond_71

    goto :goto_79

    .line 6
    :cond_71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_79

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_79
    :goto_79
    return-object v1
.end method

.method public static e()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/vungle/ads/internal/u;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_28

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    goto :goto_17

    .line 7
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28

    return v1

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d()Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->p()Lcom/vungle/ads/internal/model/o2;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_22

    :cond_1a
    sget-object v2, Lcom/vungle/ads/internal/privacy/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_22
    const/4 v2, 0x1

    if-eq v0, v1, :cond_34

    if-eq v0, v2, :cond_69

    const/4 v1, 0x2

    if-eq v0, v1, :cond_69

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    goto :goto_34

    .line 8
    :cond_2e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 9
    :cond_34
    :goto_34
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->j:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v3, ""

    if-eqz v0, :cond_42

    const-string v4, "IABTCF_TCString"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_42
    move-object v0, v1

    :goto_43
    if-nez v0, :cond_46

    goto :goto_47

    :cond_46
    move-object v3, v0

    .line 10
    :goto_47
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->c()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_4f
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_69

    .line 13
    :cond_5c
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v0, :cond_69

    const-string v1, "previous_tcf_token"

    invoke-virtual {v0, v1, v3}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    :cond_69
    :goto_69
    return v2

    :cond_6a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "PrivacyManager"

    const-string v0, "PrivacyManager already initialized"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto/16 :goto_132

    .line 6
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->j:Landroid/content/SharedPreferences;

    .line 9
    sget-object v1, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object p1

    const-class v1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 10
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 12
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4e

    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 15
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v2, :cond_59

    const-string v3, "disable_ad_id"

    invoke-virtual {v2, v1, v3}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(ZLjava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    goto :goto_59

    .line 16
    :cond_4e
    const-string v2, "disable_ad_id"

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    :cond_59
    :goto_59
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_93

    .line 25
    sget-object v4, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e:Ljava/lang/String;

    if-nez v4, :cond_65

    const-string v4, ""

    .line 26
    :cond_65
    sget-object v5, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f:Ljava/lang/String;

    if-nez v5, :cond_6b

    const-string v5, ""

    .line 27
    :cond_6b
    sget-object v6, Lcom/vungle/ads/internal/privacy/PrivacyManager;->g:Ljava/lang/Long;

    if-eqz v6, :cond_73

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 28
    :cond_73
    sget-object v6, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v6, :cond_d8

    const-string v7, "gdpr_status"

    invoke-virtual {v6, v7, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    const-string v6, "gdpr_source"

    invoke-virtual {v1, v6, v4}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    .line 29
    const-string v4, "gdpr_message_version"

    invoke-virtual {v1, v4, v5}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    .line 30
    const-string v4, "gdpr_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    goto :goto_d8

    .line 31
    :cond_93
    const-string v1, "gdpr_status"

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    sget-object v4, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 34
    invoke-virtual {v4}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_ba

    .line 37
    :cond_aa
    sget-object v4, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 38
    invoke-virtual {v4}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_ba
    :goto_ba
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->d:Ljava/lang/String;

    .line 52
    const-string v1, "gdpr_source"

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e:Ljava/lang/String;

    .line 54
    const-string v1, "gdpr_message_version"

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f:Ljava/lang/String;

    .line 57
    const-string v1, "gdpr_timestamp"

    invoke-virtual {p1, v1, v2, v3}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->g:Ljava/lang/Long;

    .line 61
    :cond_d8
    :goto_d8
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->h:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    if-eqz v1, :cond_ee

    .line 62
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v2, :cond_105

    invoke-virtual {v1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ccpa_status"

    invoke-virtual {v2, v3, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    goto :goto_105

    .line 63
    :cond_ee
    const-string v1, "ccpa_status"

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    goto :goto_103

    .line 67
    :cond_101
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 68
    :goto_103
    sput-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->h:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 76
    :cond_105
    :goto_105
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_121

    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 79
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v1, :cond_12c

    const-string v2, "is_coppa"

    invoke-virtual {v1, p1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(ZLjava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    goto :goto_12c

    .line 80
    :cond_121
    const-string v2, "is_coppa"

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_12c

    .line 81
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_12c
    :goto_12c
    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_130
    .catchall {:try_start_1c .. :try_end_130} :catchall_19

    monitor-exit p0

    return-void

    :goto_132
    :try_start_132
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_19

    throw p1
.end method

.method public final updateCcpaConsent(Lcom/vungle/ads/internal/privacy/PrivacyConsent;)V
    .registers 4

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->h:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->i:Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ccpa_status"

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    :cond_18
    return-void
.end method
